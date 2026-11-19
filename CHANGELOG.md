# Changelog

Each entry is one update of this Railway template. Breaking changes come first.

## 1.13.3 (2026-11-19)

- No breaking changes. Flows, users and settings in Postgres and files on the volume are kept; Langflow runs its own database migrations at start.
- Langflow [v1.13.3](https://github.com/langflow-ai/langflow/releases/tag/v1.13.3): security dependency updates, sessions are invalidated after a password change, the custom component policy now also applies to background workflows, and other fixes.
- Image: `langflowai/langflow:1.13.3@sha256:0dea79f5a557e1602b5514973484332f479cdb6b71cceb098536ecc231b02d7d`.

## 1.13.2-1 (2026-11-16)

- The `langflow-1` template on Railway now builds its Langflow service from this repository (it used the image `langflowai/langflow:1.11.0` before). Deploys made from the old image-based version don't follow this repo; redeploy from the template to get updates.
- README: Deploy on Railway button for `langflow-1`, and the variables the template sets.

## 1.13.2 (2026-11-15)

First version built from this repository.

- Langflow `1.13.2` (`langflowai/langflow@sha256:4cfba8c4…`).
- Langflow now listens on Railway's `PORT`, so the health check and the public domain reach it. The old template failed every health check because Langflow listened on 7860 while Railway probed its own port.
- Auto-login, sign-up and the superuser CLI are off. The `langflow` admin password is generated at deploy time.
