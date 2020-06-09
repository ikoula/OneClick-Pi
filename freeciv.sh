#!/bin/bash

# No parameters needed, just run this script like this: ./freeciv.sh

# Install ansible and git, configuring ansible and execute freeciv playbook with ansible-pull 
apt update && apt -y install python-pip git && pip install cryptography ansible && ansible-pull -i 'localhost,' -d /tmp/ansible -U https://github.com/ikoula/ansible_playbooks.git /tmp/ansible/freeciv/freeciv.yml && rm -rf /tmp/ansible

echo "Installation Completed"