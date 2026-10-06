## Release summary

<!-- Version being released, e.g. 0.0.2 -->

**Base:** **`dev`** → **`main`**

## Version

- [ ] [CHANGELOG.md](../../CHANGELOG.md) updated (move `[Unreleased]` into a dated version section, or finalize the new version block)
- [ ] Version bump in [apps/frontend/package.json](../../apps/frontend/package.json) if applicable
- [ ] Tag to create after merge: `v<!-- x.y.z -->`

## Test plan

- [ ] `cd apps/backend && go build ./... && go test ./...`
- [ ] `cd apps/frontend && npm ci && npm test && npm run build`
- [ ] CI green on this PR

## Post-merge

- [ ] Create GitHub **release** from the tag on **`main`**
- [ ] Confirm **`dev`** is ready for the next integration cycle (sync from `main` if your process requires it)

## Checklist

- [ ] This PR is **`dev` → `main`** only (no feature scope mixed in without review)
- [ ] [Branching and releases](../../docs/architecture/guides/12-branching-and-releases.md) followed
