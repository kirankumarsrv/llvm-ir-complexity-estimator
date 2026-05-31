# Demo Evidence

This repository includes two image-based snapshots of the pass-skipping demo.

- [Success case: balanced skip/run decisions](demo/success.svg)
- [Failure case: over-aggressive skip on an alias-heavy function](demo/failure.svg)

The success case shows `testcases/complex.ll` with two functions run and two skipped.
The failure case shows `testcases/alias_heavy.ll`, where the current threshold skips a function that is alias-heavy and therefore worth reviewing before production use.

## Video Recording Helper

If you want to capture a short local video demo on a machine with `ffmpeg`,
run:

```bash
chmod +x scripts/record_demo.sh
./scripts/record_demo.sh demo/demo-recording.mp4
```

While the recorder is running, open `http://127.0.0.1:5000` and show the
success case (`testcases/complex.ll`) plus the failure case
(`testcases/alias_heavy.ll`).
