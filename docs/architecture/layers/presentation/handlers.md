# Presentation: handlers

HTTP handlers in `apps/backend/internal/<mod>/presentation/http/<action>/`.

- `handler.go` - decode, call use case, write status
- `request.go` - decode body/query
- `response.go` - map output DTO to JSON

One HTTP action per folder. No SQL or business rules.
