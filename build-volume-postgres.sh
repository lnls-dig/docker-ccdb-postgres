#!/usr/bin/env bash

set -a
set -e
set -u

. ./env-vars.sh

# Create volume container
docker volume create ${CCDB_DOCKER_VOLUME}
docker create -v ${CCDB_DOCKER_VOLUME}:/var/lib/postgresql/data --name ${CCDB_DOCKER_VOLUME} \
    --net ${NET_NAME} --dns ${DNS_IP} postgres:9.5.4 2>/dev/null || true
