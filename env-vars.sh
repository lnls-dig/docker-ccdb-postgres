#!/usr/bin/env bash

#NET_NAME="postgres-ccdb"
NET_NAME="dockerrbaccomposed_postgres-rbac"
DNS_IP="10.0.0.72"
POSTGRES_PORT=5432
LOCAL_POSTGRES_PORT=5435
POSTGRES_USER="ccdb"
POSTGRES_PASSWORD="ccdb"

CCDB_DOCKER_ORG_NAME=lnls
CCDB_DOCKER_RUN_NAME=ccdb-postgres
CCDB_DOCKER_RUN_NAME_PSQL=${CCDB_DOCKER_RUN_NAME}-psql
CCDB_DOCKER_IMAGE_NAME=docker-${CCDB_DOCKER_RUN_NAME}

CCDB_DOCKER_VOLUME=dockerccdbcomposed_ccdb-postgres-volume
