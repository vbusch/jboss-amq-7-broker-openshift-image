#!/bin/sh

SHUTDOWN_FILE="/opt/amq/data/shutdown"
INSTANCE_DIR="${HOME}/${AMQ_NAME}"

if [ "$AMQ_CLUSTERED" = "true" ]; then
	echo "Shutdown Requested - in clustered mode, setting mode to shutdown"
	echo "shutdown requested" > $SHUTDOWN_FILE
else
	echo "Shutdown Requested - not in clustered mode.  Stopping artemis"
	exec ${INSTANCE_DIR}/bin/artemis stop	
fi




