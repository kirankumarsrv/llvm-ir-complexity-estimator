#pragma once

#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Analysis/LoopInfo.h"

#include <map>
#include <string>
#include <vector>

namespace llvmce {

/// Holds all extracted complexity features for one LLVM IR function.
struct FunctionFeatures {
  std::string function_name;

  // ---- Structural ---------------------------------------------------------
  unsigned instruction_count = 0;  ///< Total instructions in function
  unsigned basic_block_count = 0;  ///< Number of basic blocks
  unsigned cfg_edges         = 0;  ///< Number of CFG successor edges

  // ---- Control-Flow -------------------------------------------------------
  unsigned branch_count   = 0;  ///< Conditional branches
  unsigned phi_count      = 0;  ///< PHI nodes (SSA join points)
  unsigned loop_depth_max = 0;  ///< Maximum loop nesting depth

  // ---- Instruction Mix ----------------------------------------------------
  unsigned call_count      = 0;  ///< Call / Invoke instructions
  unsigned load_store_count = 0; ///< Load + Store instructions
  unsigned arithmetic_ops  = 0;  ///< Add/Sub/Mul/Div variants
  unsigned cast_ops        = 0;  ///< Type-cast / conversion instructions

  // ---- Derived Complexity -------------------------------------------------
  /// McCabe cyclomatic complexity = CFG edges - CFG nodes + 2
  int cyclomatic_complexity = 0;

  /// Serialize to a JSON object string (without surrounding array brackets).
  std::string toJSON() const;
};

/// Extracts complexity features from every function in an LLVM Module.
class FeatureExtractor {
public:
  explicit FeatureExtractor() = default;

  /// Run extraction on the given Module.
  std::vector<FunctionFeatures>
  extract(const llvm::Module &M,
          std::map<std::string, llvm::LoopInfo *> *LI_map = nullptr) const;

  /// Run extraction on a single Function.
  FunctionFeatures
  extractFunction(const llvm::Function &F,
                  llvm::LoopInfo *LI = nullptr) const;
};

} // namespace llvmce
