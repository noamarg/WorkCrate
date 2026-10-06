# WorkCrate architecture

Technical architecture for **WorkCrate**: Go N-tier modular monolith, React web client, PostgreSQL, Redis, Authentik (OIDC).

## How to read (four layers)

| Layer | Location | For |
|-------|----------|-----|
| **1. Guides** | [guides/](guides/) | Short entry points - start here |
| **2. Deep dives** | [layers/](layers/), [patterns/](patterns/), [data/](data/), [web/](web/) | N-tier, patterns, data, frontend |
| **3. Module maps** | [modules/](modules/) | MOD-01–MOD-13 ↔ packages, APIs, SCNs |
| **4. Code reference** | [reference/](reference/) | Exact folders, files, functions |

**Foundation:** [overview/](overview/) - [stack](overview/stack.md), [engineering principles](overview/engineering-principles.md), [version policy](overview/version-policy.md).

**Product behavior:** [use cases](../usecases/README.md) (SCN scenarios).

## Use case → architecture

| Step | Action |
|------|--------|
| 1 | Find **SCN-*** in [use case index](../usecases/README.md) |
| 2 | Open matching [module map](modules/) (MOD-*) |
| 3 | Implement under `apps/backend/` per [reference/backend/modules/](reference/backend/modules/); UI under `apps/frontend/`; HTTP contract in `apps/shared/openapi/` |

MVP mapping: [guides/10-mvp-implementation-map.md](guides/10-mvp-implementation-map.md).

Branching and releases: [guides/12-branching-and-releases.md](guides/12-branching-and-releases.md).

## Module quick links

| MOD | Map | Reference |
|-----|-----|-----------|
| MOD-01 Core | [MOD-01](modules/MOD-01-core-and-access.md) | [core/](reference/backend/modules/core/) |
| MOD-02 Experience | [MOD-02](modules/MOD-02-experience-studio.md) | [experience/](reference/backend/modules/experience/) |
| MOD-03 People | [MOD-03](modules/MOD-03-people.md) | [people/](reference/backend/modules/people/) |
| MOD-04 Projects | [MOD-04](modules/MOD-04-projects.md) | [projects/](reference/backend/modules/projects/) |
| MOD-05 Work | [MOD-05](modules/MOD-05-work.md) | [work/](reference/backend/modules/work/) |
| MOD-06 Workflows | [MOD-06](modules/MOD-06-workflows.md) | [workflows/](reference/backend/modules/workflows/) |

See [modules/](modules/) for MOD-07–MOD-13.

## ADRs

Architecture decisions: [adr/](adr/README.md).
