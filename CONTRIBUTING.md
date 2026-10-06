# Contributing to WorkCrate

Thank you for your interest in WorkCrate. This project is [MIT licensed](LICENSE).

## Code of conduct

Participation is governed by our [Code of Conduct](CODE_OF_CONDUCT.md).

## Prerequisites

- [Go](https://go.dev/) **1.27.1+**
- [Node.js](https://nodejs.org/) **24.21+**

Pinned versions: [docs/architecture/overview/stack.md](docs/architecture/overview/stack.md).

## Getting started

1. Clone the repository and create a branch from **`dev`**.
2. Copy environment templates and adjust as needed:
   - `apps/backend/.env.template` → `.env.development` and/or `.env.production`
   - `apps/frontend/.env.template` → `.env.development` and/or `.env.production`
3. Prefer repo scripts for local runs: see [README — Scripts](README.md#scripts).

## Branches and pull requests

| Branch | Use |
|--------|-----|
| **`dev`** | Default integration branch. Open **feature PRs here** (`your-branch` → `dev`). |
| **`main`** | Release line. Updated via **`dev` → `main`** release PRs when publishing a new version—not for routine feature work. |

Full workflow: [branching and releases](docs/architecture/guides/12-branching-and-releases.md).

## Before you open a pull request

From `apps/backend`:

```bash
go mod download
go build ./...
go test ./...
```

From `apps/frontend`:

```bash
npm ci
npm test
npm run build
```

Or from the repo root: `bash scripts/unix/test.sh` / `scripts/windows/test.ps1`.

Target **`dev`** unless you are preparing a release merge to **`main`**. CI runs the same checks on pull requests to both branches (see [.github/workflows/ci.yml](.github/workflows/ci.yml)).

## How we work

| Topic | Guide |
|-------|--------|
| Product behavior | [Use cases](docs/usecases/README.md) (`SCN-*` scenarios) |
| Architecture | [docs/architecture/README.md](docs/architecture/README.md) |
| Engineering principles | [engineering principles](docs/architecture/overview/engineering-principles.md) |
| Code layout | [contributor code flow](docs/architecture/guides/11-contributor-code-flow.md) |
| Branches & releases | [branching and releases](docs/architecture/guides/12-branching-and-releases.md) |
| Decisions | [ADRs](docs/architecture/adr/README.md) |

- **Product or API changes:** tie work to an existing or new `SCN-*` scenario when possible.
- **Architecture changes:** add or update an ADR when the decision is non-trivial.
- **Docs-only PRs** are welcome; keep scope focused.

## Security

Do not open public issues for security vulnerabilities. See [SECURITY.md](SECURITY.md).

## Questions

See [SUPPORT.md](SUPPORT.md).
