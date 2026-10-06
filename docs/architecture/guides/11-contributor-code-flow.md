# Contributor code flow

Branch from **`dev`** and open PRs into **`dev`**. Releases use **`dev` → `main`**: [12-branching-and-releases.md](12-branching-and-releases.md).

## Steps

1. Pick **SCN-*** from [use cases](../../usecases/README.md).
2. Open [module map](../modules/) for the MOD (e.g. MOD-05 → `apps/backend/internal/work/`).
3. Open [reference/backend/modules/](../reference/backend/modules/) for exact folders.
4. Trace: `presentation/http/<action>/handler.go` → `application/<use_case>/use_case.go` → `domain/port` → `infra/postgres`.

## Request path

```
HTTP → chi router → handler → UseCase.Execute → Repository (port) → sqlc adapter
```

## Adding a feature

1. Add domain port/entity if needed (new file, one concern).
2. Add `application/<new_use_case>/` with `use_case.go`, `input.go`, `output.go`, `validate.go`.
3. Add `presentation/http/<action>/` trio of files.
4. Register route in `routes.go` only.
5. Update reference markdown for your paths.

## Rules

[engineering-principles](../overview/engineering-principles.md), [single-responsibility](../patterns/single-responsibility.md).
