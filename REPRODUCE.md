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

3) expanded corpus run (automated shortlist):

```bash
# clone shortlist repositories
mkdir -p corpus_src
git clone --depth 1 https://github.com/antirez/linenoise.git corpus_src/linenoise || true
git clone --depth 1 https://github.com/madler/zlib.git corpus_src/zlib || true
git clone --depth 1 https://github.com/libexpat/libexpat.git corpus_src/libexpat || true
git clone --depth 1 https://github.com/nothings/stb.git corpus_src/stb || true

# compile C sources to LLVM IR with include heuristics (skips tests/examples/docs)
python3 - <<'PY'
from pathlib import Path
import subprocess
import csv

Path('corpus_ll').mkdir(exist_ok=True)
manifest=Path('python/corpus_compile_manifest.csv')
with manifest.open('w', newline='') as fp:
	w=csv.writer(fp); w.writerow(['repo','source','ll_file','status'])
	for repo in [Path('corpus_src/linenoise'),Path('corpus_src/zlib'),Path('corpus_src/libexpat'),Path('corpus_src/stb')]:
		if not repo.exists():
			continue
		for c in repo.rglob('*.c'):
			s=str(c)
			if any(x in s for x in ['/test/','/tests/','/examples/','/docs/','/doc/','/bench/','/benchmark']):
				w.writerow([repo.name,s,'', 'skipped'])
				continue
			rel=s.replace(str(repo) + '/', '')
			out=Path('corpus_ll') / f"{repo.name}_{rel.replace('/','__').replace('.c','.ll')}"
			cmd=['clang','-O2','-S','-emit-llvm','-I',str(repo),'-I',str(repo/'include'),'-I',str(repo/'src'),'-I',str(repo/'lib'),str(c),'-o',str(out)]
			try:
				subprocess.run(cmd, check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
				w.writerow([repo.name,s,str(out),'ok'])
			except Exception:
				if out.exists(): out.unlink()
				w.writerow([repo.name,s,str(out),'failed'])
PY

# collect timing and retrain
python3 python/measure_pass_times.py corpus_ll/*.ll --repeats 3 --passes 'default<O2>' --csv python/timing_corpus.csv
./python/run_retrain_corpus.sh python/timing_corpus.csv corpus_ll build/IRComplexityExtractor python/complexity_model_corpus.pkl python/eval_retrain.json
python3 python/retrain_from_timing.py --timing python/timing_corpus.csv --corpus corpus_ll --out-model python/complexity_model_corpus_file.pkl --out-eval python/eval_retrain_file.json --aggregate-file
```
