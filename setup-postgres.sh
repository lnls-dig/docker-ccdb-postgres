#!/usr/bin/env bash

set -a
set -e
set -u

NET_NAME="$1"
DNS_IP="$2"
CCDB_DOCKER_VOLUME="$3"

# Build image
./build.sh ${CCDB_DOCKER_IMAGE_NAME}

# Create docker network
./create-net.sh ${NET_NAME}

# Create postres container volume
./build-volume-postgres.sh ${NET_NAME} ${DNS_IP} ${CCDB_DOCKER_VOLUME}
