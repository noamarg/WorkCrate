# Repository Layout

Runnable applications live under **`apps/`**. Product and architecture specs stay in **`docs/`**.

## Top-level tree

```
workcrate/
├── apps/
│   ├── backend/          # Go modular monolith (API + worker)
│   ├── frontend/         # React / Vite web client
│   └── shared/           # Cross-app contracts (OpenAPI, generated types later)
├── docs/
│   ├── usecases/
│   └── architecture/
├── scripts/
│   ├── unix/             # dev.sh, build.sh, start.sh, test.sh + helpers/
│   └── windows/          # dev.ps1, build.ps1, start.ps1, test.ps1 + helpers/
├── LICENSE
└── README.md
```

## `apps/backend`

| Path | Purpose |
|------|---------|
| `apps/backend/cmd/api/` | HTTP API entrypoint (`main`) |
| `apps/backend/cmd/worker/` | River background worker |
| `apps/backend/internal/platform/` | Shared platform (config, HTTP router) |
| `apps/backend/internal/<mod>/` | MOD packages (domain, application, presentation, infra) |
| `apps/backend/db/migrations/` | Goose SQL migrations (see README in that folder) |

Go module root (`github.com/noamarg/workcrate/apps/backend`): `go run ./cmd/api` from `apps/backend/`.

## `apps/frontend`

| Path | Purpose |
|------|---------|
| `apps/frontend/src/main.tsx` | Vite entry |
| `apps/frontend/src/app/` | App shell, providers, routing (bootstrap) |
| `apps/frontend/src/features/<mod>/` | Per-MOD features (added as modules land) |
| `apps/frontend/src/styles/` | Global styles |
| `apps/frontend/src/types/` | Ambient / env types |
| `apps/frontend/src/test/` | Vitest setup |

Prefer repo scripts for local runs: [README — Scripts](../../../README.md#scripts). For manual commands from `apps/frontend/`, use **`npm ci`** then `npm run dev`, `npm test`, or `npm run build` (Node 24.21+; matches CI and [CONTRIBUTING.md](../../../CONTRIBUTING.md)).

Frontend architecture notes: [web/overview.md](../web/overview.md).

## `apps/shared`

| Path | Purpose |
|------|---------|
| `apps/shared/openapi/` | OpenAPI 3.1 source of truth ([ADR-007](../adr/ADR-007-openapi.md)); see README in that folder |

Backend implements the spec; frontend consumes it (generated or hand-written clients).

## Path convention in docs

Use **repo-relative** paths in guides, module maps, patterns, and reference inventories—for example `apps/backend/internal/work/presentation/http/create/handler.go`.

When a doc says **relative to backend app root**, paths omit the `apps/backend/` prefix (e.g. `internal/work/`).

Details: [reference/README.md](../reference/README.md), [ADR-011](../adr/ADR-011-apps-monorepo-layout.md).

See [overview](../overview/engineering-principles.md).
