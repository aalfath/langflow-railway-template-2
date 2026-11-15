#!/bin/sh
# Start Langflow on the port Railway gives the service (PORT), or 7860.
set -e

PORT="${PORT:-7860}"
export LANGFLOW_PORT="$PORT"
mkdir -p "$LANGFLOW_CONFIG_DIR"

if [ -z "$LANGFLOW_SUPERUSER_PASSWORD" ]; then
  echo "LANGFLOW_SUPERUSER_PASSWORD is empty. Set it on the Langflow service and redeploy." >&2
  exit 1
fi

exec langflow run --host "$LANGFLOW_HOST" --port "$PORT"
