# Use the official SyncStorage image as a base
FROM mozilla/syncstorage-rs:0.13.6

# Healthcheck configuration
HEALTHCHECK --interval=30s --timeout=10s --retries=5 \
  CMD curl -f http://localhost:8000/__heartbeat__ || exit 1

# Expose the port
EXPOSE 8000

# Set the entry point to the syncserver
ENTRYPOINT ["/app/bin/syncserver"]
