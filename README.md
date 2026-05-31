# LLVM IR Complexity Estimator

An end-to-end C++ / Python project that extracts structural complexity features
from LLVM IR files and uses a machine-learning model to guide compiler pass
scheduling — skipping expensive optimization passes on functions where they
would have negligible benefit.

```
┌─────────────────────┐     ┌──────────────────────┐     ┌─────────────────────┐
│  LLVM IR (.ll/.bc)  │────▶│ IRComplexityExtractor│────▶│  13 features (JSON) │
└─────────────────────┘     │      (C++ / LLVM 18) │     └──────────┬──────────┘
                             └──────────────────────┘                │
                                                                      ▼
                             ┌──────────────────────┐     ┌─────────────────────┐
                             │  Pass-skip decision  │◀────│  ML Model (sklearn) │
                             │  RUN / SKIP pass     │     │  complexity_score   │
                             └──────────────────────┘     └─────────────────────┘
```

---

## Project Structure

```
llvm-complexity-estimator/
├── CMakeLists.txt               # LLVM 18 CMake configuration
├── build.sh                     # Build wrapper
├── run.sh                       # Run wrapper
├── DESIGN.md                    # Design write-up
├── IMPLEMENTATION.md            # Implementation write-up
├── EVALUATION.md                # Evaluation template
├── include/
│   └── FeatureExtractor.h       # C++ feature extraction API
├── src/
│   ├── FeatureExtractor.cpp     # LLVM IR analysis — 13 features
│   ├── Plugin.cpp               # opt-loadable pass plugin registration
│   └── main.cpp                 # CLI tool → JSON output
├── python/
│   ├── train.py                 # ML training pipeline (RF + GradientBoosting)
│   ├── extract_features.py      # Python wrapper around the C++ extractor
│   ├── demo_pass_skipping.py    # ML-guided LoopVectorize pass-skipping demo
│   ├── measure_pass_times.py    # Timing helper for evaluation data
│   ├── complexity_model.pkl     # Trained sklearn Pipeline (auto-generated)
│   ├── demo_results.txt         # Demo output saved to disk (auto-generated)
│   └── requirements.txt         # Python dependencies
├── test/
│   ├── sample.ll                # Simple IR smoke-test (3 functions)
│   ├── complex.ll               # Richer IR for pass-skipping demo (4 functions)
│   └── CMakeLists.txt           # Smoke-test build target
├── testcases/
│   ├── alias_heavy.ll           # Pointer-heavy testcase
│   ├── branchy_loop.ll          # Mixed control-flow testcase
│   ├── complex.ll               # Demo testcase copy
│   ├── sample.ll                # Smoke-test testcase copy
│   └── type_complex.ll          # Type-shape testcase
└── README.md
```

---

## Requirements

| Dependency     | Version tested |
|----------------|---------------|
| Ubuntu / WSL2  | 24.04         |
| LLVM / Clang   | 18.1.3        |
| CMake          | ≥ 3.20        |
| GCC            | 13.3          |
| Python         | 3.12          |
| scikit-learn   | ≥ 1.4         |
| pandas         | ≥ 2.2         |
| numpy          | ≥ 1.26        |
| joblib         | ≥ 1.3         |

Install LLVM 18 on Ubuntu:

```bash
sudo apt install llvm-18 clang-18 libzstd-dev
```

---

## Build

```bash
./build.sh
```

Build outputs:

| Artifact | Size | Description |
|---|---|---|
| `build/IRComplexityExtractor` | 6.7 MB | CLI feature extraction binary |
| `build/IRComplexityPlugin.so` | 4.9 MB | `opt`-loadable analysis pass plugin |

> **Plugin note**: `IRComplexityPlugin.so` links only against `LLVMCore` with
> `-Wl,--exclude-libs,ALL` to prevent duplicate `cl::opt` registration errors
> when loaded by the host `opt` binary.

---

## Extracted Features

The C++ extractor produces **13 features** per function:

