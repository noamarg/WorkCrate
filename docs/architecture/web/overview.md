# Web: overview

React 19 + Vite 6 + TanStack Query (target stack; see [stack.md](../overview/stack.md)).

## Layout

- **Bootstrap:** `src/main.tsx` (entry), `src/app/` (shell, providers, routing).
- **Features:** `src/features/<mod>/` per product module as MOD UI is implemented.
- **Shared:** `src/styles/`, `src/types/`, `src/test/` (Vitest setup).

Feature-folder conventions and reference inventories: [reference/web/README.md](../reference/web/README.md).
