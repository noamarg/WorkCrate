# Single responsibility (functions)

- Each function does **one** observable thing; name is a verb phrase.
- Target **≤ 40 lines**; split or justify above **60 lines**.
- Handlers: decode → use case → respond (three steps, three functions/files ok).

Banned names as catch-alls: `Process`, `Handle`, `Manage`, `DoWork`.
