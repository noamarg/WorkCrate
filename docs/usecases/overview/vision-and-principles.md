# Vision and principles

## Mission

**WorkCrate** is an open-source, all-in-one workspace for running work: teams, projects, tasks, and everything in between. The product should feel simple on day one and stay coherent as organizations grow.

## Design principles

1. **Simple by default** - One home (My Work), one primary object (work items), sensible defaults. Complexity is opt-in via modules and admin configuration.
2. **Thirteen modules, not dozens** - The admin catalog exposes 13 enableable modules. Sub-packs (e.g. Engineering under Delivery packs) avoid toggle sprawl.
3. **Admin-controlled experience** - The organization admin enables modules, hides pages, adjusts layouts, and assigns **experience profiles**. Users see the resolved UI.
4. **Templates over blank slates** - Projects, workflows, presets, and profiles ship as templates; admins refine and publish.
5. **One object model** - Account → Project/Program → Work item → attachments (time, approvals, documents). Optional modules extend the same IDs.
6. **Open and integratable** - Webhooks, APIs, and external dev tools connect without forcing a rip-and-replace of existing stacks.

## Object model (conceptual)

| Entity | Purpose |
|--------|---------|
| **Organization** | Tenant boundary; billing, policies, published experience config |
| **Workspace** | Optional sub-division (department, business unit, client org) |
| **Team** | Group of members with shared work and visibility |
| **Account** (CRM) | Customer or partner organization when Revenue module is on |
| **Project / Program** | Container for goals, milestones, and work |
| **Work item** | Task, bug, ticket, or request - one type, configurable subtype |
| **Document** | Files and wiki pages in Knowledge |
| **Experience profile** | Named bundle of nav, layout, and visibility rules for a role |

## What WorkCrate is not

- A full HRIS, ERP, or accounting system (Business sub-packs are lightweight; integrate for payroll/GL).
- A generic white-label page builder (structured pages and sections only).
- A replacement for specialized dev tools (Engineering sub-pack integrates with git/CI).

## Related documents

- [Feature map](./feature-map.md)
- [Glossary](./glossary.md)
- [Admin modularity](./admin-modularity.md)
- [Capability guides](../capabilities/)
