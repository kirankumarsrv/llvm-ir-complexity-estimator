#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

usage() {
  cat <<'EOF'
Usage:
  ./run.sh extract <file.ll> [more.ll ...]
  ./run.sh train [ir.ll ...]
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
    exec python3 "$ROOT_DIR/python/train.py" "$@"
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
