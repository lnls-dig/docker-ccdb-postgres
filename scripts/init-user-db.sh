#!/bin/bash
set -e

psql -v --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER ccdb;
    CREATE DATABASE ccdb;
    GRANT ALL PRIVILEGES ON DATABASE ccdb TO ccdb;
EOSQL
