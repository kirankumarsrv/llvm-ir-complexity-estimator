#!/usr/bin/env python3
"""LLVM IR Complexity Estimator -- Training Pipeline.

Uses all 11 features produced by IRComplexityExtractor (including
cyclomatic_complexity as an input feature) to predict a composite
complexity_score target.
"""
import json
import math
import subprocess
import sys
import warnings
from pathlib import Path

import joblib
import numpy as np
import pandas as pd
from sklearn.ensemble import RandomForestRegressor, GradientBoostingRegressor
from sklearn.model_selection import cross_val_score, train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import mean_squared_error
from sklearn.pipeline import Pipeline

warnings.filterwarnings("ignore")

EXTRACTOR_BIN = Path(__file__).parent.parent / "build" / "IRComplexityExtractor"
MODEL_PATH    = Path(__file__).parent / "complexity_model.pkl"

# All 11 features produced by the C++ extractor -- in the same order
# as the JSON output.  cyclomatic_complexity is the 11th INPUT feature;
# it is NOT the target.  The target is the derived complexity_score below.
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
    "cyclomatic_complexity",   # 11th feature -- McCabe E-N+2
]
TARGET_COL = "complexity_score"   # composite label (see make_synthetic_data)


def load_from_ir(ir_files):
    """Run IRComplexityExtractor and return a DataFrame with all 11 features.

    The caller is responsible for providing a TARGET_COL column if training;
    for inference-only use predict() directly.
    """
    cmd = [str(EXTRACTOR_BIN)] + ir_files
    result = subprocess.run(cmd, capture_output=True, text=True, check=True)
    records = json.loads(result.stdout)
    rows = []
    for rec in records:
        row = {"function": rec["function"]}
        row.update(rec["features"])   # adds all 11 features incl. cyclomatic_complexity
        rows.append(row)
    df = pd.DataFrame(rows)
    # Validate that every expected feature column is present
    missing = [c for c in FEATURE_COLS if c not in df.columns]
    if missing:
        raise ValueError(f"Extractor output is missing columns: {missing}")
    return df


def compute_complexity_score(bb, br, cc, loop_depth, calls, instr):
    """Weighted composite complexity score (target label).

    Combines McCabe CC, loop depth, call density, branch density, and
    instruction volume into a single float label >= 1.0.
    Formula (tunable):
        score = 1.5*cc + 2.0*loop_depth + 0.5*(calls/5) +
                0.3*(br/(bb+1)) * instr_norm
    clipped to [1, 50].
    """
    instr_norm = np.log1p(instr)           # log-scale instruction volume
    call_contrib  = 0.5 * (calls / 5.0)
    branch_contrib = 0.3 * (br / (bb + 1)) * instr_norm
    score = (1.5 * cc + 2.0 * loop_depth + call_contrib + branch_contrib)
    return np.clip(score, 1.0, 50.0)


def make_synthetic_data(n_samples=500, seed=42):
    """Generate synthetic data with all 11 feature columns + complexity_score target.

    All column names match exactly what IRComplexityExtractor produces.
    """
    rng = np.random.default_rng(seed)

    bb         = rng.integers(1, 50,      size=n_samples)
    br         = rng.integers(0, bb,      size=n_samples)
    phi        = rng.integers(0, br + 1,  size=n_samples)
    cfg_edges  = bb + br
    loop_depth = rng.integers(0, 5,       size=n_samples)
    calls      = rng.integers(0, 20,      size=n_samples)
    ls         = rng.integers(0, bb * 3,  size=n_samples)
    arith      = rng.integers(0, bb * 5,  size=n_samples)
    casts      = rng.integers(0, bb * 2,  size=n_samples)
    instr      = (ls + arith + casts + calls + br + phi
                  + rng.integers(1, 10, size=n_samples))

    # cyclomatic_complexity: McCabe formula E - N + 2 (with small noise)
    cc = (cfg_edges - bb + 2 + rng.integers(-1, 2, size=n_samples)).clip(1)

    # complexity_score: composite TARGET derived from all features
    score = compute_complexity_score(bb, br, cc, loop_depth, calls, instr)

    return pd.DataFrame({
        "function":             [f"func_{i}" for i in range(n_samples)],
        "instruction_count":    instr,
        "basic_block_count":    bb,
        "cfg_edges":            cfg_edges,
        "branch_count":         br,
        "phi_count":            phi,
        "loop_depth_max":       loop_depth,
        "call_count":           calls,
        "load_store_count":     ls,
        "arithmetic_ops":       arith,
        "cast_ops":             casts,
        "cyclomatic_complexity": cc,      # 11th input feature
        TARGET_COL:             score,    # label
    })


def predict(model, feature_dict):
    """Predict complexity_score for a single function.

    Args:
        model: loaded joblib Pipeline
        feature_dict: dict with all 11 FEATURE_COLS keys
    Returns:
        float: predicted complexity_score
    """
    # np.asarray with explicit dtype prevents any pandas object from
    # reaching the scaler with feature-name metadata intact.
    row = np.asarray([[feature_dict[c] for c in FEATURE_COLS]], dtype=float)
    return float(model.predict(row)[0])


