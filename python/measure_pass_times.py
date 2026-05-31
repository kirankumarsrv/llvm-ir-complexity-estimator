#!/usr/bin/env python3
"""Collect coarse compile-time measurements for LLVM pass pipelines.

This helper measures wall-clock time for a chosen opt pipeline on one or more
LLVM IR files and reports a per-function approximation using the extractor's
function count. It is intended as the data-collection entrypoint for the
evaluation workflow.
"""

from __future__ import annotations

import argparse
import csv
import json
import shutil
import subprocess
import sys
import time
from pathlib import Path


PROJECT_ROOT = Path(__file__).resolve().parent.parent
EXTRACTOR_BIN = PROJECT_ROOT / "build" / "IRComplexityExtractor"


def find_opt() -> str:
    candidates = ["opt-18", "opt", "llvm-opt-18", "llvm-opt"]
    for candidate in candidates:
        path = shutil.which(candidate)
        if path:
            return path
    raise FileNotFoundError("Could not find an opt binary in PATH")


def count_functions(ir_file: Path) -> int:
    if not EXTRACTOR_BIN.exists():
        raise FileNotFoundError(f"Extractor not built: {EXTRACTOR_BIN}")
    result = subprocess.run(
        [str(EXTRACTOR_BIN), str(ir_file)],
        capture_output=True,
        text=True,
        check=True,
    )
    records = json.loads(result.stdout)
    return len(records)


def time_pipeline(opt_bin: str, ir_file: Path, passes: str, repeats: int) -> float:
    total = 0.0
    for _ in range(repeats):
        start = time.perf_counter()
        subprocess.run(
            [opt_bin, "-disable-output", f"-passes={passes}", str(ir_file)],
            check=True,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
        )
        total += (time.perf_counter() - start) * 1000.0
    return total / repeats


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("files", nargs="+", type=Path, help="LLVM IR files")
    parser.add_argument("--passes", default="default<O2>", help="opt pipeline")
    parser.add_argument("--repeats", type=int, default=3, help="timing repeats")
    parser.add_argument("--csv", type=Path, help="write CSV output here")
    args = parser.parse_args()

    opt_bin = find_opt()
    rows = []
    for ir_file in args.files:
        function_count = count_functions(ir_file)
        elapsed_ms = time_pipeline(opt_bin, ir_file, args.passes, args.repeats)
        rows.append({
            "file": str(ir_file.resolve()),
            "functions": function_count,
            "passes": args.passes,
            "repeats": args.repeats,
            "elapsed_ms": round(elapsed_ms, 3),
            "ms_per_function": round(elapsed_ms / max(function_count, 1), 3),
        })

    if args.csv:
      with args.csv.open("w", newline="") as fp:
          writer = csv.DictWriter(fp, fieldnames=list(rows[0].keys()))
          writer.writeheader()
          writer.writerows(rows)
    else:
        writer = csv.DictWriter(sys.stdout, fieldnames=list(rows[0].keys()))
        writer.writeheader()
        writer.writerows(rows)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
