#!/usr/bin/env python3
"""
extract_features.py -- Python wrapper around IRComplexityExtractor.

Usage:
  python extract_features.py <file.ll> [file2.ll ...]

Prints a pandas DataFrame of features.
"""

import json
import subprocess
import sys
from pathlib import Path

import pandas as pd

# Adjust this path if the binary is elsewhere
EXTRACTOR_BIN = Path(__file__).parent.parent / "build" / "IRComplexityExtractor"


def extract_features(ir_files: list) -> pd.DataFrame:
    """Run the C++ extractor and return a DataFrame of features."""
    cmd = [str(EXTRACTOR_BIN)] + ir_files
    result = subprocess.run(cmd, capture_output=True, text=True, check=True)
    records = json.loads(result.stdout)
    rows = []
    for rec in records:
        row = {"function": rec["function"]}
        row.update(rec["features"])
        rows.append(row)
    return pd.DataFrame(rows)


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print(f"Usage: {sys.argv[0]} <file.ll> [...]", file=sys.stderr)
        sys.exit(1)
    df = extract_features(sys.argv[1:])
    print(df.to_string(index=False))
