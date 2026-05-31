//===----------------------------------------------------------------------===//
// IRComplexityExtractor — CLI tool
//
// Usage:  IRComplexityExtractor <file.ll|file.bc> [file2.ll ...]
//
// Outputs a JSON array of { "function": "...", "features": { ... } } objects,
// one per non-declaration function found across all input files.
//===----------------------------------------------------------------------===//

#include "FeatureExtractor.h"

#include "llvm/IR/Dominators.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/InitLLVM.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;
using namespace llvmce;

static cl::list<std::string> InputFiles(cl::Positional,
                                         cl::desc("<input .ll/.bc files>"),
                                         cl::OneOrMore);

int main(int argc, char **argv) {
  InitLLVM X(argc, argv);
  cl::ParseCommandLineOptions(argc, argv,
                              "LLVM IR Complexity Estimator\n");

  FeatureExtractor extractor;
  LLVMContext ctx;
  SMDiagnostic err;

  bool first = true;
  llvm::outs() << "[\n";

  for (const std::string &path : InputFiles) {
    auto mod = parseIRFile(path, err, ctx);
    if (!mod) {
      err.print(argv[0], errs());
      continue;
    }

    for (const Function &F : *mod) {
      if (F.isDeclaration())
        continue;

      DominatorTree DT(const_cast<Function &>(F));
      LoopInfo LI(DT);
      auto feat = extractor.extractFunction(F, &LI);
      if (!first) llvm::outs() << ",\n";
      llvm::outs() << feat.toJSON();
      first = false;
    }
  }

  llvm::outs() << "\n]\n";
  return 0;
}
