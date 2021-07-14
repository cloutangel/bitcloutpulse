#!/usr/bin/env bash
# Any environment variables here


STORAGE_HOST=127.0.0.1
STORAGE_PORT=2112

export STORAGE_HOST \
  STORAGE_PORT \
  STORAGE_BIND="${STORAGE_HOST}:${STORAGE_PORT}"


