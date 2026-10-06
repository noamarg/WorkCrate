# Accessibility

WorkCrate is built for teams with diverse needs. We treat accessibility as a product requirement—not an optional polish pass—and work to reduce barriers in the web UI, documentation, and contributor workflows.

## Our commitment

- **Inclusive by design** — Navigation, forms, and core workflows should be usable with keyboard, screen readers, and common browser accessibility settings where the product surface exists today.
- **Progress over perfection** — The project is pre-1.0; we prioritize fixing reported barriers on critical paths and baking accessibility into new features as modules ship.
- **Measurable direction** — We aim toward **[WCAG 2.2](https://www.w3.org/WAI/standards-guidelines/wcag/) Level AA** for the WorkCrate web application. We do **not** claim full conformance until we publish an explicit conformance statement for a released version.
- **Documentation** — User-facing docs in [`docs/`](docs/) should use clear structure, descriptive link text, and headings that work when read out of context.
- **Community** — Accessibility reports are welcome from users, admins, and contributors. Reports handled in good faith follow the [Code of Conduct](CODE_OF_CONDUCT.md).

## Supported environments

We develop and smoke-test the **WorkCrate web app** (`apps/frontend`) against current, evergreen browsers:

| Environment | Support |
|-------------|---------|
| **Browsers** | Recent **Chrome**, **Firefox**, **Safari**, and **Edge** (last two major versions) |
| **Input** | Keyboard; pointer; OS-level **zoom** and **text scaling** |
| **Assistive technology** | **NVDA** and **VoiceOver** on supported browser/OS pairs (best-effort verification on PRs that touch UI) |
| **API / scripts** | Backend and CLI-style scripts are not a primary interactive UI; accessibility efforts focus on the web client and published docs |

Exact OS and AT combinations vary by organization. When you report a barrier, include your browser, OS, and assistive technology so we can reproduce.

## Known limitations

WorkCrate is in **early development**. Expect gaps until more modules and Experience Studio surfaces land.

| Area | Limitation |
|------|------------|
| **Product coverage** | Many modules and admin flows are specified in docs but not fully implemented; unaudited areas may lack labels, focus order, or live regions. |
| **Formal audit** | No third-party WCAG audit or VPAT is published yet. |
| **Automated checks** | CI does not yet enforce a full accessibility test suite on every change. |
| **Themes & contrast** | Custom branding via Experience Studio may introduce contrast or focus issues until theme guardrails exist. |
| **Media & rich content** | Future attachments, diagrams, or embedded media may ship without captions or alternatives until those features are scoped. |
| **Localization** | Primary language is English; RTL and locale-specific formatting may be incomplete. |

This list is not exhaustive. It will shrink as we ship features and close reported issues.

## Report a barrier

If something prevents you from using WorkCrate—or makes it unnecessarily difficult—we want to know.

1. **Search** [existing issues](https://github.com/noamarg/WorkCrate/issues) for similar reports.
2. **Open a GitHub issue** using the [**Bug report**](https://github.com/noamarg/WorkCrate/issues/new?template=bug_report.yml) template (accessibility defects are bugs).
3. Use a title that starts with **`Accessibility:`** (e.g. `Accessibility: cannot submit task with keyboard only`).
4. Include:
   - **Page or flow** (URL path, role, or module if known)
   - **What you tried** and **what blocked you**
   - **Expected** accessible behavior
   - **Environment**: browser + version, OS, assistive technology + version
   - **Screenshots or short recordings** if they help (avoid private data)

For **security** issues, use [SECURITY.md](SECURITY.md)—not public issues.

Maintainers triage accessibility reports like other defects: acknowledge when possible, prioritize by impact and severity, and track fixes on **`dev`** per [CONTRIBUTING.md](CONTRIBUTING.md).

## Related

- [SUPPORT.md](SUPPORT.md) — general help and issue templates
- [CONTRIBUTING.md](CONTRIBUTING.md) — code and PR expectations
- [Vision and principles](docs/usecases/overview/vision-and-principles.md) — product design goals
