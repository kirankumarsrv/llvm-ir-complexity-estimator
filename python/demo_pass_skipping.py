#!/usr/bin/env python3
"""demo_pass_skipping.py

Demonstrates ML-guided compiler pass skipping:
  1. Load the trained complexity model.
  2. Extract features from an IR file via IRComplexityExtractor.
  3. Predict a complexity_score for every function.
  4. Decide: score > SKIP_THRESHOLD → SKIP LoopVectorize
             score <= SKIP_THRESHOLD → RUN  LoopVectorize
  5. Print a formatted results table and summary.
  6. Save results to demo_results.txt.
"""
from __future__ import annotations

import json
import subprocess
import sys
from pathlib import Path

import joblib
import numpy as np

# ── Paths ────────────────────────────────────────────────────────────────
SCRIPT_DIR    = Path(__file__).parent
PROJECT_ROOT  = SCRIPT_DIR.parent
EXTRACTOR_BIN = PROJECT_ROOT / "build" / "IRComplexityExtractor"
MODEL_PATH    = SCRIPT_DIR / "complexity_model.pkl"
RESULTS_PATH  = SCRIPT_DIR / "demo_results.txt"

# ── Thresholds & constants ────────────────────────────────────────────────
SKIP_THRESHOLD       = 3.0    # complexity_score above which we skip the pass
PASS_NAME            = "LoopVectorize"
TIME_SAVED_PER_SKIP  = 50     # milliseconds (approximate cost of LoopVectorize)

FEATURE_COLS = [
    "instruction_count",
    "basic_block_count",
    "cfg_edges",
    "branch_count",
    "phi_count",
    "loop_depth_max",
    "call_count",
    "load_store_count",
    "arithmetic_ops",
    "cast_ops",
    "cyclomatic_complexity",
    "alias_query_density",
    "type_graph_complexity",
]


# ── Helpers ──────────────────────────────────────────────────────────────
def load_model(path: Path):
    """Load the trained sklearn pipeline from disk."""
    if not path.exists():
        sys.exit(f"[ERROR] Model not found: {path}\n"
                 "  Run: cd python && python3 train.py")
    model = joblib.load(path)
    return model


def extract_features(ir_file: Path) -> list[dict]:
    """Run IRComplexityExtractor and return a list of feature dicts."""
    if not EXTRACTOR_BIN.exists():
        sys.exit(f"[ERROR] Extractor not found: {EXTRACTOR_BIN}\n"
                 "  Run: cd build && make -j$(nproc)")
    result = subprocess.run(
        [str(EXTRACTOR_BIN), str(ir_file)],
        capture_output=True, text=True, check=True,
    )
    return json.loads(result.stdout)


def predict_score(model, features: dict) -> float:
    """Predict complexity_score for one function (pure numpy, no warnings)."""
    row = np.asarray([[features[c] for c in FEATURE_COLS]], dtype=float)
    return float(model.predict(row)[0])


def decide(score: float) -> tuple[str, str]:
    """Return (decision, reason) based on score vs threshold."""
    if score > SKIP_THRESHOLD:
        return ("SKIP", f"score {score:.3f} > {SKIP_THRESHOLD}")
    return ("RUN ", f"score {score:.3f} <= {SKIP_THRESHOLD}")


def bar(score: float, width: int = 20) -> str:
    """ASCII progress bar scaled to max expected score of 15."""
    filled = min(int(score / 15.0 * width), width)
    return "[" + "#" * filled + "." * (width - filled) + "]"


