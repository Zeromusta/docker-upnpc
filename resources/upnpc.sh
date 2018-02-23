#!/bin/bash
set -eo pipefail

for NAT_PORT in $NAT_PORTS
do
	PORT=${NAT_PORT%/*}
	PROTOCOL=${NAT_PORT#*/}
	echo "port:$PORT protocol:$PROTOCOL"
done