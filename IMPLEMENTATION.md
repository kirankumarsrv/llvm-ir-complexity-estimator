# Implementation

## LLVM Side

The core extractor lives in `src/FeatureExtractor.cpp` and is exposed through
`include/FeatureExtractor.h`. It walks each non-declaration function and emits
JSON records for every function it sees.

The plugin entrypoint in `src/Plugin.cpp` registers a loadable pass named
`print<ir-complexity>`, which lets the extractor run through `opt`.

### Extracted Features

- instruction count
- basic block count
- CFG edges
- branch count
- PHI count
- loop nest depth
- call count
- load/store count
- arithmetic op count
- cast op count
- alias-query density
- type-graph complexity
- cyclomatic complexity

## Python Side

`python/train.py` builds a regression model from the extracted features and
selects the best estimator by cross-validation. `python/demo_pass_skipping.py`
uses that model to decide whether to run or skip a pass for each function.

`python/measure_pass_times.py` provides a lightweight timing harness for
collecting compile-time measurements on a chosen `opt` pipeline.

## Build And Run

- `./build.sh` configures and builds the LLVM targets.
- `./run.sh extract <file.ll>` runs the feature extractor.
- `./run.sh train` trains the model.
- `./run.sh demo [file.ll]` runs the pass-skipping demo.
- `./run.sh benchmark [file.ll ...]` collects per-function/pass timing data using
	the function-extraction harness.
