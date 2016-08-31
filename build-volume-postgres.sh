#!/usr/bin/env bash

set -a
set -e
set -u

NET_NAME="$1"
DNS_IP="$2"
CCDB_DOCKER_VOLUME="$3"

# Create volume container
docker create -v /var/lib/postgresql/data --name ${CCDB_DOCKER_VOLUME} \
    --net ${NET_NAME} --dns ${DNS_IP} postgres 2>/dev/null || true
