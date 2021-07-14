#!/usr/bin/env bash
# Any environment variables here


ARDB_HOST=127.0.0.1
ARDB_PORT=3434

export ARDB_HOST \
  ARDB_PORT \
  ARDB_BIND="${ARDB_HOST}:${ARDB_PORT}"


