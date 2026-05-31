#!/usr/bin/env bash
set -euo pipefail

OUT_FILE=${1:-demo/demo-recording.mp4}
DURATION=${DURATION:-45}
FPS=${FPS:-30}
APP_URL=${APP_URL:-http://127.0.0.1:5000}

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
APP_LOG="${APP_LOG:-/tmp/llvm-ir-complexity-demo.log}"

if ! command -v ffmpeg >/dev/null 2>&1; then
  echo "ffmpeg is required but was not found in PATH." >&2
  exit 1
fi

if [[ -z "${DISPLAY:-}" ]]; then
  echo "DISPLAY is not set. This script records the screen, so run it in a desktop session." >&2
  exit 1
fi

mkdir -p "$(dirname "$OUT_FILE")"

start_app() {
  if curl -fsS "$APP_URL/health" >/dev/null 2>&1; then
    return 0
  fi

  python3 "$ROOT_DIR/app.py" >"$APP_LOG" 2>&1 &
  APP_PID=$!
  trap 'kill "$APP_PID" >/dev/null 2>&1 || true' EXIT

  for _ in {1..60}; do
    if curl -fsS "$APP_URL/health" >/dev/null 2>&1; then
      return 0
    fi
    sleep 1
  done

  echo "Web app did not become ready. Check $APP_LOG" >&2
  exit 1
}

get_screen_size() {
  if command -v xdpyinfo >/dev/null 2>&1; then
    xdpyinfo | awk '/dimensions:/ {print $2; exit}'
    return 0
  fi
  echo ""
}

start_app

SCREEN_SIZE="$(get_screen_size)"
if [[ -z "$SCREEN_SIZE" ]]; then
  echo "Could not determine screen size. Install xdpyinfo or set SCREEN_SIZE manually." >&2
  exit 1
fi

cat <<EOF
Recording demo to: $OUT_FILE
App URL: $APP_URL
Duration: $DURATION seconds
Screen size: $SCREEN_SIZE

Suggested demo flow while recording:
1. Open $APP_URL in your browser.
2. Upload testcases/complex.ll and show the RUN/SKIP decisions.
3. Upload testcases/alias_heavy.ll to show a failure/caution case.
4. Stop the recording when the timer ends.
EOF

ffmpeg -y \
  -f x11grab \
  -video_size "$SCREEN_SIZE" \
  -framerate "$FPS" \
  -i "$DISPLAY+0,0" \
  -t "$DURATION" \
  -c:v libx264 \
  -pix_fmt yuv420p \
  "$OUT_FILE"

echo "Done: $OUT_FILE"
