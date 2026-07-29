#!/bin/sh
set -eu

case "${SQL_DSN:-}" in
  *"&channel_binding=require")
    SQL_DSN="${SQL_DSN%&channel_binding=require}"
    export SQL_DSN
    ;;
esac

exec /new-api "$@"
