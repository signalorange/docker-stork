# Base image with Debian
FROM ubuntu:24.04

# Install system dependencies
RUN apt-get update \
    && apt-get install -y curl gnupg python3 python3-venv \
    && curl -1sLf 'https://dl.cloudsmith.io/public/isc/stork/cfg/setup/bash.deb.sh' | bash \
    && apt-get update \
    && apt-get install -y isc-stork-server \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/lib/stork-server/hooks

COPY server.env /etc/stork/server.env
# Start Stork server
CMD ["stork-server", "--use-env-file", "--env-file=/etc/stork/server.env"]