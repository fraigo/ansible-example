#!/bin/bash
CURDIR="$( cd "$(dirname "$0")" ; pwd -P )"

if [ "$1" == "" ];then
	echo "Usage: $0 [filter]"
	exit 1
fi
COMMAND=$1
FILTER=$2

SERVERS=$($CURDIR/servers.sh USER@HOST $FILTER)
for server in $SERVERS
do
	echo "Running in [$server]"
	CMD=$COMMAND
	$CURDIR/copy-id.sh $server
done
