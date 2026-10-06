# Repository port

Define in `domain/port/<aggregate>_repository.go`.

Typical methods: `Save`, `GetByID`, `List` with [pagination](generic-pagination.md).

Implementations live in `infra/postgres/<aggregate>/` only.
