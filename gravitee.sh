#!/bin/bash

# No parameters needed, just run this script like this: ./gravitee.sh

# Install ansible and git, configuring ansible and execute Gravitee APU gateway playbook with ansible-pull 
apt update && apt -y install python-pip git && pip install cryptography ansible && ansible-pull -i 'localhost,' -d /tmp/ansible -U https://github.com/ikoula/ansible_playbooks.git /tmp/ansible/gravitee/gravitee.yml --verbose && rm -rf /tmp/ansible

echo "Installation Completed"