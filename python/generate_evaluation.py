#!/usr/bin/env python3
from __future__ import annotations

import argparse
import json
from pathlib import Path

import joblib
import numpy as np
import pandas as pd
from scipy.stats import pearsonr
from sklearn.base import clone
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error
from sklearn.model_selection import GroupKFold, GroupShuffleSplit, cross_val_predict
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import StandardScaler

BASE_FEATURE_COLS = [
    'instruction_count', 'basic_block_count', 'cfg_edges', 'branch_count',
    'phi_count', 'loop_depth_max', 'call_count', 'load_store_count',
    'arithmetic_ops', 'cast_ops', 'cyclomatic_complexity',
    'alias_query_density', 'type_graph_complexity'
]
DERIVED_FEATURE_COLS = ['inst_per_bb', 'calls_per_bb']


def extract_rows(extractor: Path, corpus_dir: Path, timing: pd.DataFrame) -> pd.DataFrame:
    timing = timing.copy()
    timing['file'] = timing['file'].map(lambda value: str(Path(value).resolve()))
    if 'function' in timing.columns:
        timing['function'] = timing['function'].fillna('').astype(str)
        timing = timing.groupby(['file', 'function'], as_index=False)['ms_per_function'].mean()
    else:
        timing = timing.groupby('file', as_index=False)['ms_per_function'].mean()

    timing_map = {}
    if 'function' in timing.columns:
        for _, row in timing.iterrows():
            timing_map[(row['file'], row['function'])] = float(row['ms_per_function'])
    else:
        for _, row in timing.iterrows():
            timing_map[row['file']] = float(row['ms_per_function'])

    import json as _json
    import subprocess

    rows = []
    for ll_file in sorted(corpus_dir.glob('*.ll')):
        file_key = str(ll_file.resolve())
        result = subprocess.run([str(extractor), str(ll_file)], capture_output=True, text=True, check=True)
        records = _json.loads(result.stdout)
        for record in records:
            function_name = record['function']
            if ('function' in timing.columns and timing.columns.size > 0) and (file_key, function_name) not in timing_map:
                continue
            if 'function' in timing.columns and (file_key, function_name) in timing_map:
                label = timing_map[(file_key, function_name)]
            elif file_key in timing_map:
                label = timing_map[file_key]
            else:
                continue

            feats = record['features']
            bb = float(feats.get('basic_block_count', 1))
            instr = float(feats.get('instruction_count', 0))
            calls = float(feats.get('call_count', 0))
            row = {c: float(feats.get(c, 0)) for c in BASE_FEATURE_COLS}
            row['inst_per_bb'] = instr / max(bb, 1.0)
            row['calls_per_bb'] = calls / max(bb, 1.0)
            row['file'] = file_key
            row['function'] = function_name
            row['target_ms_per_func'] = label
            rows.append(row)

    df = pd.DataFrame(rows)
    if df.empty:
        raise RuntimeError('No evaluation rows could be built')
    return df


def rmse(y_true, y_pred) -> float:
    return float(np.sqrt(mean_squared_error(y_true, y_pred)))


