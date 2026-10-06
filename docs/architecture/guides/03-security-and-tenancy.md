# Security and tenancy

## Tenancy

- Every query scoped by `org_id` / tenant from context (`platform/tenant`).
- Optional Postgres RLS in v1; application checks mandatory regardless.

## Authentication

- **Reference IdP:** [Authentik](https://goauthentik.io/) in dev Compose.
- API validates bearer tokens via [IdentityProvider port](../patterns/identity-provider-port.md).
- **Keycloak:** future second adapter; same port and env contract (`OIDC_ISSUER`, `OIDC_CLIENT_ID`).

## Authorization

- WorkCrate RBAC in database - not Authentik roles as source of truth.
- Guests: restricted profile + SCN-CORE-002, SCN-PROJ-003.

## Secrets

- Never commit secrets; use env / secret store in production.
