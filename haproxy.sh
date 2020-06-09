#!/bin/bash

# It is necessary to pass the Grafana admin password in the script parameter: ./haproxy.sh

# Install ansible and git, configuring ansible and execute Haproxy playbook with ansible-pull 
apt update && apt -y install ansible git && sed -i 's/#local_tmp/local_tmp/g' /etc/ansible/ansible.cfg && sed -i 's/#remote_tmp/remote_tmp/g' /etc/ansible/ansible.cfg && sed -i 's#~/#/root/#g' /etc/ansible/ansible.cfg && ansible --connection=local localhost -u root -m apt -a "name=haproxy update_cache=yes state=latest" 

echo "Installation Completed"