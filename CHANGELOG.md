# Changelog

Each entry is one update of this Railway template. Breaking changes come first.

## 1.13.2 (2026-11-15)

First version built from this repository. It replaces the image-based `langflow-1` template.

- Langflow `1.13.2` (`langflowai/langflow@sha256:4cfba8c4…`).
- Langflow now listens on Railway's `PORT`, so the health check and the public domain reach it. The old template failed every health check because Langflow listened on 7860.
- Auto-login, sign-up and the superuser CLI are off. The `langflow` admin password is generated at deploy time.
