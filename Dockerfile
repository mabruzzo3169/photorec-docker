FROM debian:bullseye-slim

# Install PhotoRec and its dependencies
RUN apt-get update && \
    apt-get install -y \
    testdisk \
    tmux \
    && rm -rf /var/lib/apt/lists/*

# Create a directory for mounting external volumes
WORKDIR /data

# Keep container running
CMD ["tail", "-f", "/dev/null"]