# Evaluation

## What To Measure

The assignment calls for two kinds of evidence:

1. Prediction quality on unseen functions.
2. Compile-time savings from skipping expensive passes on low-value functions.

## Included Test Cases

The repository includes a small testcase set covering different IR shapes:

- `test/sample.ll`
- `test/complex.ll`
- `testcases/alias_heavy.ll`
- `testcases/type_complex.ll`
- `testcases/branchy_loop.ll`

## Suggested Workflow

1. Run `./build.sh`.
2. Collect timing rows with `python/measure_pass_times.py` on a training
   corpus.
3. Train the model with `./run.sh train` or `python3 python/train.py`.
4. Evaluate the model on held-out IR files.
5. Run `./run.sh demo <file.ll>` to compare RUN vs SKIP behavior.

## Reporting Template

When preparing the final submission, report:

- RMSE or MAE for the prediction model
- baseline comparison against a simple heuristic
- compile-time saved versus total runtime
- code-quality impact summary for skipped passes
- at least one failure case where skipping is not recommended

## Latest Expanded-Corpus Results

### Dataset Expansion Summary

- Initial measured corpus: 17 IR files (zlib subset)
- First expansion: 61 IR files
- Latest expansion: 80 IR files

Timing labels are collected with:

- `opt -disable-output -passes=default<O2>`
- `ms_per_function = elapsed_ms / function_count`

### Model Comparison Across Corpus Sizes

| Run | Timed IR files | Function-level samples | File-level samples | Function model (test RMSE) | Function model (Pearson r) | File-level model (test RMSE) | File-level model (Pearson r) |
|---|---:|---:|---:|---:|---:|---:|---:|
| Baseline corpus | 17 | 154 | 17 | 2.8253 | 0.8734 | 5.1602 | 0.9699 |
| Expanded corpus v1 | 61 | 966 | 59 | 4.3128 | 0.9465 | 6.4953 | 0.9692 |
| Expanded corpus v2 (latest) | 80 | 1159 | 78 | 5.4245 | 0.9427 | 7.8593 | 0.9666 |

### Latest Selected Models (80-file run)

- Function-level training: `RandomForest`
- File-aggregated training: `RandomForest`

Artifacts generated from latest run:

- `python/timing_corpus.csv` (80 rows)
- `python/eval_retrain.json`
- `python/eval_retrain_file.json`
- `python/complexity_model_corpus.pkl`
- `python/complexity_model_corpus_file.pkl`

### Notes on Interpretation

- Correlation remains strong as corpus size grows (`r` around 0.94-0.97),
   indicating ranking consistency between predictions and measured cost.
- Absolute error (RMSE) increases with larger and more diverse corpora,
   which is expected because target variance rises with added projects.
- For pass-skipping policy, correlation is often more important than absolute
   calibration since the decision boundary is threshold/ranking-based.
