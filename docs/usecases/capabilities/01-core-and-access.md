# MOD-01 - Core & access

**Module ID:** MOD-01  
**Catalog toggle:** Always on (visibility via Experience Studio)  
**Status:** draft

## At a glance

- Organization and workspace tenancy, roles, departments, guests.
- Collaboration on any record: comments, @mentions, notifications, activity feed.
- Compliance baseline: audit log, retention, access reviews.
- Insights: dashboards, reports, exports.
- Platform: integrations, webhooks, custom fields, i18n, mobile/offline basics.

## Problems it solves

Every user needs a secure place to sign in, see allowed data, and coordinate without switching chat tools. Admins need auditability and hooks to the rest of the stack.

## Who uses it

| Persona | Typical need |
|---------|----------------|
| Org administrator | Bootstrap org, roles, compliance |
| Everyone | Comments, notifications |
| Executive / finance | Dashboards and exports |
| Integrator | Webhooks and API |

## Admin configuration

- **Catalog:** cannot disable MOD-01; hide nav sections per profile.
- **Typical profiles:** `Default`, `Guest`, `ExecutiveSummary` (insights-heavy).
- **Experience Studio:** hide activity feed, reduce notification channels, restrict export for certain profiles.

## Key concepts

See [glossary](../overview/glossary.md): Organization, Workspace, Guest, Experience profile.

## Scenario index

| ID | Title | Summary | Priority |
|----|-------|---------|----------|
| [SCN-CORE-001](../scenarios/core/SCN-CORE-001-workspace-and-tenancy.md) | Workspace and tenancy | Create org, invite admins | MVP |
| [SCN-CORE-002](../scenarios/core/SCN-CORE-002-roles-permissions-guests.md) | Roles and guests | RBAC, departments, guest access | MVP |
| [SCN-CORE-003](../scenarios/core/SCN-CORE-003-collaboration.md) | Collaboration | Comments, mentions, feed | MVP |
| [SCN-CORE-004](../scenarios/core/SCN-CORE-004-compliance.md) | Compliance | Audit, retention, access reviews | v1 |
| [SCN-CORE-005](../scenarios/core/SCN-CORE-005-insights.md) | Insights | Dashboards and reports | v1 |
| [SCN-CORE-006](../scenarios/core/SCN-CORE-006-platform.md) | Platform | Integrations, custom fields | v1 |

## Modularity notes

Core pages: Home, Settings, Notifications, Activity, Admin (subset). Sections on work item and project pages for comments/activity can be hidden per profile but data remains for audit.

## Dependencies

None (foundation). Experience Studio (MOD-02) configures visibility of Core surfaces.

## Non-goals

Full IAM/SSO product (integrate IdP); enterprise GRC suite; bespoke BI warehouse.
