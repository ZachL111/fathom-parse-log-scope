# Fathom Parse Log Scope Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 152 | ship |
| stress | grammar width | 221 | ship |
| edge | label quality | 157 | ship |
| recovery | error locality | 178 | ship |
| stale | token drift | 220 | ship |

Start with `stress` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `baseline` becomes less cautious without a clear reason, I would inspect the drag input first.
