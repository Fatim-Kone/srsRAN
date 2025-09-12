#!/usr/bin/env bash
#
# Copyright 2021-2025 Software Radio Systems Limited
#
# By using this file, you agree to the terms and conditions set
# forth in the LICENSE file which can be found at the top level of
# the distribution.
#

set -o pipefail

if [ -n "$RETINA_PORTS" ]; then
  # In this mode, we expect to receive data over UDP, telling websocket ip/port of the server.
  export WS_URL=$(socat -u UDP-RECVFROM:"${RETINA_PORTS}",reuseaddr STDOUT)
fi
telegraf --config /etc/srs/telegraf.conf $TELEGRAF_CLI_EXTRA_ARGS &
child=$!

health_code=0
_term() {
    curl -sf -o /dev/null http://localhost:9273/health
    health_code=$?
    echo "$(date -u '+%Y-%m-%dT%H:%M:%SZ') I! Health check returned code $health_code"
    kill -TERM "$child" 2>/dev/null
}
trap _term SIGTERM SIGINT

wait "$child"

exit $health_code
