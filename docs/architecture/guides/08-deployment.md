# Deployment

## Local apps (current)

Entry scripts under `scripts/unix/` (Linux, macOS) and `scripts/windows/`: **dev** (API + Vite), **build** (binaries + `dist/`), **start** (run built API + Vite preview). See [README](../../../README.md#scripts). Docker Compose for Postgres/Redis/Authentik is planned; not wired to these scripts yet.

## Dev Compose (pinned images)

| Service | Image tag |
|---------|-----------|
| PostgreSQL | `postgres:18.6` |
| Redis | `redis:7.4.6` |
| MinIO | `minio/minio:RELEASE.2025-09-07` (or newer 2025+ tag) |
| Authentik | `ghcr.io/goauthentik/server:2025.10` (matching [stack](../overview/stack.md)) |

**Not in default Compose:** Keycloak (add when adapter ships).

## Processes

- `apps/backend/cmd/api` - HTTP API
- `apps/backend/cmd/worker` - River jobs

## Migrations

`goose` against Postgres before starting new API version.

See [stack](../overview/stack.md) for full matrix.
