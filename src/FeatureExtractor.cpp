#include "FeatureExtractor.h"

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/CFG.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Type.h"
#include "llvm/Support/raw_ostream.h"

#include <algorithm>
#include <unordered_set>
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

namespace {

struct TypeSummary {
  unsigned unique_types = 0;
  unsigned aggregate_types = 0;
  unsigned pointer_types = 0;
  unsigned max_nesting_depth = 0;
};

static void accumulateTypeSummary(const llvm::Type *T,
                                  TypeSummary &summary,
                                  std::unordered_set<const llvm::Type *> &seen,
                                  unsigned depth = 0) {
  if (!T || !seen.insert(T).second)
    return;

  ++summary.unique_types;

  if (T->isPointerTy()) {
    ++summary.pointer_types;
    summary.max_nesting_depth = std::max(summary.max_nesting_depth, depth + 1);
    return;
  }

  if (T->isArrayTy() || T->isVectorTy() || T->isStructTy() || T->isFunctionTy())
    ++summary.aggregate_types;

  if (const auto *AT = llvm::dyn_cast<llvm::ArrayType>(T)) {
    accumulateTypeSummary(AT->getElementType(), summary, seen, depth + 1);
  } else if (const auto *VT = llvm::dyn_cast<llvm::VectorType>(T)) {
    accumulateTypeSummary(VT->getElementType(), summary, seen, depth + 1);
  } else if (const auto *ST = llvm::dyn_cast<llvm::StructType>(T)) {
    for (const llvm::Type *Elt : ST->elements())
      accumulateTypeSummary(Elt, summary, seen, depth + 1);
  } else if (const auto *FT = llvm::dyn_cast<llvm::FunctionType>(T)) {
    accumulateTypeSummary(FT->getReturnType(), summary, seen, depth + 1);
    for (const llvm::Type *Param : FT->params())
      accumulateTypeSummary(Param, summary, seen, depth + 1);
  }
}

} // namespace

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
     << "    \"alias_query_density\": "  << alias_query_density  << ",\n"
     << "    \"type_graph_complexity\": " << type_graph_complexity << ",\n"
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
  unsigned alias_pressure = 0;
  TypeSummary type_summary;
  std::unordered_set<const Type *> seen_types;

  accumulateTypeSummary(F.getFunctionType(), type_summary, seen_types);

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

      if (I.mayReadFromMemory() || I.mayWriteToMemory() ||
          isa<GetElementPtrInst>(&I) || isa<AllocaInst>(&I) ||
          isa<PtrToIntInst>(&I) || isa<IntToPtrInst>(&I) ||
          isa<BitCastInst>(&I) || isa<AddrSpaceCastInst>(&I)) {
        ++alias_pressure;
      }

      if (I.getType()->isPointerTy())
        ++alias_pressure;

      accumulateTypeSummary(I.getType(), type_summary, seen_types);

      for (const Use &Op : I.operands()) {
        const Type *OpTy = Op->getType();
        if (OpTy && OpTy->isPointerTy())
          ++alias_pressure;
        accumulateTypeSummary(OpTy, type_summary, seen_types);
      }
    }
  }

  // McCabe cyclomatic complexity: E - N + 2
  feat.cyclomatic_complexity = static_cast<int>(edges) -
                               static_cast<int>(nodes) + 2;

  feat.alias_query_density = feat.instruction_count
      ? static_cast<double>(alias_pressure) /
        static_cast<double>(feat.instruction_count)
      : 0.0;
  feat.type_graph_complexity = type_summary.unique_types +
                               (type_summary.aggregate_types * 2) +
                               type_summary.pointer_types +
                               type_summary.max_nesting_depth;

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
