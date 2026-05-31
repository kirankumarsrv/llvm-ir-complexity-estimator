#!/usr/bin/env python3
import argparse
import json
import math
import subprocess
from pathlib import Path

import joblib
import numpy as np
import pandas as pd
from scipy.stats import pearsonr
from sklearn.ensemble import GradientBoostingRegressor, RandomForestRegressor
from sklearn.metrics import mean_squared_error
from sklearn.model_selection import cross_val_score, train_test_split
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import StandardScaler

BASE_FEATURE_COLS = [
    'instruction_count', 'basic_block_count', 'cfg_edges', 'branch_count',
    'phi_count', 'loop_depth_max', 'call_count', 'load_store_count',
    'arithmetic_ops', 'cast_ops', 'cyclomatic_complexity',
    'alias_query_density', 'type_graph_complexity'
]
DERIVED_FEATURES = ['inst_per_bb', 'calls_per_bb']
FEATURE_COLS = BASE_FEATURE_COLS + DERIVED_FEATURES


def extract_features(extractor: Path, filepath: Path):
    out = subprocess.run([str(extractor), str(filepath)], capture_output=True, text=True, check=True)
    return json.loads(out.stdout)


def build_label_lookup(timing_df: pd.DataFrame, aggregate_file: bool):
    timing_df = timing_df.copy()
    timing_df['file'] = timing_df['file'].map(lambda value: str(Path(value).resolve()))
    if 'function' in timing_df.columns:
        timing_df['function'] = timing_df['function'].fillna('').astype(str)

    if aggregate_file:
        grouped = timing_df.groupby('file', as_index=False)['ms_per_function'].mean()
        return {row['file']: float(row['ms_per_function']) for _, row in grouped.iterrows()}, 'file'

    if 'function' in timing_df.columns and timing_df['function'].str.len().gt(0).any():
        grouped = timing_df.groupby(['file', 'function'], as_index=False)['ms_per_function'].mean()
        return {
            (row['file'], row['function']): float(row['ms_per_function'])
            for _, row in grouped.iterrows()
        }, 'function'

    grouped = timing_df.groupby('file', as_index=False)['ms_per_function'].mean()
    return {row['file']: float(row['ms_per_function']) for _, row in grouped.iterrows()}, 'file'


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--timing', required=True, help='timing CSV with file and ms_per_function')
    parser.add_argument('--corpus', default='corpus_ll', help='directory with .ll files')
    parser.add_argument('--extractor', default='build/IRComplexityExtractor')
    parser.add_argument('--out-model', default='python/complexity_model_corpus.pkl')
    parser.add_argument('--out-eval', default='python/eval_retrain.json')
    parser.add_argument('--aggregate-file', action='store_true', help='aggregate features per file and train on file-level target')
    args = parser.parse_args()

    timing_df = pd.read_csv(args.timing)
    ms_map, label_scope = build_label_lookup(timing_df, args.aggregate_file)

    extractor = Path(args.extractor)
    if not extractor.exists():
        raise SystemExit('Extractor missing: ' + str(extractor))

    rows = []
    files = sorted(Path(args.corpus).glob('*.ll'))
    for f in files:
        fpath = str(f.resolve())
        recs = extract_features(extractor, f)
        for rec in recs:
            feats = rec['features']
            instr = float(feats.get('instruction_count', 0))
            bb = float(feats.get('basic_block_count', 1))
            calls = float(feats.get('call_count', 0))
            row = {c: float(feats.get(c, 0)) for c in BASE_FEATURE_COLS}
            row.update({
                'inst_per_bb': instr / max(bb, 1.0),
                'calls_per_bb': calls / max(bb, 1.0),
                'file': fpath,
                'function': rec['function'],
            })

            if args.aggregate_file or label_scope == 'file':
                if fpath not in ms_map:
                    continue
                row['target_ms_per_func'] = float(ms_map[fpath])
                rows.append(row)
            else:
                label_key = (fpath, rec['function'])
                if label_key not in ms_map:
                    continue
                row['target_ms_per_func'] = float(ms_map[label_key])
                rows.append(row)

    if not rows:
        raise SystemExit('No rows to train on')

    df = pd.DataFrame(rows)
    if args.aggregate_file:
        df = df.groupby('file', as_index=False)[FEATURE_COLS + ['target_ms_per_func']].mean()

    X = df[FEATURE_COLS].to_numpy(dtype=float)
    y = df['target_ms_per_func'].to_numpy(dtype=float)

    pipe_rf = Pipeline([
        ('scaler', StandardScaler()),
        ('rf', RandomForestRegressor(
            n_estimators=200, min_samples_split=4, random_state=42, n_jobs=-1
        )),
    ])
    pipe_gb = Pipeline([
        ('scaler', StandardScaler()),
        ('gb', GradientBoostingRegressor(
            n_estimators=300, learning_rate=0.05, max_depth=4, random_state=42
        )),
    ])

    scores_rf = -cross_val_score(pipe_rf, X, y, cv=5, scoring='neg_root_mean_squared_error')
    scores_gb = -cross_val_score(pipe_gb, X, y, cv=5, scoring='neg_root_mean_squared_error')
    rmse_rf = scores_rf.mean()
    rmse_gb = scores_gb.mean()
    best = pipe_rf if rmse_rf <= rmse_gb else pipe_gb
    best_name = 'RandomForest' if rmse_rf <= rmse_gb else 'GradientBoosting'

    X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.2, random_state=42)
    best.fit(X_tr, y_tr)
    y_pred = best.predict(X_te)
    rmse_test = math.sqrt(mean_squared_error(y_te, y_pred))

    best.fit(X, y)
    joblib.dump(best, args.out_model)

    preds = best.predict(X)
    r, p = pearsonr(preds, y)

    feat_imp = None
    if best_name == 'RandomForest':
        rf = best.named_steps['rf']
        feat_imp = dict(zip(FEATURE_COLS, rf.feature_importances_.tolist()))

    out = {
        'n_samples': len(df),
        'cv_rmse_rf': float(rmse_rf),
        'cv_rmse_gb': float(rmse_gb),
        'selected': best_name,
        'test_rmse': float(rmse_test),
        'feature_importances': feat_imp,
        'pearson_r': float(r),
        'pval': float(p),
        'label_scope': label_scope,
    }
    Path(args.out_eval).write_text(json.dumps(out, indent=2))
    print('Saved model ->', args.out_model)
    print(json.dumps(out, indent=2))


if __name__ == '__main__':
    main()
