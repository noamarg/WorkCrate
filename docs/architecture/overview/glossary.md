# Architecture glossary

| Term | Meaning |
|------|---------|
| **Tier** | presentation, application, domain, infrastructure |
| **Port** | Interface in domain; implemented in infra |
| **Use case** | Application service with `Execute`; maps to SCN slice |
| **MOD-** | Product module (catalog); maps to `apps/backend/internal/<modslug>/` |
| **Tenant** | Organization scope; on context for every request |
| **IdentityProvider** | Platform port for OIDC (Authentik now, Keycloak later) |
| **Experience config** | Published nav/layout/profile JSON (MOD-02) |
| **Reference** | `docs/architecture/reference/` path inventories |

See also [use case glossary](../../usecases/overview/glossary.md).
