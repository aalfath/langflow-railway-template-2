# Langflow on Railway

This repository is the source of the Langflow template on Railway. It deploys:

- **Langflow 1.13.2**, built from this repo. The `Dockerfile` pins the official image `langflowai/langflow:1.13.2` by digest and adds a small start script.
- **PostgreSQL**, Railway's own database service, for users, flows, credentials and messages.
- Volumes for Langflow's config directory (`/app/langflow`) and for the database.

## Variables

| Service | Variable | Value |
|---|---|---|
| Langflow | `LANGFLOW_DATABASE_URL` | `${{Postgres.DATABASE_URL}}` (private network) |
| Langflow | `LANGFLOW_SECRET_KEY` | generated at deploy time; encrypts stored credentials |
| Langflow | `LANGFLOW_SUPERUSER_PASSWORD` | generated at deploy time; the password of the `langflow` admin |

Everything else has a safe default in the `Dockerfile`: auto-login, sign-up and the superuser CLI are off, telemetry is off, and Langflow listens on the port Railway gives the service. Override any of them with a variable on the Langflow service. Model provider keys (OpenAI, Anthropic and others) are added after login in Langflow's settings.

**First login:** open the public URL and sign in as `langflow` with the `LANGFLOW_SUPERUSER_PASSWORD` value from the Langflow service's Variables tab.

## Updates

Each change to this repo's `main` branch is one template update. Railway shows people who deployed the template an "update available" notice, and they choose when to apply it. Read [CHANGELOG.md](CHANGELOG.md) before you apply one: it lists breaking changes first.
