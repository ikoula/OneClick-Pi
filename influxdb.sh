#!/bin/bash

# No parameters needed, just run this script like this: ./influxdb.sh

# Install ansible and git, configuring ansible and execute InfluxDB playbook with ansible-pull 
apt update && apt -y install python-pip git && pip install cryptography ansibl && ansible-pull -i 'localhost,' -d /tmp/ansible -U https://github.com/ikoula/ansible_playbooks.git /tmp/ansible/influxdb/influxdb.yml && rm -rf /tmp/ansible

echo "Installation Completed"