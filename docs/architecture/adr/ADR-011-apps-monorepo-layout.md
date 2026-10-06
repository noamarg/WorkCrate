# ADR 011 apps monorepo layout

## Context

WorkCrate needs a clear place for the Go API, React client, and shared HTTP contracts as implementation begins.

## Decision

Host runnable code under **`apps/`**:

- **`apps/backend`** — Go modular monolith (`cmd`, `internal`, `db/migrations` under that app)
- **`apps/frontend`** — React web client (`src`, feature folders)
- **`apps/shared`** — cross-app artifacts (OpenAPI 3.1 in `openapi/`; room for shared generated types)

`docs/` remains the home for use cases and architecture. ADRs, guides, and reference inventories use **repo-relative** paths prefixed with `apps/…` unless explicitly relative to a single app root.

## Consequences

- Deployments build from `apps/backend/cmd/*` and `apps/frontend/` rather than repo-root `cmd/` and `web/`.
- OpenAPI lives in `apps/shared/openapi/` (replacing the earlier conceptual `api/openapi/` layout).
- Reference markdown under `docs/architecture/reference/` stays in place; only documented paths change.

## See also

[guides/02-repository-layout.md](../guides/02-repository-layout.md)
