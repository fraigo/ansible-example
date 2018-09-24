#!/bin/bash
if [ "$1" == "" ];then
	echo "Usage: $0 user@host 'command'"
	exit 1
fi
HOST=$1
COMMAND=$3
ssh $HOST "$COMMAND"

