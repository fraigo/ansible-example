#!/bin/bash
CURDIR="$( cd "$(dirname "$0")" ; pwd -P )"

FORMAT=$1
FILTER=$2
if [ "$FORMAT" == "" ]; then
	echo "Usage  : $0 format [filter]"
	echo "Example: $0 USER:HOST local" 
fi
IFS='
'
SERVERS=$(cat $CURDIR/servers.txt)

for server in $SERVERS
do
	unset IFS
	read HOST USER PORT TAGS<<<$(IFS=";"; echo $server)
	# echo "[host:$HOST] [user:$USER] [port:$PORT] [tags:$TAGS] [filter:$FILTER]"
	FILTERED=$(echo "$TAGS" | grep -e "$FILTER")
	if [ ! "$FILTERED" == "" ]; then
		TEXT=$FORMAT
		TEXT=$(echo "${TEXT/HOST/$HOST}")
		TEXT=$(echo "${TEXT/USER/$USER}")
		TEXT=$(echo "${TEXT/PORT/$PORT}")
		echo $TEXT
	fi	
done



