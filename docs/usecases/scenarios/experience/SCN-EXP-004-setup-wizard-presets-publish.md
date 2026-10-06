# SCN-EXP-004 - Setup wizard, presets, preview, and publish

| Field | Value |
|-------|-------|
| **ID** | SCN-EXP-004 |
| **Module** | MOD-02 |
| **Sub-pack** | - |
| **Priority** | MVP |
| **Status** | draft |

## Summary

New org completes wizard, applies industry preset, previews as a role, and publishes config. Draft vs published config supported.

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

1. User navigates to the entry point defined for this capability (nav or deep link resolved per profile).
2. User provides required input; client validates format; server validates permissions and module gates.
3. System applies business rules and saves state transactionally.
4. System emits notifications, webhooks, or activity feed entries as configured.
5. User sees confirmation and can return to list or detail view.

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
