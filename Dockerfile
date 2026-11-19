# Langflow for Railway: the official image, pinned by version and digest.
FROM langflowai/langflow:1.13.3@sha256:0dea79f5a557e1602b5514973484332f479cdb6b71cceb098536ecc231b02d7d

# Railway mounts volumes as root, so run as root to write to /app/langflow.
USER root

# Safe defaults. Every one can still be overridden with a service variable.
ENV LANGFLOW_HOST=0.0.0.0 \
    LANGFLOW_CONFIG_DIR=/app/langflow \
    LANGFLOW_AUTO_LOGIN=false \
    LANGFLOW_ENABLE_SIGNUP=false \
    LANGFLOW_NEW_USER_IS_ACTIVE=false \
    LANGFLOW_ENABLE_SUPERUSER_CLI=false \
    LANGFLOW_SUPERUSER=langflow \
    DO_NOT_TRACK=true

COPY --chmod=755 start.sh /usr/local/bin/railway-start.sh

CMD ["/usr/local/bin/railway-start.sh"]
