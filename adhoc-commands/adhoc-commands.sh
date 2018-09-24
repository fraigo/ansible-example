#!/bin/bash

# execute a shell command
ansible localhost -m shell -a "echo 123"

# copy files
ansible localhost -m copy -a "src=/etc/ansible/hosts dest=/tmp/ansible-hosts.txt"




