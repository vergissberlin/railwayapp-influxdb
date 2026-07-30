#!/bin/bash
# Railway routes public traffic to the port named by $PORT and ignores the
# Dockerfile EXPOSE directive. InfluxDB binds to :8086 by default, so without
# this translation a Railway-assigned port is never served and the deployment
# answers with "Application failed to respond".
#
# The script only maps $PORT onto InfluxDB's own configuration variable and then
# hands over to the upstream image entrypoint, which keeps the automated
# DOCKER_INFLUXDB_INIT_* setup and the gosu privilege drop intact.
set -euo pipefail

readonly UPSTREAM_ENTRYPOINT='/entrypoint.sh'
port="${PORT:-8086}"

if ! [[ "${port}" =~ ^[0-9]+$ ]] || ((port < 1 || port > 65535)); then
	echo "railway-entrypoint: PORT='${port}' is not a valid port number (1-65535)" >&2
	exit 1
fi

# An explicitly configured bind address always wins over the derived one.
export INFLUXD_HTTP_BIND_ADDRESS="${INFLUXD_HTTP_BIND_ADDRESS:-:${port}}"

exec "${UPSTREAM_ENTRYPOINT}" "$@"