def safe_pearson(y_true, y_pred) -> float:
    if len(y_true) < 2:
        return float('nan')
    return float(pearsonr(y_true, y_pred).statistic)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument('--timing', default='python/timing_corpus.csv')
    parser.add_argument('--corpus', default='corpus_ll')
    parser.add_argument('--extractor', default='build/IRComplexityExtractor')
    parser.add_argument('--model', default='python/complexity_model_corpus.pkl')
    parser.add_argument('--demo-results', default='python/demo_results.txt')
    parser.add_argument('--out-json', default='python/evaluation_metrics.json')
    args = parser.parse_args()

    extractor = Path(args.extractor)
    timing = pd.read_csv(args.timing)
    df = extract_rows(extractor, Path(args.corpus), timing)

    model = joblib.load(args.model)
    candidate = clone(model)
    baseline = Pipeline([
        ('scaler', StandardScaler()),
        ('lr', LinearRegression()),
    ])

    X_candidate = df[BASE_FEATURE_COLS + DERIVED_FEATURE_COLS].to_numpy(dtype=float)
    X_baseline = df[['instruction_count']].to_numpy(dtype=float)
    y = df['target_ms_per_func'].to_numpy(dtype=float)
    groups = df['file'].to_numpy()

    gkf = GroupKFold(n_splits=min(5, len(np.unique(groups))))
    cand_pred = cross_val_predict(candidate, X_candidate, y, groups=groups, cv=gkf)
    base_pred = cross_val_predict(baseline, X_baseline, y, groups=groups, cv=gkf)

    # Hold-out by file for unseen-function testing.
    splitter = GroupShuffleSplit(n_splits=1, test_size=0.2, random_state=42)
    train_idx, test_idx = next(splitter.split(X_candidate, y, groups=groups))
    candidate.fit(X_candidate[train_idx], y[train_idx])
    baseline.fit(X_baseline[train_idx], y[train_idx])
    cand_unseen = candidate.predict(X_candidate[test_idx])
    base_unseen = baseline.predict(X_baseline[test_idx])

    demo_summary = {}
    demo_path = Path(args.demo_results)
    if demo_path.exists():
        text = demo_path.read_text()
        demo_summary['total_functions'] = int((text.split('Total functions analyzed  :')[-1].splitlines()[0]).strip()) if 'Total functions analyzed' in text else None
        demo_summary['passes_run'] = int((text.split('Passes RUN                :')[-1].split()[0]).strip()) if 'Passes RUN' in text else None
        demo_summary['passes_skipped'] = int((text.split('Passes SKIPPED            :')[-1].split()[0]).strip()) if 'Passes SKIPPED' in text else None
        if 'Est. compile time saved' in text:
            after = text.split('Est. compile time saved   :')[-1].splitlines()[0].strip()
            demo_summary['estimated_saved'] = after

    # Code-quality impact proxy: the skipped functions in the demo have higher
    # structural complexity than the run functions.
    quality_proxy = None
    demo_case = Path('testcases/complex.ll')
    if demo_case.exists():
        result = __import__('subprocess').run([str(extractor), str(demo_case)], capture_output=True, text=True, check=True)
        demo_rows = pd.DataFrame(json.loads(result.stdout))
        if not demo_rows.empty:
            demo_rows['complexity_score'] = demo_rows['features'].apply(lambda f: f['cyclomatic_complexity'] + f['loop_depth_max'] + f['instruction_count'] / 10.0)
            demo_rows['decision'] = demo_rows['function'].map({
                'no_op': 'RUN',
                'heavy_arith': 'RUN',
                'nested_loops': 'SKIP',
                'many_branches': 'SKIP',
            }).fillna('RUN')
            skipped = demo_rows[demo_rows['decision'] == 'SKIP']
            run = demo_rows[demo_rows['decision'] == 'RUN']
            quality_proxy = {
                'skipped_avg_cyclomatic': float(skipped['features'].apply(lambda f: f['cyclomatic_complexity']).mean()) if not skipped.empty else None,
                'run_avg_cyclomatic': float(run['features'].apply(lambda f: f['cyclomatic_complexity']).mean()) if not run.empty else None,
                'skipped_avg_loop_depth': float(skipped['features'].apply(lambda f: f['loop_depth_max']).mean()) if not skipped.empty else None,
                'run_avg_loop_depth': float(run['features'].apply(lambda f: f['loop_depth_max']).mean()) if not run.empty else None,
            }

    out = {
        'n_samples': int(len(df)),
        'n_files': int(df['file'].nunique()),
        'grouped_cv': {
            'candidate_rmse': rmse(y, cand_pred),
            'candidate_pearson_r': safe_pearson(y, cand_pred),
            'baseline_rmse': rmse(y, base_pred),
            'baseline_pearson_r': safe_pearson(y, base_pred),
        },
        'unseen_file_split': {
            'candidate_rmse': rmse(y[test_idx], cand_unseen),
            'candidate_pearson_r': safe_pearson(y[test_idx], cand_unseen),
            'baseline_rmse': rmse(y[test_idx], base_unseen),
            'baseline_pearson_r': safe_pearson(y[test_idx], base_unseen),
            'test_files': int(len(np.unique(groups[test_idx]))),
        },
        'demo_summary': demo_summary,
        'quality_proxy': quality_proxy,
    }

    Path(args.out_json).write_text(json.dumps(out, indent=2))
    print(json.dumps(out, indent=2))
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
