# Identity provider port

## Port (`apps/backend/internal/platform/authn`)

```go
type IdentityProvider interface {
    ValidateBearerToken(ctx context.Context, raw string) (AuthenticatedPrincipal, error)
}
```

`AuthenticatedPrincipal`: `Subject`, `Email`, `Groups []string` (mapping hints only).

## Adapters

| Provider | Package | Status |
|----------|---------|--------|
| Authentik | `authn/authentik/` | Reference - dev Compose |
| Keycloak | `authn/keycloak/` | Future - same port |

Shared OIDC: `authn/oidc/` (JWKS, issuer validation).

## Rules

- Feature modules import **only** `IdentityProvider`, never Authentik/Keycloak SDKs.
- RBAC remains in WorkCrate (`authz`), not in IdP.

See [guides/03-security-and-tenancy.md](../guides/03-security-and-tenancy.md), [ADR-004](../adr/ADR-004-oidc-authentik.md).
