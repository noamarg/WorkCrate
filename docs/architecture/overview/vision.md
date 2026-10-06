# Technical vision

WorkCrate is an open-source work OS: multi-tenant, modular (13 product modules), admin-controlled UI (Experience Studio).

## Technical goals

1. **Modular monolith** - one deployable API + worker; boundaries match MOD-01–MOD-13.
2. **N-tier clarity** - presentation → application → domain ← infrastructure; contributors trace any HTTP call in minutes.
3. **Small units** - one function, one job; one file, one concern; deep folders (≤7 siblings per directory).
4. **Contract-first HTTP** - OpenAPI 3.1; web client generated from the same spec.
5. **Identity outside the app** - Authentik (reference OIDC); WorkCrate owns RBAC and tenancy.

Aligned with [product vision](../../usecases/overview/vision-and-principles.md).

## Non-goals (v1)

- Microservices per product module
- IdP-managed fine-grained permissions
- Custom page builder runtime
