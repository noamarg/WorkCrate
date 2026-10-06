# MOD-03 - People

**Module ID:** MOD-03  
**Catalog toggle:** Yes (recommended on for most orgs)  
**Status:** draft

## At a glance

- Teams and membership, owners, and roster views.
- Member profiles, skills, onboarding/offboarding checklists.
- Availability and scheduling signals for planning and assignment.

## Problems it solves

Work is assigned to people; managers need to know who is on which team and who is available without a separate HR directory for day-to-day delivery.

## Who uses it

| Persona | Typical need |
|---------|----------------|
| Engineering manager | Team roster, capacity hints |
| HR (Business sub-pack) | Onboarding lists (lightweight) |
| PM | Assign work to teams |

## Admin configuration

- **Catalog:** enable People for internal orgs; freelancers may use minimal roster.
- **Typical profiles:** `Default`, `Manager` (see team admin sections).

## Scenario index

| ID | Title | Summary | Priority |
|----|-------|---------|----------|
| [SCN-PEO-001](../scenarios/people/SCN-PEO-001-team-membership.md) | Team membership | Create teams, owners | MVP |
| [SCN-PEO-002](../scenarios/people/SCN-PEO-002-profiles-onboarding.md) | Profiles and onboarding | Skills, checklists | v1 |
| [SCN-PEO-003](../scenarios/people/SCN-PEO-003-availability.md) | Availability | PTO overlays, working hours | v1 |

## Dependencies

MOD-01, MOD-04 for project teams.

## Non-goals

Full HRIS, payroll, org chart succession planning.
