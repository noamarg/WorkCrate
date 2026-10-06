# Branching and releases

## Branches

| Branch | Role |
|--------|------|
| **`dev`** | Integration branch. All feature work merges here via pull request. |
| **`main`** | Release line. Reflects tagged versions; receives periodic merges from `dev` when cutting a release. |

```mermaid
flowchart LR
  featureBranches[feature branches] -->|PR| dev[dev]
  dev -->|release PR| main[main]
  main -->|tag| release[GitHub release]
```

## Day-to-day development

1. Branch from **`dev`** (keep names short and descriptive, e.g. `feature/scn-042-work-list`).
2. Open a pull request **into `dev`** when ready.
3. CI must pass (see [.github/workflows/ci.yml](../../../.github/workflows/ci.yml)).
4. After review, merge to `dev`. Dependabot dependency PRs also target **`dev`** ([dependabot.yml](../../../.github/dependabot.yml)).

Do not open routine feature PRs directly to `main`.

## Initial repository bootstrap

The **first** publish is a one-time exception:

1. Commit the initial tree directly to **`main`**.
2. Tag **`v0.0.1`** on that commit.
3. Create **`dev`** from the same commit so integration and release lines start aligned.

After bootstrap, use the normal flow: features → **`dev`**, releases → **`main`**.

## Releases

When maintainers cut a new version (e.g. `0.0.2`):

1. On **`dev`**, ensure [CHANGELOG.md](../../../CHANGELOG.md) `[Unreleased]` (or the new version section) is complete.
2. Open a pull request **`dev` → `main`** (use the [release PR template](../../../.github/PULL_REQUEST_TEMPLATE/release.md) on GitHub).
3. After merge to **`main`**, tag the release (e.g. `v0.0.2`) and publish a GitHub release from that tag.
4. Keep **`dev`** as the integration branch for the next cycle (merge or re-sync `main` into `dev` if your process requires a fast-forward alignment).

Version numbering follows [version-policy.md](../overview/version-policy.md) and [CHANGELOG](../../../CHANGELOG.md).

## Security fixes

Report via [SECURITY.md](../../../SECURITY.md). Fixes land on **`dev`** first, then ship to **`main`** with the next release PR (or an expedited `dev` → `main` release if severity warrants).

## Related

- [CONTRIBUTING.md](../../../CONTRIBUTING.md)
- [11-contributor-code-flow.md](11-contributor-code-flow.md)
