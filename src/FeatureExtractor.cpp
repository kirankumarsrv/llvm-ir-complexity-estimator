#include "FeatureExtractor.h"

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"

#include <sstream>
#include <string>

using namespace llvm;
using namespace llvmce;

// ---------------------------------------------------------------------------
// JSON serialization helper
// ---------------------------------------------------------------------------
static std::string escapeJSON(const std::string &s) {
  std::string out;
  for (char c : s) {
    if (c == '"')  out += "\\\"";
    else if (c == '\\') out += "\\\\";
    else           out += c;
  }
  return out;
}

std::string FunctionFeatures::toJSON() const {
  std::ostringstream ss;
  ss << "{\n"
     << "  \"function\": \"" << escapeJSON(function_name) << "\",\n"
     << "  \"features\": {\n"
     << "    \"instruction_count\": "   << instruction_count   << ",\n"
     << "    \"basic_block_count\": "   << basic_block_count   << ",\n"
     << "    \"cfg_edges\": "           << cfg_edges           << ",\n"
     << "    \"branch_count\": "        << branch_count        << ",\n"
     << "    \"phi_count\": "           << phi_count           << ",\n"
     << "    \"loop_depth_max\": "      << loop_depth_max      << ",\n"
     << "    \"call_count\": "          << call_count          << ",\n"
     << "    \"load_store_count\": "    << load_store_count    << ",\n"
     << "    \"arithmetic_ops\": "      << arithmetic_ops      << ",\n"
     << "    \"cast_ops\": "            << cast_ops            << ",\n"
     << "    \"cyclomatic_complexity\": " << cyclomatic_complexity << "\n"
     << "  }\n"
     << "}";
  return ss.str();
}

// ---------------------------------------------------------------------------
// Single-function extraction
// ---------------------------------------------------------------------------
FunctionFeatures
FeatureExtractor::extractFunction(const llvm::Function &F,
                                  llvm::LoopInfo *LI) const {
  FunctionFeatures feat;
  feat.function_name = F.getName().str();

  if (F.isDeclaration())
    return feat; // external function — no body to analyse

  unsigned nodes = 0;
  unsigned edges = 0;

  for (const BasicBlock &BB : F) {
    ++nodes;
    ++feat.basic_block_count;

    // Count CFG successor edges
    for (const BasicBlock *succ : successors(&BB))
      (void)succ, ++edges;
    feat.cfg_edges = edges;

    // Loop depth via LoopInfo
    if (LI) {
      unsigned depth = LI->getLoopDepth(&BB);
      if (depth > feat.loop_depth_max)
        feat.loop_depth_max = depth;
    }

    for (const Instruction &I : BB) {
      ++feat.instruction_count;

      unsigned opcode = I.getOpcode();

      // ---- Branches / PHI ------------------------------------------------
      if (opcode == Instruction::Br) {
        const auto *Br = cast<BranchInst>(&I);
        if (Br->isConditional()) ++feat.branch_count;
      } else if (opcode == Instruction::Switch) {
        ++feat.branch_count;
      } else if (opcode == Instruction::IndirectBr) {
        ++feat.branch_count;
      } else if (opcode == Instruction::PHI) {
        ++feat.phi_count;
      }

      // ---- Calls ---------------------------------------------------------
      else if (opcode == Instruction::Call ||
               opcode == Instruction::Invoke ||
               opcode == Instruction::CallBr) {
        ++feat.call_count;
      }

      // ---- Memory --------------------------------------------------------
      else if (opcode == Instruction::Load ||
               opcode == Instruction::Store) {
        ++feat.load_store_count;
      }

      // ---- Arithmetic ----------------------------------------------------
      else if (opcode == Instruction::Add  || opcode == Instruction::FAdd ||
               opcode == Instruction::Sub  || opcode == Instruction::FSub ||
               opcode == Instruction::Mul  || opcode == Instruction::FMul ||
               opcode == Instruction::UDiv || opcode == Instruction::SDiv ||
               opcode == Instruction::FDiv || opcode == Instruction::URem ||
               opcode == Instruction::SRem || opcode == Instruction::FRem) {
        ++feat.arithmetic_ops;
      }

      // ---- Casts ---------------------------------------------------------
      else if (opcode == Instruction::Trunc  || opcode == Instruction::ZExt  ||
               opcode == Instruction::SExt   || opcode == Instruction::FPToUI||
               opcode == Instruction::FPToSI || opcode == Instruction::UIToFP||
               opcode == Instruction::SIToFP || opcode == Instruction::FPTrunc||
               opcode == Instruction::FPExt  || opcode == Instruction::PtrToInt||
               opcode == Instruction::IntToPtr|| opcode == Instruction::BitCast||
               opcode == Instruction::AddrSpaceCast) {
        ++feat.cast_ops;
      }
    }
  }

  // McCabe cyclomatic complexity: E - N + 2
  feat.cyclomatic_complexity = static_cast<int>(edges) -
                               static_cast<int>(nodes) + 2;

  return feat;
}

// ---------------------------------------------------------------------------
// Module-level extraction
// ---------------------------------------------------------------------------
std::vector<FunctionFeatures>
FeatureExtractor::extract(const llvm::Module &M,
                           std::map<std::string, llvm::LoopInfo *> *LI_map) const {
  std::vector<FunctionFeatures> results;
  for (const Function &F : M) {
    if (F.isDeclaration()) continue;
    llvm::LoopInfo *LI = nullptr;
    if (LI_map) {
      auto it = LI_map->find(F.getName().str());
      if (it != LI_map->end()) LI = it->second;
    }
    results.push_back(extractFunction(F, LI));
  }
  return results;
}
