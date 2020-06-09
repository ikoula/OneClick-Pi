#!/bin/bash

# It is necessary to pass the Grafana admin password in the script parameter: ./grafana.sh <admin_password>

# Install ansible and git, configuring ansible and execute Grafana playbook with ansible-pull 
apt update && apt -y install python-pip git && pip install cryptography ansible && ansible-pull -i 'localhost,' -d /tmp/ansible -U https://github.com/ikoula/ansible_playbooks.git /tmp/ansible/grafana/grafana.yml --extra-vars="grafana_admin_pass=${1}" && rm -rf /tmp/ansible

echo "Go to <your_ip>:3000 to access the Grafana dashboard (login:admin) !"