#!/usr/bin/env bash
set -euo pipefail
NETWORK_NAME="monitoring_net"

if ! docker network ls --format '{{.Name}}' | grep -qx "$NETWORK_NAME"; then
  docker network create "$NETWORK_NAME"
  echo "Docker network '$NETWORK_NAME' creada."
else
  echo "Docker network '$NETWORK_NAME' ya existe."
fi
