# Review Journal

The repository goal stays the same: implement a Ruby parsers project for log resource planning, using capacity fixtures and allocation and spill reports. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 152, lane `ship`
- `stress`: `grammar width`, score 221, lane `ship`
- `edge`: `label quality`, score 157, lane `ship`
- `recovery`: `error locality`, score 178, lane `ship`
- `stale`: `token drift`, score 220, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
