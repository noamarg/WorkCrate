# WorkCrate

**WorkCrate** is an open-source, all-in-one workspace for running work: teams, projects, tasks, and everything in between. Admins enable **13 product modules**, tailor the UI with **Experience Studio**, and assign **experience profiles** so each role sees only what they need.

Product behavior, architecture, and contributor guidance live under [`docs/`](docs/). Runnable code lives under [`apps/`](apps/) (backend, frontend, shared contracts). Repository layout: [docs/architecture/guides/02-repository-layout.md](docs/architecture/guides/02-repository-layout.md).

## Getting started

**Prerequisites:** [Go](https://go.dev/) **1.27.1+** and [Node.js](https://nodejs.org/) **24.21+** — see [stack](docs/architecture/overview/stack.md).

1. Clone the repo, check out **`dev`**, and branch from there for changes (merge via PR into `dev`; releases promote `dev` → `main`—see [CONTRIBUTING.md](CONTRIBUTING.md)).
2. Copy `apps/backend/.env.template` and `apps/frontend/.env.template` to `.env.development` and/or `.env.production` in each app (env files are gitignored; templates are committed).
3. Run **development** via the scripts below (they set `WORKCRATE_ENV` for the API and Vite `--mode` for the web app).

For verification steps before a pull request, see [CONTRIBUTING.md](CONTRIBUTING.md).

## Scripts

Helpers live under `scripts/*/helpers/`.

| Goal | Linux / macOS | Windows |
|------|----------------|---------|
| **Development** | `bash scripts/unix/dev.sh` | `powershell -ExecutionPolicy Bypass -File scripts/windows/dev.ps1` |
| **Build** | `bash scripts/unix/build.sh` | `powershell -ExecutionPolicy Bypass -File scripts/windows/build.ps1` |
| **Start** (built apps) | `bash scripts/unix/start.sh` | `powershell -ExecutionPolicy Bypass -File scripts/windows/start.ps1` |
| **Test** | `bash scripts/unix/test.sh` | `powershell -ExecutionPolicy Bypass -File scripts/windows/test.ps1` |

**Build** writes `apps/backend/bin/` and `apps/frontend/dist/`. **Start** serves the built API and frontend preview; run **build** first.

## Documentation

| Topic | Start here |
|-------|------------|
| **Use cases** (what the product does) | [docs/usecases/README.md](docs/usecases/README.md) |
| **Architecture** (how we build it) | [docs/architecture/README.md](docs/architecture/README.md) |
| **Vision & principles** | [docs/usecases/overview/vision-and-principles.md](docs/usecases/overview/vision-and-principles.md) |
| **Contributor code layout** | [docs/architecture/guides/11-contributor-code-flow.md](docs/architecture/guides/11-contributor-code-flow.md) |

### Use cases (three layers)

1. [Capability guides](docs/usecases/capabilities/) — 13 modules (MOD-01–MOD-13)  
2. [Scenarios](docs/usecases/scenarios/) — `SCN-*` flows and acceptance criteria  
3. [Personas](docs/usecases/personas/) — role-based journeys  

### Architecture (four layers)

1. [Guides](docs/architecture/guides/) — system context, security, deployment, MVP map  
2. [Layers & patterns](docs/architecture/layers/) — N-tier Go backend, SRP conventions  
3. [Module maps](docs/architecture/modules/) — MOD ↔ packages and APIs  
4. [Code reference](docs/architecture/reference/) — folders, files, and functions  

Technology choices and versions: [docs/architecture/overview/stack.md](docs/architecture/overview/stack.md).

## Contributing

| Resource | Link |
|----------|------|
| How to contribute | [CONTRIBUTING.md](CONTRIBUTING.md) |
| Code of conduct | [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md) |
| Security | [SECURITY.md](SECURITY.md) |
| Accessibility | [ACCESSIBILITY.md](ACCESSIBILITY.md) |
| Support | [SUPPORT.md](SUPPORT.md) |
| Changelog | [CHANGELOG.md](CHANGELOG.md) |

Design: [engineering principles](docs/architecture/overview/engineering-principles.md), [contributor code flow](docs/architecture/guides/11-contributor-code-flow.md), [ADRs](docs/architecture/adr/README.md).

## License

[MIT](LICENSE) — see [LICENSE](LICENSE) for the full text.
