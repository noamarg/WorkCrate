# Stack and pinned versions

Baseline: **October 2026**. See [version-policy.md](version-policy.md) for bumps.

## Pinned compatibility matrix

| Component | Pinned version | Notes |
|-----------|----------------|-------|
| Go toolchain | **1.27.1** | `go` directive `1.27.1`; 1.27.x patches |
| Node.js | **24.21.0** (Active LTS) | `engines` in web |
| PostgreSQL | **18.6** | Same major for app + River + migrations |
| Redis | **7.4.6** (or latest 7.4.x) | Cache + pub/sub |
| chi | **v5.2.x** | HTTP router |
| pgx | **v5.7.x** | Postgres driver (infra only) |
| sqlc | **1.30.x** | Query codegen |
| goose | **v3.26.x** | SQL migrations |
| River | **v0.23.x** | Background jobs |
| oapi-codegen | **v2.5.x** | Go from OpenAPI |
| React | **19.1.x** | UI |
| React DOM | **19.1.x** | Match React |
| TypeScript | **5.9.x** | `strict` |
| Vite | **6.3.x** | Bundler |
| TanStack Query | **5.90.x** | Server state |
| TanStack Router | **1.132.x** | Optional lazy MOD routes |
| MinIO | **RELEASE.2025-09-07**+ | Dev / self-host S3 |
| **Authentik** | **2025.10.x** | Reference IdP; dev Compose only |
| Keycloak | **26.3.x** | Future adapter; not default Compose |

## Identity

- **Reference:** [Authentik](https://goauthentik.io/) via [identity-provider-port](../patterns/identity-provider-port.md).
- **Future:** Keycloak behind the same `IdentityProvider` port.

## Related

- [guides/08-deployment.md](../guides/08-deployment.md) - image tags
- [data/postgres.md](../data/postgres.md)
