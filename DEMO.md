# Demo Evidence

This repository includes two image-based snapshots of the pass-skipping demo.

- [Success case: balanced skip/run decisions](demo/success.svg)
- [Failure case: over-aggressive skip on an alias-heavy function](demo/failure.svg)

The success case shows `testcases/complex.ll` with two functions run and two skipped.
The failure case shows `testcases/alias_heavy.ll`, where the current threshold skips a function that is alias-heavy and therefore worth reviewing before production use.