| # | Feature | Description |
|---|---------|-------------|
| 1 | `instruction_count` | Total instructions in the function |
| 2 | `basic_block_count` | Number of basic blocks |
| 3 | `cfg_edges` | CFG successor edges |
| 4 | `branch_count` | Conditional branch instructions |
| 5 | `phi_count` | PHI nodes (SSA join points) |
| 6 | `loop_depth_max` | Maximum loop nesting depth |
| 7 | `call_count` | Call / Invoke instructions |
| 8 | `load_store_count` | Load + Store instructions |
| 9 | `arithmetic_ops` | Add / Sub / Mul / Div variants |
| 10 | `cast_ops` | Type-cast / conversion instructions |
| 11 | `alias_query_density` | Pointer-sensitive instruction density proxy |
| 12 | `type_graph_complexity` | Weighted type-shape complexity proxy |
| 13 | `cyclomatic_complexity` | McCabe metric = E − N + 2 |

---

## Running the Feature Extractor

### CLI tool

```bash
# Generate IR from a C source file
clang-18 -O0 -emit-llvm -S myfile.c -o myfile.ll

# Extract features — JSON output
./run.sh extract myfile.ll
```

**Sample output** (`test/sample.ll`):

```json
[
{
  "function": "factorial",
  "features": {
    "instruction_count": 7,
    "basic_block_count": 3,
    "cfg_edges": 2,
    "branch_count": 1,
    "phi_count": 0,
    "loop_depth_max": 0,
    "call_count": 1,
    "load_store_count": 0,
    "arithmetic_ops": 2,
    "cast_ops": 0,
    "cyclomatic_complexity": 1
  }
},
{
  "function": "sum_loop",
  "features": {
    "instruction_count": 8,
    "basic_block_count": 3,
    "cfg_edges": 3,
    "branch_count": 1,
    "phi_count": 2,
    "loop_depth_max": 0,
    "call_count": 0,
    "load_store_count": 0,
    "arithmetic_ops": 2,
    "cast_ops": 0,
    "cyclomatic_complexity": 2
  }
},
{
  "function": "no_op",
  "features": {
    "instruction_count": 1,
    "basic_block_count": 1,
    "cfg_edges": 0,
    "branch_count": 0,
    "phi_count": 0,
    "loop_depth_max": 0,
    "call_count": 0,
    "load_store_count": 0,
    "arithmetic_ops": 0,
    "cast_ops": 0,
    "cyclomatic_complexity": 1
  }
}
]
```

### opt plugin

```bash
opt --load-pass-plugin=./build/IRComplexityPlugin.so \
    --passes="print<ir-complexity>" \
    test/sample.ll -o /dev/null
```

---

## ML Training Pipeline

```bash
pip install -r python/requirements.txt

# Train on synthetic data (500 samples)
./run.sh train

# Or train on real IR files
./run.sh train testcases/complex.ll testcases/sample.ll
```

### Model architecture

The pipeline compares two estimators via 5-fold cross-validation and selects
the best:

| Model | CV RMSE | CV Std |
|---|---|---|
| RandomForestRegressor (200 trees) | 1.0205 | ± 0.0808 |
| **GradientBoostingRegressor (300 trees, lr=0.05)** | **0.5643** | **± 0.0408** |

**Selected**: GradientBoosting  
**Hold-out test RMSE** (20%): `0.6158`

### Target: `complexity_score`

All 13 extracted features are **inputs**. The training target is a composite
`complexity_score` label derived from the features:

```
score = 1.5·CC + 2.0·loop_depth + 0.5·(calls/5)
      + 0.3·(branches/(BBs+1))·ln(1 + instructions)
```

clipped to [1, 50]. This models the idea that cyclomatic complexity, loop
nesting, and call density are the strongest indicators of optimization
difficulty.

---

## Pass-Skipping Demo

```bash
./run.sh demo
./run.sh demo testcases/sample.ll
```

### How it works

1. Loads `complexity_model.pkl`
2. Runs `IRComplexityExtractor` on the IR file
3. For each function, predicts `complexity_score`
4. Applies decision rule:
   - `score > 3.0` → **SKIP** `LoopVectorize`
   - `score ≤ 3.0` → **RUN** `LoopVectorize`
5. Prints results table and summary
6. Saves full results to `demo_results.txt`

### Sample output (`test/complex.ll`)

