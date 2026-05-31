#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

usage() {
  cat <<'EOF'
Usage:
  ./run.sh extract <file.ll> [more.ll ...]
  ./run.sh train [--synthetic | --timing <csv> --corpus <dir>]
  ./run.sh demo [file.ll]
  ./run.sh benchmark [file.ll ...]
EOF
}

mode="${1:-demo}"
if [[ $# -gt 0 ]]; then
  shift
fi

case "$mode" in
  extract)
    if [[ ! -x "$ROOT_DIR/build/IRComplexityExtractor" ]]; then
      "$ROOT_DIR/build.sh"
    fi
    exec "$ROOT_DIR/build/IRComplexityExtractor" "$@"
    ;;
  train)
    if [[ ${1:-} == "--synthetic" ]]; then
      shift || true
      exec python3 "$ROOT_DIR/python/train.py" "$@"
    elif [[ $# -eq 0 ]]; then
      exec python3 "$ROOT_DIR/python/retrain_from_timing.py" \
        --timing "$ROOT_DIR/python/timing_corpus.csv" \
        --corpus "$ROOT_DIR/corpus_ll"
    elif [[ ${1:-} == "--timing" || ${1:-} == "--corpus" || ${1:-} == "--extractor" || ${1:-} == "--out-model" || ${1:-} == "--out-eval" || ${1:-} == "--aggregate-file" ]]; then
      exec python3 "$ROOT_DIR/python/retrain_from_timing.py" \
        --timing "$ROOT_DIR/python/timing_corpus.csv" \
        --corpus "$ROOT_DIR/corpus_ll" \
        "$@"
    else
      exec python3 "$ROOT_DIR/python/train.py" "$@"
    fi
    ;;
  demo)
    exec python3 "$ROOT_DIR/python/demo_pass_skipping.py" "${1:-$ROOT_DIR/testcases/complex.ll}"
    ;;
  benchmark)
    exec python3 "$ROOT_DIR/python/measure_pass_times.py" --per-function "$@"
    ;;
  -h|--help|help)
    usage
    ;;
  *)
    usage >&2
    exit 1
    ;;
esac
