#!/bin/bash
CURDIR="$( cd "$(dirname "$0")" ; pwd -P )"

FILTER=$1

SERVERS=$($CURDIR/servers.sh USER@HOST $FILTER)
for server in $SERVERS
do
	echo "Copy id to [$server]"
	$CURDIR/copy-id.sh $server
done
