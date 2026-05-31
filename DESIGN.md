# Design

## Goal

Predict which LLVM optimization work is likely to be expensive before the
full pipeline runs, so a caller can budget compile time or skip work on low-
value functions.

## Approach

The project uses a two-stage pipeline:

1. A C++ LLVM analysis pass extracts per-function IR features.
2. A Python training script fits a regression model over those features and
   emits a prediction for a composite compile-time difficulty score.

The extractor focuses on structural signals that correlate with expensive
optimization work:

- function size and CFG density
- branch and PHI density
- loop nesting depth
- call and memory traffic
- alias-query density as a pointer-heavy proxy
- type-graph complexity as a proxy for complex IR shapes

## Alternatives Considered

- Directly timing every optimization pass per function inside LLVM: more exact,
  but substantially more invasive and harder to keep stable across LLVM
  versions.
- Hand-tuning pass skipping rules only from branch counts or loop depth: easy
  to explain, but too coarse to generalize across different code shapes.
- Using a pure classification model: possible, but regression keeps the
  pipeline more flexible because thresholds can be tuned later.

## Tradeoffs

The current feature set uses proxy metrics for aliasing and type complexity.
That keeps the extractor practical in a stand-alone pass, but it means the
numbers should be treated as predictive signals rather than ground-truth
compiler internals.
