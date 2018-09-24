#!/bin/bash
CURDIR="$( cd "$(dirname "$0")" ; pwd -P )"

FILTER=$1

SERVERS=$($CURDIR/servers.sh USER@HOST $FILTER)
for server in $SERVERS
do
	echo "Running in [$server]"
	$CURDIR/copy-id.sh $server
done
