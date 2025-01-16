FROM debian:bullseye-slim

# Install PhotoRec and its dependencies
RUN apt-get update && \
    apt-get install -y \
    testdisk \
    && rm -rf /var/lib/apt/lists/*

# Create a directory for mounting external volumes
WORKDIR /data

# Run PhotoRec as the entrypoint
ENTRYPOINT ["photorec"]

# Default command (can be overridden)
CMD ["/data"]