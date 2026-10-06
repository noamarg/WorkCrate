# File and package boundaries

| Rule | Limit |
|------|--------|
| Lines per file | ≤150 target; split mandatory >200 (except generated) |
| Siblings per directory | ≤7 |
| `.go` files per package dir | ≤5 |
| Use cases under `application/` | **folders only**, never flat `.go` list |

Banned: `apps/backend/internal/util`, `apps/backend/internal/common`, `apps/backend/internal/helpers`.
