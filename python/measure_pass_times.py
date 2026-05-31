#!/usr/bin/env python3
"""Collect compile-time measurements for LLVM pass pipelines.

This helper can measure either coarse per-file pipeline time or a more
accurate per-function/per-pass timing by extracting each function into a
standalone module and timing the requested pass on that isolated unit.
The per-function mode is intended for the evaluation workflow.
"""

from __future__ import annotations

import argparse
import csv
import json
import shutil
import subprocess
import sys
import tempfile
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


def find_llvm_extract() -> str:
    candidates = ["llvm-extract-18", "llvm-extract"]
    for candidate in candidates:
        path = shutil.which(candidate)
        if path:
            return path
    raise FileNotFoundError("Could not find llvm-extract in PATH")


def list_functions(ir_file: Path) -> list[str]:
    if not EXTRACTOR_BIN.exists():
        raise FileNotFoundError(f"Extractor not built: {EXTRACTOR_BIN}")
    result = subprocess.run(
        [str(EXTRACTOR_BIN), str(ir_file)],
        capture_output=True,
        text=True,
        check=True,
    )
    records = json.loads(result.stdout)
    return [record["function"] for record in records]


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


def extract_function_module(
    llvm_extract_bin: str,
    ir_file: Path,
    function_name: str,
    output_file: Path,
) -> None:
    subprocess.run(
        [llvm_extract_bin, "-func", function_name, "-o", str(output_file), str(ir_file)],
        check=True,
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
    )


def time_function_pass(
    opt_bin: str,
    ir_file: Path,
    function_name: str,
    pass_name: str,
    repeats: int,
    llvm_extract_bin: str,
    temp_dir: Path,
) -> float:
    extracted = temp_dir / f"{ir_file.stem}__{function_name}.bc"
    extract_function_module(llvm_extract_bin, ir_file, function_name, extracted)

    total = 0.0
    for _ in range(repeats):
        start = time.perf_counter()
        subprocess.run(
            [opt_bin, "-disable-output", f"-passes={pass_name}", str(extracted)],
            check=True,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
        )
        total += (time.perf_counter() - start) * 1000.0
    return total / repeats


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("files", nargs="+", type=Path, help="LLVM IR files")
    parser.add_argument("--passes", default="default<O2>", help="opt pipeline or comma-separated pass list")
    parser.add_argument("--repeats", type=int, default=3, help="timing repeats")
    parser.add_argument("--csv", type=Path, help="write CSV output here")
    parser.add_argument(
        "--per-function",
        action="store_true",
        help="time each pass on each extracted function module",
    )
    args = parser.parse_args()

    opt_bin = find_opt()
    rows: list[dict[str, object]] = []
    passes = [p.strip() for p in args.passes.split(",") if p.strip()]

    if args.per_function:
        llvm_extract_bin = find_llvm_extract()
        with tempfile.TemporaryDirectory(prefix="llvm-ir-complexity-") as tmp:
            temp_dir = Path(tmp)
            for ir_file in args.files:
                function_names = list_functions(ir_file)
                for function_name in function_names:
                    for pass_name in passes:
                        elapsed_ms = time_function_pass(
                            opt_bin,
                            ir_file,
                            function_name,
                            pass_name,
                            args.repeats,
                            llvm_extract_bin,
                            temp_dir,
                        )
                        rows.append({
                            "file": str(ir_file.resolve()),
                            "function": function_name,
                            "pass_name": pass_name,
                            "functions": 1,
                            "passes": pass_name,
                            "repeats": args.repeats,
                            "elapsed_ms": round(elapsed_ms, 3),
                            "ms_per_function": round(elapsed_ms, 3),
                        })
    else:
        for ir_file in args.files:
            function_count = len(list_functions(ir_file))
            elapsed_ms = time_pipeline(opt_bin, ir_file, args.passes, args.repeats)
            rows.append({
                "file": str(ir_file.resolve()),
                "function": "",
                "pass_name": args.passes,
                "functions": function_count,
                "passes": args.passes,
                "repeats": args.repeats,
                "elapsed_ms": round(elapsed_ms, 3),
                "ms_per_function": round(elapsed_ms / max(function_count, 1), 3),
            })

    fieldnames = [
        "file",
        "function",
        "pass_name",
        "functions",
        "passes",
        "repeats",
        "elapsed_ms",
        "ms_per_function",
    ]

    if args.csv:
        with args.csv.open("w", newline="") as fp:
            writer = csv.DictWriter(fp, fieldnames=fieldnames)
            writer.writeheader()
            writer.writerows(rows)
    else:
        writer = csv.DictWriter(sys.stdout, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(rows)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
