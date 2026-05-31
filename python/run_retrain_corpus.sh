#!/usr/bin/env bash
set -euo pipefail

# Wrapper: retrain model from timing CSV and corpus_ll
TIMING=${1:-python/timing_corpus.csv}
CORPUS=${2:-corpus_ll}
EXTRACTOR=${3:-build/IRComplexityExtractor}
OUT_MODEL=${4:-python/complexity_model_corpus.pkl}
OUT_EVAL=${5:-python/eval_retrain.json}

python3 python/retrain_from_timing.py --timing "$TIMING" --corpus "$CORPUS" --extractor "$EXTRACTOR" --out-model "$OUT_MODEL" --out-eval "$OUT_EVAL"
