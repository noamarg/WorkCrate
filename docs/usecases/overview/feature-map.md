# Feature map

## Module catalog (13)

| ID | Module | MVP | Depends on |
|----|--------|-----|------------|
| MOD-01 | Core & access | Yes | - |
| MOD-02 | Experience studio | Yes | MOD-01 |
| MOD-03 | People | Yes | MOD-01 |
| MOD-04 | Projects | Yes | MOD-01, MOD-03 |
| MOD-05 | Work | Yes | MOD-04 |
| MOD-06 | Workflows | Yes | MOD-05 |
| MOD-07 | Planning | v1 | MOD-04 |
| MOD-08 | Time | v1 | MOD-04, MOD-05 |
| MOD-09 | Knowledge | v1 | MOD-04 |
| MOD-10 | Delivery packs | v1 | MOD-04, MOD-05 |
| MOD-11 | Revenue | v1 | MOD-04 |
| MOD-12 | Service | v1 | MOD-05, MOD-09 |
| MOD-13 | Business | later | MOD-04, MOD-03 |

## Sub-packs

| Parent | Sub-pack | MVP |
|--------|----------|-----|
| MOD-10 | `engineering` | v1 |
| MOD-10 | `design` | v1 |
| MOD-10 | `marketing` | v1 |
| MOD-13 | `finance` | later |
| MOD-13 | `hr` | later |
| MOD-13 | `operations` | later |

## Phase 1 (MVP) scenario subset

Recommended first implementation scenarios:

- SCN-EXP-001 through SCN-EXP-004
- SCN-CORE-001 through SCN-CORE-003
- SCN-PEO-001, SCN-PROJ-001, SCN-WORK-001, SCN-WORK-002
- SCN-WF-001 (minimal)
- SCN-KNW-001 (basic)

## Industry presets

See [presets/](../presets/) - configuration only, not additional modules.
