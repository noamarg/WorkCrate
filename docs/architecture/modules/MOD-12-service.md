# MOD-12 - Service

**Package root:** `apps/backend/internal/service/`  
**Capability guide:** [12-service.md](../../usecases/capabilities/12-service.md)  
**Reference:** [../reference/backend/modules/service/README.md](../reference/backend/modules/service/README.md)  
**Phase:** v1

## Scenarios

- SCN-SVC-001
- SCN-SVC-002

## Layers

`domain/`, `application/<use_case>/`, `presentation/http/<action>/`, `infra/postgres/`.

## Jobs

River queue types prefixed `service.`.
