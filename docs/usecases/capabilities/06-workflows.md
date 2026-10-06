# MOD-06 - Workflows

**Module ID:** MOD-06  
**Catalog toggle:** Yes  
**Status:** draft

## At a glance

- Custom statuses and boards per project or team.
- Approval chains on transitions or fields.
- Intake forms and automation rules.

## Problems it solves

Different teams need different processes without forking the product.

## Who uses it

| Persona | Typical need |
|---------|----------------|
| Operations | Approvals and routing |
| Legal/compliance coordinator | Review gates |
| PM | Board columns |

## Scenario index

| ID | Title | Summary | Priority |
|----|-------|---------|----------|
| [SCN-WF-001](../scenarios/workflows/SCN-WF-001-statuses-boards-approvals.md) | Boards and approvals | Status workflows | MVP |
| [SCN-WF-002](../scenarios/workflows/SCN-WF-002-intake-forms-automations.md) | Forms and automations | Intake, triggers | v1 |

## Dependencies

MOD-05.

## Non-goals

Full iPaaS; arbitrary code in automations (use webhooks).
