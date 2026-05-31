#!/usr/bin/env python3
"""app.py - Flask backend for the LLVM IR Complexity Estimator web app."""
import os
import json
import math
import subprocess
import tempfile
from pathlib import Path

import joblib
import numpy as np
from flask import Flask, jsonify, render_template, request

BASE          = Path(__file__).parent
EXTRACTOR_BIN = BASE / "build" / "IRComplexityExtractor"
MODEL_PATH    = BASE / "python" / "complexity_model.pkl"
SKIP_THRESHOLD = 3.0

FEATURE_COLS = [
    "instruction_count", "basic_block_count", "cfg_edges",
    "branch_count", "phi_count", "loop_depth_max", "call_count",
    "load_store_count", "arithmetic_ops", "cast_ops",
    "cyclomatic_complexity",
    "alias_query_density", "type_graph_complexity",
]

app = Flask(__name__)

# Load model once at startup
try:
    _model = joblib.load(MODEL_PATH)
    print(f"[ok] Model loaded: {type(_model).__name__}")
except Exception as e:
    _model = None
    print(f"[warn] Could not load model: {e}")


def predict_score(model, features: dict) -> float:
    row = np.asarray([[features[c] for c in FEATURE_COLS]], dtype=float)
    return float(model.predict(row)[0])


@app.route("/")
def index():
    return render_template("index.html")


@app.route("/health")
def health():
    return jsonify({
        "status": "ok",
        "extractor": EXTRACTOR_BIN.exists(),
        "model": _model is not None,
    })


@app.route("/analyze", methods=["POST"])
def analyze():
    if "file" not in request.files:
        return jsonify({"error": "No file uploaded"}), 400

    f = request.files["file"]
    if not f.filename.endswith(".ll"):
        return jsonify({"error": "Only .ll files are supported"}), 400

    if _model is None:
        return jsonify({"error": "Model not loaded — run train.py first"}), 500
    if not EXTRACTOR_BIN.exists():
        return jsonify({"error": "IRComplexityExtractor not built — run cmake/make first"}), 500

    # Write upload to a temp file and run extractor
    with tempfile.NamedTemporaryFile(suffix=".ll", delete=False) as tmp:
        f.save(tmp.name)
        tmp_path = tmp.name

    try:
        result = subprocess.run(
            [str(EXTRACTOR_BIN), tmp_path],
            capture_output=True, text=True, timeout=30,
        )
    finally:
        os.unlink(tmp_path)

    if result.returncode != 0:
        return jsonify({"error": result.stderr or "Extractor failed"}), 500

    try:
        records = json.loads(result.stdout)
    except json.JSONDecodeError as e:
        return jsonify({"error": f"Bad extractor output: {e}"}), 500

    functions = []
    for rec in records:
        feats = rec["features"]
        score = predict_score(_model, feats)
        decision = "SKIP" if score > SKIP_THRESHOLD else "RUN"
        functions.append({
            "name":     rec["function"],
            "features": feats,
            "score":    round(score, 4),
            "decision": decision,
            "reason":   f"score {score:.3f} {'>' if decision == 'SKIP' else '<='} {SKIP_THRESHOLD}",
        })

    total   = len(functions)
    skipped = sum(1 for fn in functions if fn["decision"] == "SKIP")
    run_ct  = total - skipped

    return jsonify({
        "filename":  f.filename,
        "functions": functions,
        "summary": {
            "total":        total,
            "run":          run_ct,
            "skipped":      skipped,
            "skip_pct":     round(skipped / total * 100, 1) if total else 0,
            "time_saved_ms": skipped * 50,
            "threshold":    SKIP_THRESHOLD,
        },
    })


if __name__ == "__main__":
    print("Starting LLVM IR Complexity Estimator web app...")
    print("Open: http://localhost:5000")
    app.run(host="0.0.0.0", port=5000, debug=False)
