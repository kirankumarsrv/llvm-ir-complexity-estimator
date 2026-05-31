Reproducing the corpus-trained model and evaluation

This file records the commands used to produce `python/complexity_model_corpus.pkl` and `python/eval_retrain.json`.

1) regenerate timings (example):

```bash
python3 python/measure_pass_times.py --corpus corpus_ll --out python/timing_corpus.csv
```

2) train and produce model + eval (scripted):

Run the training snippet embedded in the repository's `EVALUATION.md` or simply re-run the training pipeline:

```bash
python3 python/train.py --timing python/timing_corpus.csv --out python/complexity_model_corpus.pkl --eval python/eval_retrain.json
```

Notes:
- `python/train.py` accepts a timing CSV and will produce a model and evaluation JSON when provided with `--out` and `--eval`.
- Ensure `build/IRComplexityExtractor` exists and `corpus_ll/*.ll` files are present.
