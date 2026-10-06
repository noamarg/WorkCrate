# Dependency rules

## Allowed import direction

```
presentation → application → domain
infrastructure → domain
platform ← (all tiers may use platform)
```

## Forbidden

- `domain` → `infra`, `presentation`, `application`
- `application` → `infra`, `presentation`
- `presentation` → `infra` (except via interfaces wired in `platform/wiring`)
- `apps/backend/internal/work` → `apps/backend/internal/projects/domain` (use application API or events)

## Module coupling

- Shared kernel: `apps/backend/internal/platform/`, `apps/backend/internal/experience/` (resolution only for cross-cutting UI config).
- Prefer in-process domain events over direct calls across MOD packages.

## Future enforcement

- `go-arch-lint` or depguard in CI matching this document.
- Reference paths must match [reference/README.md](../reference/README.md).
