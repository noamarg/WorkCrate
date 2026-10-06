# Engineering principles

## Non-negotiables

1. **One function, one job** - see [single-responsibility](../patterns/single-responsibility.md).
2. **One file, one concern** - see [file-and-package-boundaries](../patterns/file-and-package-boundaries.md).
3. **Deep folders** - ≤7 siblings per directory; ≤5 `.go` files per package.
4. **N-tier imports** - domain imports nothing external; handlers contain no SQL.
5. **MOD boundaries** - no cross-import of another module's `domain` or `infra`.

## Traceability

- Use case folder name ↔ **SCN-*** ID in reference doc header.
- Module map links reference root for each MOD.

## OSS review

- PRs that add god files or skip tiers are rejected.
- Generated code (sqlc, OpenAPI) excluded from line limits.

## Contributor entry

[guides/11-contributor-code-flow.md](../guides/11-contributor-code-flow.md)