# ── Main ─────────────────────────────────────────────────────────────────
def main():
    # Allow overriding the IR file from the command line
    ir_file = Path(sys.argv[1]) if len(sys.argv) > 1 \
              else PROJECT_ROOT / "test" / "complex.ll"

    print()
    print("=" * 72)
    print("  ML-Guided Compiler Pass Skipping Demo")
    print(f"  Pass    : {PASS_NAME}")
    print(f"  Model   : {MODEL_PATH.name}")
    print(f"  IR file : {ir_file}")
    print(f"  Threshold: {SKIP_THRESHOLD}")
    print("=" * 72)

    # ── Load model ───────────────────────────────────────────────────────
    model = load_model(MODEL_PATH)
    print(f"  Model loaded  : {type(model).__name__} "
          f"({list(model.named_steps.keys())})")

    # ── Extract features ─────────────────────────────────────────────────
    records = extract_features(ir_file)
    print(f"  Functions found: {len(records)}")
    print()

    # ── Column widths ────────────────────────────────────────────────────
    W_FN   = 20
    W_CC   =  4
    W_BB   =  4
    W_BR   =  4
    W_INSTR=  6
    W_SCORE=  8
    W_BAR  = 22
    W_DEC  = 6

    header = (
        f"  {'Function':<{W_FN}} {'CC':>{W_CC}} {'BB':>{W_BB}} "
        f"{'Br':>{W_BR}} {'Instr':>{W_INSTR}} "
        f"{'Score':>{W_SCORE}}  {'':^{W_BAR}}  {'Decision':<10}"
    )
    sep    = "  " + "-" * (len(header) - 2)

    print(header)
    print(sep)

    results = []
    for rec in records:
        fn   = rec["function"]
        feat = rec["features"]
        score          = predict_score(model, feat)
        decision, why  = decide(score)
        cc    = feat["cyclomatic_complexity"]
        bb    = feat["basic_block_count"]
        br    = feat["branch_count"]
        instr = feat["instruction_count"]
        b     = bar(score)

        status_icon = "✗ SKIP" if decision.strip() == "SKIP" else "✓ RUN "
        row = (f"  {fn:<{W_FN}} {cc:>{W_CC}} {bb:>{W_BB}} "
               f"{br:>{W_BR}} {instr:>{W_INSTR}} "
               f"{score:>{W_SCORE}.3f}  {b:<{W_BAR}}  {status_icon}  ({why})")
        print(row)
        results.append({
            "function": fn, "cc": cc, "bb": bb, "branch": br,
            "instr": instr, "score": score,
            "decision": decision.strip(), "reason": why,
        })

    print(sep)

    # ── Summary ──────────────────────────────────────────────────────────
    total   = len(results)
    skipped = sum(1 for r in results if r["decision"] == "SKIP")
    run_ct  = total - skipped
    pct     = (skipped / total * 100) if total else 0.0
    saved_ms = skipped * TIME_SAVED_PER_SKIP

    print()
    print("  SUMMARY")
    print("  " + "-" * 40)
    print(f"  Total functions analyzed  : {total}")
    print(f"  Passes RUN                : {run_ct}  "
          f"({100 - pct:.1f}%)")
    print(f"  Passes SKIPPED            : {skipped}  "
          f"({pct:.1f}%)")
    print(f"  Est. compile time saved   : ~{saved_ms} ms "
          f"({skipped} x {TIME_SAVED_PER_SKIP} ms/skip)")
    print()
    if skipped == 0:
        print("  Code quality impact: No passes skipped — "
              "all functions optimized normally.")
    elif pct < 50:
        print("  Code quality impact: Minimal — only simple/flat functions "
              "skipped;\n"
              "    complex functions still receive full optimization.")
    else:
        print("  Code quality impact: Moderate trade-off — "
              "majority of functions\n"
              "    skipped; review threshold if output size is critical.")
    print("  " + "-" * 40)
    print(f"  Note: {PASS_NAME} primarily benefits loops and vectorisable\n"
          f"    arithmetic. Functions with CC > {SKIP_THRESHOLD} typically have\n"
          f"    complex control flow that limits vectorisation anyway,\n"
          f"    so skipping carries negligible quality cost.")
    print()

    # ── Save to file ─────────────────────────────────────────────────────
    lines = []
    lines.append("ML-Guided Compiler Pass Skipping Demo")
    lines.append(f"Pass     : {PASS_NAME}")
    lines.append(f"Model    : {MODEL_PATH}")
    lines.append(f"IR file  : {ir_file}")
    lines.append(f"Threshold: {SKIP_THRESHOLD}")
    lines.append("")
    lines.append(
        f"  {'Function':<20} {'CC':>4} {'BB':>4} {'Br':>4} "
        f"{'Instr':>6} {'Score':>8}  {'Decision':<10}  Reason"
    )
    lines.append("  " + "-" * 78)
    for r in results:
        lines.append(
            f"  {r['function']:<20} {r['cc']:>4} {r['bb']:>4} "
            f"{r['branch']:>4} {r['instr']:>6} "
            f"{r['score']:>8.3f}  {r['decision']:<10}  {r['reason']}"
        )
    lines.append("")
    lines.append("SUMMARY")
    lines.append("-" * 40)
    lines.append(f"Total functions analyzed  : {total}")
    lines.append(f"Passes RUN                : {run_ct} ({100 - pct:.1f}%)")
    lines.append(f"Passes SKIPPED            : {skipped} ({pct:.1f}%)")
    lines.append(f"Est. compile time saved   : ~{saved_ms} ms")

    RESULTS_PATH.write_text("\n".join(lines) + "\n")
    print(f"  Results saved → {RESULTS_PATH}")
    print("=" * 72)
    print()


if __name__ == "__main__":
    main()
