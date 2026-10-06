# Version policy

Release versions are tagged on **`main`** after a **`dev` → `main`** pull request. Day-to-day work merges to **`dev`**. See [guides/12-branching-and-releases.md](../guides/12-branching-and-releases.md).

## Principles

- **Pin** versions in [stack.md](stack.md); no floating `latest` in production.
- **Patch** bumps: monthly or on security CVE.
- **Minor** bumps: PR + update stack.md + CI matrix.
- **Major** (Go minor, Postgres major, Node LTS): ADR required.

## Rules

- One **PostgreSQL major** across API, River, and migrations.
- **pnpm-lock.yaml** required for web; grouped Renovate updates.
- Docker images: `postgres:18.6`, not `postgres:18` or `latest`.
- CI uses the same pins as stack.md.

## Optional upgrades

- **Node 26 LTS** (after Oct 2026): document in stack when adopted.
- **PostgreSQL 19**: after GA + one patch release; migration ADR.

## Go modules

- Toolchain in `go.mod`: `go 1.27.1`
- sqlc, goose pinned via `tools.go` or CI install script.
