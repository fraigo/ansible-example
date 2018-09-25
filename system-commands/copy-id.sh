#!/bin/bash
if [ "$1" == "" ];then
	echo "Usage: $0 user@host"
	exit 1
fi

HOST=$1
PARAMS=$2

ssh-copy-id -i ~/.ssh/id_rsa $HOST $PARAMS
