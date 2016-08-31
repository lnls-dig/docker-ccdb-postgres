#!/usr/bin/env bash

set -a
set -e
set -u

# Source env vars
. ./env-vars.sh

# Setup postgres
./setup-postgres.sh ${NET_NAME} ${DNS_IP} ${CCDB_DOCKER_VOLUME}

# Run postgres
./run-postgres.sh ${NET_NAME} ${DNS_IP} ${POSTGRES_PORT} ${POSTGRES_USER} ${POSTGRES_PASSWORD} \
    ${CCDB_DOCKER_IMAGE_NAME} ${CCDB_DOCKER_VOLUME} ${CCDB_DOCKER_IMAGE_NAME} ${LOCAL_POSTGRES_PORT}
