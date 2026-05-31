#!/usr/bin/env python3
import argparse
import json
import subprocess
from pathlib import Path
import math
import joblib
import pandas as pd
import numpy as np
from sklearn.ensemble import RandomForestRegressor, GradientBoostingRegressor
from sklearn.model_selection import cross_val_score, train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.pipeline import Pipeline
from sklearn.metrics import mean_squared_error
from scipy.stats import pearsonr

FEATURE_COLS=['instruction_count','basic_block_count','cfg_edges','branch_count','phi_count','loop_depth_max','call_count','load_store_count','arithmetic_ops','cast_ops','cyclomatic_complexity','alias_query_density','type_graph_complexity']


def extract_features(extractor, filepath):
    out = subprocess.run([str(extractor), str(filepath)], capture_output=True, text=True, check=True)
    return json.loads(out.stdout)


def main():
    p=argparse.ArgumentParser()
    p.add_argument('--timing', required=True, help='timing CSV with file and ms_per_function')
    p.add_argument('--corpus', default='corpus_ll', help='directory with .ll files')
    p.add_argument('--extractor', default='build/IRComplexityExtractor')
    p.add_argument('--out-model', default='python/complexity_model_corpus.pkl')
    p.add_argument('--out-eval', default='python/eval_retrain.json')
    args=p.parse_args()

    tim = pd.read_csv(args.timing)
    # normalize to resolved absolute paths
    ms_map = {str(Path(r['file']).resolve()): r['ms_per_function'] for _,r in tim.iterrows()}

    rows=[]
    extractor = Path(args.extractor)
    if not extractor.exists():
        raise SystemExit('Extractor missing: '+str(extractor))

    files = sorted(Path(args.corpus).glob('*.ll'))
    for f in files:
        fpath = str(f.resolve())
        if fpath not in ms_map:
            print('skip', fpath, 'no timing')
            continue
        ms_per_func = ms_map[fpath]
        recs = extract_features(extractor, f)
        for rec in recs:
            feats = rec['features']
            row = {c: float(feats.get(c,0)) for c in FEATURE_COLS}
            row['file'] = fpath
            row['function'] = rec['function']
            row['target_ms_per_func'] = float(ms_per_func)
            rows.append(row)

    if not rows:
        raise SystemExit('No rows to train on')

    df = pd.DataFrame(rows)
    X = df[FEATURE_COLS].to_numpy(dtype=float)
    y = df['target_ms_per_func'].to_numpy(dtype=float)

    pipe_rf=Pipeline([('scaler',StandardScaler()),('rf',RandomForestRegressor(n_estimators=200,min_samples_split=4,random_state=42,n_jobs=-1))])
    pipe_gb=Pipeline([('scaler',StandardScaler()),('gb',GradientBoostingRegressor(n_estimators=300,learning_rate=0.05,max_depth=4,random_state=42))])

    scores_rf = -cross_val_score(pipe_rf,X,y,cv=5,scoring='neg_root_mean_squared_error')
    scores_gb = -cross_val_score(pipe_gb,X,y,cv=5,scoring='neg_root_mean_squared_error')
    rmse_rf = scores_rf.mean()
    rmse_gb = scores_gb.mean()
    best = pipe_rf if rmse_rf<=rmse_gb else pipe_gb
    best_name = 'RandomForest' if rmse_rf<=rmse_gb else 'GradientBoosting'

    X_tr,X_te,y_tr,y_te = train_test_split(X,y,test_size=0.2,random_state=42)
    best.fit(X_tr,y_tr)
    y_pred = best.predict(X_te)
    rmse_test = math.sqrt(mean_squared_error(y_te,y_pred))

    # fit on full and save
    best.fit(X,y)
    joblib.dump(best, args.out_model)

    preds = best.predict(X)
    r,p = pearsonr(preds,y)

    # feature importances
    feat_imp = None
    if best_name == 'RandomForest':
        rf = best.named_steps['rf']
        feat_imp = dict(zip(FEATURE_COLS, rf.feature_importances_.tolist()))

    out = {'n_samples': len(df),'cv_rmse_rf': float(rmse_rf),'cv_rmse_gb': float(rmse_gb),'selected': best_name,'test_rmse': float(rmse_test),'feature_importances': feat_imp,'pearson_r': float(r),'pval': float(p)}
    Path(args.out_eval).write_text(json.dumps(out, indent=2))
    print('Saved model ->', args.out_model)
    print(json.dumps(out, indent=2))

if __name__=='__main__':
    main()
