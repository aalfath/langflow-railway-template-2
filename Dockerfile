# Langflow for Railway: the official image, pinned by version and digest.
FROM langflowai/langflow:1.13.2@sha256:4cfba8c49c4dba081964f9096bc8b9169f99f7c720000a9563a2fd1296a35e9f

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
