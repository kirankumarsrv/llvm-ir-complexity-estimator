#include "FeatureExtractor.h"

#include "llvm/IR/Dominators.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;
using namespace llvmce;

namespace {

struct IRComplexityPrinterPass
    : public PassInfoMixin<IRComplexityPrinterPass> {

  PreservedAnalyses run(Module &M, ModuleAnalysisManager &) {
    FeatureExtractor ext;

    llvm::outs() << "[\n";
    bool first = true;
    for (const Function &F : M) {
      if (F.isDeclaration())
        continue;

      DominatorTree DT(const_cast<Function &>(F));
      LoopInfo LI(DT);
      auto feat = ext.extractFunction(F, &LI);
      if (!first) llvm::outs() << ",\n";
      llvm::outs() << feat.toJSON();
      first = false;
    }
    llvm::outs() << "\n]\n";

    return PreservedAnalyses::all();
  }

  static bool isRequired() { return true; }
};

} // anonymous namespace

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return {
    LLVM_PLUGIN_API_VERSION, "ir-complexity", LLVM_VERSION_STRING,
    [](PassBuilder &PB) {
      PB.registerPipelineParsingCallback(
          [](StringRef Name, ModulePassManager &MPM,
             ArrayRef<PassBuilder::PipelineElement>) {
            if (Name == "print<ir-complexity>") {
              MPM.addPass(IRComplexityPrinterPass{});
              return true;
            }
            return false;
          });
    }
  };
}