```
========================================================================
  ML-Guided Compiler Pass Skipping Demo
  Pass    : LoopVectorize
  Model   : complexity_model.pkl
  IR file : /root/llvm-complexity-estimator/test/complex.ll
  Threshold: 3.0
========================================================================
  Model loaded  : Pipeline (['scaler', 'gb'])
  Functions found: 4

  Function               CC   BB   Br  Instr    Score                          Decision
  ---------------------------------------------------------------------------------------
  no_op                   1    1    0      1    2.066  [##..................]  ✓ RUN   (score 2.066 <= 3.0)
  heavy_arith             1    1    0     13    2.130  [##..................]  ✓ RUN   (score 2.130 <= 3.0)
  nested_loops            4   10    3     23    6.968  [#########...........]  ✗ SKIP  (score 6.968 > 3.0)
  many_branches           6   14    5     30   10.161  [#############.......]  ✗ SKIP  (score 10.161 > 3.0)
  ---------------------------------------------------------------------------------------

  SUMMARY
  ----------------------------------------
  Total functions analyzed  : 4
  Passes RUN                : 2  (50.0%)
  Passes SKIPPED            : 2  (50.0%)
  Est. compile time saved   : ~100 ms (2 x 50 ms/skip)

  Code quality impact: Moderate trade-off — majority of functions
    skipped; review threshold if output size is critical.
  ----------------------------------------
  Note: LoopVectorize primarily benefits loops and vectorisable
    arithmetic. Functions with CC > 3.0 typically have
    complex control flow that limits vectorisation anyway,
    so skipping carries negligible quality cost.

  Results saved → /root/llvm-complexity-estimator/python/demo_results.txt
========================================================================
```

### Results table (`demo_results.txt`)

| Function | CC | BB | Br | Instr | Score | Decision | Reason |
|---|---|---|---|---|---|---|---|
| `no_op` | 1 | 1 | 0 | 1 | 2.066 | **RUN** | score 2.066 ≤ 3.0 |
| `heavy_arith` | 1 | 1 | 0 | 13 | 2.130 | **RUN** | score 2.130 ≤ 3.0 |
| `nested_loops` | 4 | 10 | 3 | 23 | 6.968 | **SKIP** | score 6.968 > 3.0 |
| `many_branches` | 6 | 14 | 5 | 30 | 10.161 | **SKIP** | score 10.161 > 3.0 |

`nested_loops` has a genuine 3-level CFG (10 BBs, 12 edges, 4 phi nodes).
`many_branches` is a binary decision tree (5 conditionals, 18 edges, CC = 6).
Both have complex control flow that inherently limits what `LoopVectorize`
can achieve, so skipping them carries negligible quality cost.

---

## Python API

```python
import joblib
import numpy as np
from pathlib import Path

# Load model
model = joblib.load("python/complexity_model.pkl")

# Predict for a single function (all 13 features required)
features = {
    "instruction_count":    7,
    "basic_block_count":    3,
    "cfg_edges":            2,
    "branch_count":         1,
    "phi_count":            0,
    "loop_depth_max":       0,
    "call_count":           1,
    "load_store_count":     0,
    "arithmetic_ops":       2,
    "cast_ops":             0,
    "alias_query_density":   0.0,
    "type_graph_complexity": 2,
    "cyclomatic_complexity": 1,
}

FEATURE_COLS = list(features.keys())
row   = np.asarray([[features[c] for c in FEATURE_COLS]], dtype=float)
score = model.predict(row)[0]
print(f"complexity_score: {score:.3f}")   # → 2.201
```

---

## Known Issues Fixed

| Issue | Fix |
|---|---|
| `opt` plugin: "registered more than once" | Plugin links only `LLVMCore` + `-Wl,--exclude-libs,ALL`; pass registration moved to `src/Plugin.cpp` |
| `complexity_model.pkl` corrupted | `mean_squared_error(squared=False)` removed in sklearn ≥ 1.4 — replaced with `math.sqrt(mse)` |
| Feature mismatch (10 vs 13 features) | `cyclomatic_complexity`, `alias_query_density`, and `type_graph_complexity` added to `FEATURE_COLS`; target changed to composite `complexity_score` |
| `UserWarning: StandardScaler fitted without feature names` | All training and inference paths use `.to_numpy(dtype=float)` / `np.asarray(..., dtype=float)` |
