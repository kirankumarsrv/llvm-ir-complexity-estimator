#!/usr/bin/env python3
import argparse
from pathlib import Path
import subprocess
import json
import pandas as pd
import joblib
try:
    import matplotlib.pyplot as plt
    _HAS_MPL = True
except Exception:
    _HAS_MPL = False

BASE_FEATURE_COLS=['instruction_count','basic_block_count','cfg_edges','branch_count','phi_count','loop_depth_max','call_count','load_store_count','arithmetic_ops','cast_ops','cyclomatic_complexity','alias_query_density','type_graph_complexity']
DERIVED_FEATURE_COLS=['inst_per_bb','calls_per_bb']


def extract_features(extractor, filepath):
    out = subprocess.run([str(extractor), str(filepath)], capture_output=True, text=True)
    out.check_returncode()
    return json.loads(out.stdout)


def main():
    p = argparse.ArgumentParser()
    p.add_argument('--model', required=True)
    p.add_argument('--inputs', nargs='+', required=True)
    p.add_argument('--out-csv', default='python/predictions_test.csv')
    p.add_argument('--plots-dir', default='python/plots')
    args = p.parse_args()

    extractor = Path('build') / 'IRComplexityExtractor'
    if not extractor.exists():
        raise SystemExit('Extractor missing: build/IRComplexityExtractor')

    model = joblib.load(args.model)
    # Support both legacy 13-feature models and newer 15-feature models.
    expected_n = None
    scaler = model.named_steps.get('scaler') if hasattr(model, 'named_steps') else None
    if scaler is not None and hasattr(scaler, 'n_features_in_'):
        expected_n = int(scaler.n_features_in_)
    if expected_n == 15:
        feature_cols = BASE_FEATURE_COLS + DERIVED_FEATURE_COLS
    else:
        feature_cols = BASE_FEATURE_COLS
    rows=[]
    files=[]
    for pattern in args.inputs:
        pth = Path(pattern)
        if pth.is_dir():
            files += sorted(list(pth.glob('*.ll')))
        else:
            files += sorted(list(Path('.').glob(pattern)))

    files = [f for f in files if f.exists()]
    if not files:
        print('No input files found for patterns', args.inputs)
        return

    for f in files:
        recs = extract_features(extractor, f)
        for rec in recs:
            feats = rec['features']
            row = {c: float(feats.get(c,0)) for c in BASE_FEATURE_COLS}
            bb = max(float(feats.get('basic_block_count', 1.0)), 1.0)
            row['inst_per_bb'] = float(feats.get('instruction_count', 0.0)) / bb
            row['calls_per_bb'] = float(feats.get('call_count', 0.0)) / bb
            row['file'] = str(f)
            row['function'] = rec['function']
            rows.append(row)

    df = pd.DataFrame(rows)
    if df.empty:
        print('No functions extracted')
        return
    X = df[feature_cols].to_numpy()
    preds = model.predict(X)
    df['pred_ms_per_func'] = preds
    out_csv = Path(args.out_csv)
    out_csv.parent.mkdir(parents=True, exist_ok=True)
    df.to_csv(out_csv, index=False)
    print('Wrote', out_csv)

    plots_dir = Path(args.plots_dir)
    plots_dir.mkdir(parents=True, exist_ok=True)

    # simple histogram of predicted per-function ms (if matplotlib available)
    if _HAS_MPL:
        plt.figure(figsize=(6,4))
        df['pred_ms_per_func'].hist(bins=40)
        plt.title('Predicted ms per function (test set)')
        plt.xlabel('ms per function')
        plt.ylabel('count')
        plt.tight_layout()
        plt.savefig(plots_dir/'pred_hist.png')
        plt.close()
    else:
        print('matplotlib not available; skipping plots')

    # aggregate per-file
    agg = df.groupby('file')['pred_ms_per_func'].agg(['mean','median','max','count']).reset_index()
    agg.to_csv(plots_dir/'pred_aggregates.csv', index=False)
    print('Wrote aggregates to', plots_dir/'pred_aggregates.csv')

    # feature importances from eval_retrain.json if present
    eval_file = Path('python')/'eval_retrain.json'
    if eval_file.exists():
        ej = json.load(open(eval_file))
        fi = ej.get('feature_importances')
        if fi:
            items = sorted(fi.items(), key=lambda x: x[1], reverse=True)
            names=[n for n,_ in items]
            vals=[v for _,v in items]
            if _HAS_MPL:
                plt.figure(figsize=(8,4))
                plt.bar(names, vals)
                plt.xticks(rotation=45, ha='right')
                plt.title('Feature importances')
                plt.tight_layout()
                plt.savefig(plots_dir/'feature_importances.png')
                plt.close()
                print('Wrote feature_importances.png')
            else:
                print('matplotlib not available; skipping feature importance plot')

if __name__=='__main__':
    main()