def train(df):
    print(f"\n{chr(61)*60}")
    print("  LLVM IR Complexity Estimator -- Training")
    print(f"{chr(61)*60}")
    print(f"  Dataset : {len(df)} functions")
    print(f"  Features ({len(FEATURE_COLS)}): {FEATURE_COLS}")
    print(f"  Target  : {TARGET_COL}")

    # Guard: all 11 feature columns must be present
    missing = [c for c in FEATURE_COLS if c not in df.columns]
    if missing:
        raise ValueError(f"DataFrame is missing feature columns: {missing}")

    # .to_numpy() strips pandas column-name metadata so sklearn never
    # sees a DataFrame and emits the "fitted without feature names" warning.
    X = df[FEATURE_COLS].to_numpy(dtype=float)  # shape (n, 11)
    y = df[TARGET_COL].values

    print("\n[1/3] Cross-validation (5-fold) ...")
    pipe = Pipeline([
        ("scaler", StandardScaler()),
        ("rf", RandomForestRegressor(
            n_estimators=200, max_depth=None,
            min_samples_split=4, random_state=42, n_jobs=-1,
        )),
    ])
    scores = cross_val_score(pipe, X, y, cv=5,
                              scoring="neg_root_mean_squared_error")
    rmse_cv = -scores.mean()
    std_cv  = scores.std()
    print(f"    RandomForest  CV RMSE: {rmse_cv:.4f} +/- {std_cv:.4f}")

    pipe_gb = Pipeline([
        ("scaler", StandardScaler()),
        ("gb", GradientBoostingRegressor(
            n_estimators=300, learning_rate=0.05,
            max_depth=4, random_state=42,
        )),
    ])
    scores_gb = cross_val_score(pipe_gb, X, y, cv=5,
                                 scoring="neg_root_mean_squared_error")
    rmse_gb = -scores_gb.mean()
    std_gb  = scores_gb.std()
    print(f"    GradientBoost CV RMSE: {rmse_gb:.4f} +/- {std_gb:.4f}")

    best_pipe = pipe if rmse_cv <= rmse_gb else pipe_gb
    best_name = "RandomForest" if rmse_cv <= rmse_gb else "GradientBoosting"
    print(f"\n  Selected: {best_name}")

    print("\n[2/3] Fitting final model on full dataset ...")
    best_pipe.fit(X, y)

    if best_name == "RandomForest":
        rf = best_pipe.named_steps["rf"]
        print("\n  Feature importances:")
        for name, imp in sorted(zip(FEATURE_COLS, rf.feature_importances_),
                                 key=lambda x: -x[1]):
            bar = "#" * int(imp * 40)
            print(f"    {name:<25} {imp:.4f} {bar}")

    print("\n[3/3] Hold-out test (20%) ...")
    X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.2, random_state=0)
    # Explicit .values ensures no pandas DataFrame is passed to the scaler
    X_tr, X_te = np.asarray(X_tr, dtype=float), np.asarray(X_te, dtype=float)
    best_pipe.fit(X_tr, y_tr)
    preds     = best_pipe.predict(X_te)
    rmse_test = math.sqrt(mean_squared_error(y_te, preds))
    print(f"    Test RMSE: {rmse_test:.4f}")

    # Re-fit on full data for deployment
    best_pipe.fit(X, y)

    # ---- Save model ------------------------------------------------
    joblib.dump(best_pipe, MODEL_PATH)
    size_kb = MODEL_PATH.stat().st_size / 1024
    print(f"\n  Model saved -> {MODEL_PATH}  ({size_kb:.1f} KB)")

    # ---- Immediate reload + shape verification ---------------------
    print("  Verifying pickle integrity ...")
    loaded = joblib.load(MODEL_PATH)
    test_row = X_te[:5]
    assert test_row.shape[1] == len(FEATURE_COLS), (
        f"Shape mismatch: expected {len(FEATURE_COLS)} features, "
        f"got {test_row.shape[1]}")
    verify_preds = loaded.predict(test_row)
    print(f"  Predictions on 5 hold-out samples: {verify_preds.round(3)}")
    print(f"  Input shape: {test_row.shape}  -> {len(FEATURE_COLS)} features OK")
    print("  Pickle verification PASSED")

    # ---- Factorial function verification ---------------------------
    print("\n--- Factorial function verification ---")
    # Known features from: ./build/IRComplexityExtractor test/sample.ll
    # "factorial": instr=7, bb=3, cfg_edges=2, branch=1, phi=0,
    #              loop_depth=0, call=1, ls=0, arith=2, cast=0, cc=1
    factorial_features = {
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
        "cyclomatic_complexity": 1,  # 11th feature
    }
    factorial_score = predict(loaded, factorial_features)
    # Analytical expected value using our formula:
    expected = float(compute_complexity_score(
        bb=np.array([3]), br=np.array([1]), cc=np.array([1]),
        loop_depth=np.array([0]), calls=np.array([1]),
        instr=np.array([7])
    )[0])
    print(f"  factorial predicted complexity_score : {factorial_score:.4f}")
    print(f"  analytical expected (formula)        : {expected:.4f}")
    print(f"  difference                           : {abs(factorial_score - expected):.4f}")
    print("--- Verification complete ---")
    print(f"{chr(61)*60}\n")

    return best_pipe


if __name__ == "__main__":
    if len(sys.argv) > 1:
        print("Loading features from IR files ...")
        df = load_from_ir(sys.argv[1:])
        # When loading from real IR, compute a complexity_score label
        # from the extracted features so we have a training target.
        df[TARGET_COL] = compute_complexity_score(
            bb=df["basic_block_count"].values,
            br=df["branch_count"].values,
            cc=df["cyclomatic_complexity"].values,
            loop_depth=df["loop_depth_max"].values,
            calls=df["call_count"].values,
            instr=df["instruction_count"].values,
        )
    else:
        print("No IR files specified -- using synthetic data for demonstration.")
        df = make_synthetic_data()
    train(df)
