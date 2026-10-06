# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html) once we reach 1.0.

**Branches:** work merges to **`dev`**; **`[Unreleased]`** tracks changes not yet in a tagged release on **`main`**. Release PRs (`dev` → `main`) finalize version sections and tags. See [branching and releases](docs/architecture/guides/12-branching-and-releases.md).

**`main` is currently released at [0.0.1]** (tag `v0.0.1`, 2026-10-06).

## [Unreleased]

## [0.0.1] - 2026-10-06

### Added

- **Documentation** — Product use cases, architecture guides (including repository layout and branching), ADRs, and code reference inventories under `docs/`.
- **Backend** — Go API and worker entrypoints, platform config and HTTP router (`/health`), tests; `db/migrations/` placeholder for Goose.
- **Frontend** — React 19 + Vite 6 app (`src/main.tsx`, `src/app/`), Vitest and React Testing Library, production build via `tsc` + Vite.
- **Shared contracts** — `apps/shared/openapi/` placeholder for OpenAPI 3.1 ([ADR-007](docs/architecture/adr/ADR-007-openapi.md)).
- **Local tooling** — Cross-platform scripts (`dev`, `build`, `start`, `test`) under `scripts/unix` and `scripts/windows`; per-app `.env.template` files.
- **CI** — GitHub Actions workflow for `go test` / `go build` and `npm ci` / `test` / `build` on `main` and `dev`.
- **Community** — MIT license, CONTRIBUTING, Code of Conduct, SECURITY, SUPPORT, CHANGELOG, issue templates, and PR templates (feature → `dev`, release → `main`).
- **Dependency automation** — Dependabot for `apps/frontend` (npm) and `apps/backend` (gomod), targeting `dev`.
- **Branching model** — `dev` as integration branch, `main` as release line; documented in [12-branching-and-releases.md](docs/architecture/guides/12-branching-and-releases.md) with aligned README and CONTRIBUTING.

[Unreleased]: https://github.com/noamarg/WorkCrate/compare/v0.0.1...HEAD
[0.0.1]: https://github.com/noamarg/WorkCrate/releases/tag/v0.0.1
