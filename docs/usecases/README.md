# WorkCrate use cases

Documentation for **WorkCrate**, an open-source work OS. Read in three layers:

| Layer | Location | For |
|-------|----------|-----|
| **1. Capability guides** | [capabilities/](capabilities/) | Everyone - what each of the 13 modules does |
| **2. Scenarios** | [scenarios/](scenarios/) | PM, design, engineering - full flows and acceptance criteria |
| **3. Personas** | [personas/](personas/) | Role-based journeys linking to scenarios |

**Foundation:** [overview/](overview/) - vision, feature map, glossary, [admin modularity](overview/admin-modularity.md).

**Industry starters:** [presets/](presets/) - construction, healthcare, education, retail, legal, nonprofit (not extra modules).

**Architecture:** [architecture/README.md](../architecture/README.md) - Go N-tier layout, stack, and [code reference](../architecture/reference/README.md).

## How to read

1. Start with [vision and principles](overview/vision-and-principles.md).
2. Pick a [capability guide](capabilities/) for the module you care about.
3. Open linked **SCN-*** scenarios for implementation detail.
4. Or start from [personas/README.md](personas/README.md) for your job family.

## Master scenario index (37 scenarios)

| ID | Title | Module | Path |
|----|-------|--------|------|
| SCN-CORE-001 | Workspace, tenancy, and organization bootstrap | MOD-01 | [core](scenarios/core/SCN-CORE-001-workspace-and-tenancy.md) |
| SCN-CORE-002 | Roles, permissions, departments, and guest access | MOD-01 | [core](scenarios/core/SCN-CORE-002-roles-permissions-guests.md) |
| SCN-CORE-003 | Collaboration | MOD-01 | [core](scenarios/core/SCN-CORE-003-collaboration.md) |
| SCN-CORE-004 | Compliance | MOD-01 | [core](scenarios/core/SCN-CORE-004-compliance.md) |
| SCN-CORE-005 | Insights | MOD-01 | [core](scenarios/core/SCN-CORE-005-insights.md) |
| SCN-CORE-006 | Platform | MOD-01 | [core](scenarios/core/SCN-CORE-006-platform.md) |
| SCN-EXP-001 | Module catalog | MOD-02 | [experience](scenarios/experience/SCN-EXP-001-module-catalog.md) |
| SCN-EXP-002 | Navigation and page visibility | MOD-02 | [experience](scenarios/experience/SCN-EXP-002-navigation-and-page-visibility.md) |
| SCN-EXP-003 | Page layouts and experience profiles | MOD-02 | [experience](scenarios/experience/SCN-EXP-003-page-layouts-and-profiles.md) |
| SCN-EXP-004 | Setup wizard, presets, publish | MOD-02 | [experience](scenarios/experience/SCN-EXP-004-setup-wizard-presets-publish.md) |
| SCN-PEO-001 | Team membership and ownership | MOD-03 | [people](scenarios/people/SCN-PEO-001-team-membership.md) |
| SCN-PEO-002 | Profiles, skills, onboarding, offboarding | MOD-03 | [people](scenarios/people/SCN-PEO-002-profiles-onboarding.md) |
| SCN-PEO-003 | Availability and scheduling | MOD-03 | [people](scenarios/people/SCN-PEO-003-availability.md) |
| SCN-PROJ-001 | Project lifecycle and templates | MOD-04 | [projects](scenarios/projects/SCN-PROJ-001-project-lifecycle.md) |
| SCN-PROJ-002 | Portfolios, programs, milestones | MOD-04 | [projects](scenarios/projects/SCN-PROJ-002-portfolios-milestones.md) |
| SCN-PROJ-003 | Client portals | MOD-04 | [projects](scenarios/projects/SCN-PROJ-003-client-portals.md) |
| SCN-WORK-001 | Create, assign, triage work items | MOD-05 | [work](scenarios/work/SCN-WORK-001-create-assign-triage.md) |
| SCN-WORK-002 | Dependencies, inbox, recurring work | MOD-05 | [work](scenarios/work/SCN-WORK-002-dependencies-inbox-recurring.md) |
| SCN-WORK-003 | Bulk import, export, migration | MOD-05 | [work](scenarios/work/SCN-WORK-003-bulk-import-export.md) |
| SCN-WF-001 | Statuses, boards, approvals | MOD-06 | [workflows](scenarios/workflows/SCN-WF-001-statuses-boards-approvals.md) |
| SCN-WF-002 | Intake forms and automations | MOD-06 | [workflows](scenarios/workflows/SCN-WF-002-intake-forms-automations.md) |
| SCN-PLAN-001 | OKRs and team goals | MOD-07 | [planning](scenarios/planning/SCN-PLAN-001-okrs.md) |
| SCN-PLAN-002 | Roadmaps and quarterly planning | MOD-07 | [planning](scenarios/planning/SCN-PLAN-002-roadmaps-quarterly.md) |
| SCN-TIME-001 | Time tracking and timesheets | MOD-08 | [time](scenarios/time/SCN-TIME-001-tracking-timesheets.md) |
| SCN-TIME-002 | Capacity and workload | MOD-08 | [time](scenarios/time/SCN-TIME-002-capacity-workload.md) |
| SCN-KNW-001 | Repository and wiki | MOD-09 | [knowledge](scenarios/knowledge/SCN-KNW-001-repository-wiki.md) |
| SCN-KNW-002 | Meeting notes and decisions | MOD-09 | [knowledge](scenarios/knowledge/SCN-KNW-002-meeting-notes-decisions.md) |
| SCN-DLV-001 | Engineering delivery sub-pack | MOD-10 | [delivery](scenarios/delivery/SCN-DLV-001-engineering.md) |
| SCN-DLV-002 | Design sub-pack | MOD-10 | [delivery](scenarios/delivery/SCN-DLV-002-design.md) |
| SCN-DLV-003 | Marketing sub-pack | MOD-10 | [delivery](scenarios/delivery/SCN-DLV-003-marketing.md) |
| SCN-REV-001 | Accounts, contacts, activity | MOD-11 | [revenue](scenarios/revenue/SCN-REV-001-accounts-contacts.md) |
| SCN-REV-002 | Pipeline and quotes | MOD-11 | [revenue](scenarios/revenue/SCN-REV-002-pipeline-quotes.md) |
| SCN-SVC-001 | Tickets, SLA, escalation | MOD-12 | [service](scenarios/service/SCN-SVC-001-tickets-sla.md) |
| SCN-SVC-002 | Knowledge base deflection | MOD-12 | [service](scenarios/service/SCN-SVC-002-kb-deflection.md) |
| SCN-BIZ-001 | Finance sub-pack | MOD-13 | [business](scenarios/business/SCN-BIZ-001-finance.md) |
| SCN-BIZ-002 | HR sub-pack | MOD-13 | [business](scenarios/business/SCN-BIZ-002-hr.md) |
| SCN-BIZ-003 | Operations sub-pack | MOD-13 | [business](scenarios/business/SCN-BIZ-003-operations.md) |

## Module quick links

| Module | Guide |
|--------|-------|
| MOD-01 Core & access | [01-core-and-access.md](capabilities/01-core-and-access.md) |
| MOD-02 Experience studio | [02-experience-studio.md](capabilities/02-experience-studio.md) |
| MOD-03 People | [03-people.md](capabilities/03-people.md) |
| MOD-04 Projects | [04-projects.md](capabilities/04-projects.md) |
| MOD-05 Work | [05-work.md](capabilities/05-work.md) |
| MOD-06 Workflows | [06-workflows.md](capabilities/06-workflows.md) |
| MOD-07 Planning | [07-planning.md](capabilities/07-planning.md) |
| MOD-08 Time | [08-time.md](capabilities/08-time.md) |
| MOD-09 Knowledge | [09-knowledge.md](capabilities/09-knowledge.md) |
| MOD-10 Delivery packs | [10-delivery-packs.md](capabilities/10-delivery-packs.md) |
| MOD-11 Revenue | [11-revenue.md](capabilities/11-revenue.md) |
| MOD-12 Service | [12-service.md](capabilities/12-service.md) |
| MOD-13 Business | [13-business.md](capabilities/13-business.md) |
