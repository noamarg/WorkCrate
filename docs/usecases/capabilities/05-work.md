# MOD-05 - Work

**Module ID:** MOD-05  
**Catalog toggle:** Yes  
**Status:** draft

## At a glance

- Single **work item** type with subtypes: task, bug, ticket, request.
- Create, assign, triage; dependencies; personal inbox; recurring work.
- Bulk import, export, migration.

## Problems it solves

Universal “unit of work” across job titles-developers, support, ops, and PMs share one model.

## Who uses it

| Persona | Typical need |
|---------|----------------|
| Everyone | My Work, assignments |
| Support | Tickets as work items |
| Engineer | Bugs and tasks |

## Admin configuration

- **Catalog:** almost always on when Projects is on.
- **Experience Studio:** hide subtypes or fields per profile.

## Scenario index

| ID | Title | Summary | Priority |
|----|-------|---------|----------|
| [SCN-WORK-001](../scenarios/work/SCN-WORK-001-create-assign-triage.md) | Create and triage | Assign, prioritize | MVP |
| [SCN-WORK-002](../scenarios/work/SCN-WORK-002-dependencies-inbox-recurring.md) | Dependencies and inbox | Blockers, recurrence | MVP |
| [SCN-WORK-003](../scenarios/work/SCN-WORK-003-bulk-import-export.md) | Import/export | CSV, migration | v1 |

## Dependencies

MOD-04.

## Non-goals

Separate issue tracker product parallel to work items.
