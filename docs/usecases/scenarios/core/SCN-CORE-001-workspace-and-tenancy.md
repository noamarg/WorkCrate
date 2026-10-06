# SCN-CORE-001 - Workspace, tenancy, and organization bootstrap

| Field | Value |
|-------|-------|
| **ID** | SCN-CORE-001 |
| **Module** | MOD-01 |
| **Sub-pack** | - |
| **Priority** | MVP |
| **Status** | draft |

## Summary

A new owner creates an organization, names it, and invites the first administrators. Establishes tenant isolation and default workspace. System provisions default workspace and owner role.

## Actors and permissions

| Actor | Role |
|-------|------|
| Primary | Org owner |
| Secondary | Org admin, members as needed |
| System | Notifies assignees, writes audit on sensitive changes |

## Preconditions

- User has completed sign-up (self-serve or invite) and verified email if required.
- No organization yet bound to this user as owner (first-time bootstrap) OR user is invited as admin to an existing org.

## Goals and success metrics

- Users complete the main flow without admin intervention under default profile.
- Error states are explicit; no blank or broken pages when module disabled.
- Sensitive actions appear in audit log where applicable (SCN-CORE-004).

## User stories

1. **Given** a user with appropriate permissions, **When** they perform the primary action for this scenario, **Then** the system persists the change and surfaces it to relevant collaborators.
2. **Given** a user without permission, **When** they attempt the action, **Then** access is denied with a clear message and no partial data leak.
3. **Given** an admin has hidden a related page section for the user profile, **When** the user completes a permitted subset of the flow, **Then** hidden sections are not shown while core data remains consistent.

## Main flow

1. User chooses **Create organization** and enters legal/display name, URL slug, and timezone.
2. System creates tenant record, default workspace, and assigns user **Org owner** role.
3. System seeds default experience profile `Default` and draft published config (MOD-02).
4. User is prompted into **Setup wizard** (see SCN-EXP-004) or skips to admin home.
5. User invites at least one **Org admin** by email; invitees receive sign-up or join link scoped to this tenant only.
6. System writes audit events for org creation and admin invites.

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

- -

## Modularity and visibility

- Governed by [admin modularity](../../overview/admin-modularity.md).
- Pages and sections for this module appear only when module (and sub-pack if any) is enabled and profile allows.
- Admins may hide advanced sections (e.g. reports, automations) while keeping core create/list/detail.

## Non-goals

- Behaviors outside this scenario scope; see capability guide non-goals for the module.

## Open questions

- OQ-1: Should rollout of published config be immediate or session-bound for all modules?
- OQ-2: MVP depth vs v1 for optional integrations-confirm per module in feature map.
