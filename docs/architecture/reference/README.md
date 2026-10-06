# Code reference

Mirrors the **`apps/`** layout. **≤7 siblings** per directory.

## Apps

| App | Doc index | Code root |
|-----|-----------|-----------|
| **Backend** | [backend/cmd/](backend/cmd/), [backend/platform/](backend/platform/), [backend/modules/](backend/modules/) | `apps/backend/` |
| **Frontend** | [web/](web/) (path inventories) | `apps/frontend/` |
| **Shared** | OpenAPI under `apps/shared/openapi/` | `apps/shared/` |

## Path convention

- **Path** columns use full repo paths (`apps/backend/internal/...`, `apps/frontend/src/...`).
- Backend-only snippets may be labeled *relative to backend app root* (`apps/backend/internal/<mod>/...` ≡ under `apps/backend/`).

Repository overview: [guides/02-repository-layout.md](../guides/02-repository-layout.md).

Template: [_template/path-inventory.md](_template/path-inventory.md).
