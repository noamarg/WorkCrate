# SCN-EXP-001 - Module catalog - enable, disable, dependency-safe teardown

| Field | Value |
|-------|-------|
| **ID** | SCN-EXP-001 |
| **Module** | MOD-02 |
| **Sub-pack** | - |
| **Priority** | MVP |
| **Status** | draft |

## Summary

Admin enables optional modules and disables unused ones without broken UI for end users. Dependencies block unsafe disable or offer guided teardown.

## Actors and permissions

| Actor | Role |
|-------|------|
| Primary | Org admin |
| Secondary | Org admin, members as needed |
| System | Notifies assignees, writes audit on sensitive changes |

## Preconditions

- Organization exists and user is authenticated.
- Relevant module enabled in catalog (if not MOD-01/MOD-02).
- User has permission for the action per SCN-CORE-002.

## Goals and success metrics

- Users complete the main flow without admin intervention under default profile.
- Error states are explicit; no blank or broken pages when module disabled.
- Sensitive actions appear in audit log where applicable (SCN-CORE-004).

## User stories

1. **Given** a user with appropriate permissions, **When** they perform the primary action for this scenario, **Then** the system persists the change and surfaces it to relevant collaborators.
2. **Given** a user without permission, **When** they attempt the action, **Then** access is denied with a clear message and no partial data leak.
3. **Given** an admin has hidden a related page section for the user profile, **When** the user completes a permitted subset of the flow, **Then** hidden sections are not shown while core data remains consistent.

## Main flow

1. Org admin opens **Experience Studio → Module catalog** and sees MOD-03–MOD-13 with current state (on/off) and dependency hints.
2. Admin enables a module (e.g. MOD-11 Revenue); system enables default nav entries in **draft** config and shows impacted profiles.
3. Admin disables a module (e.g. MOD-12 Service); system lists dependent pages and active automations; admin confirms or cancels.
4. On confirm disable, system hides routes in draft config, preserves data, and blocks new creates for that module.
5. Admin publishes config (SCN-EXP-004); users no longer see disabled module UI on next resolution boundary.

## Alternate flows

### AF-1: Module disabled

1. User follows a bookmark to a feature in a disabled module.
2. System shows a module-not-enabled page with link to home (no 500, no empty shell).

### AF-2: Delegated admin

1. Delegated configurator (SCN-CORE-002) performs action within granted scope.
2. System records actor identity in audit log.

## Edge cases and failure modes

- Concurrent edits: last-write-wins with conflict notice on critical entities, or optimistic locking on work items.
- Partial publish of experience config: users on old published version until rollout completes (SCN-EXP-004).
- Integration timeout: webhook retries; user sees non-blocking warning for sync delay.
- Guest user attempts internal-only action: denied at API and UI.

## Acceptance criteria

- [ ] Main flow completes for primary actor under default MVP profile.
- [ ] Permission denied paths return 403 with user-safe message.
- [ ] Module-disabled deep links show guided empty state (SCN-EXP-002).
- [ ] Activity/notifications fire when scenario involves assignment or mention (if applicable).
- [ ] Modularity: sections listed in capability guide can be hidden without breaking main flow.
- [ ] Audit captures create/update/delete for admin and security-relevant actions.

## Dependencies

- SCN-CORE-001, SCN-EXP-001

## Modularity and visibility

- Governed by [admin modularity](../../overview/admin-modularity.md).
- Pages and sections for this module appear only when module (and sub-pack if any) is enabled and profile allows.
- Admins may hide advanced sections (e.g. reports, automations) while keeping core create/list/detail.

## Non-goals

- Behaviors outside this scenario scope; see capability guide non-goals for the module.

## Open questions

- OQ-1: Should rollout of published config be immediate or session-bound for all modules?
- OQ-2: MVP depth vs v1 for optional integrations-confirm per module in feature map.
