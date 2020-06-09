#!/bin/bash

# No parameters needed, just run this script like this: ./golang.sh

# Install ansible and git, configuring ansible and install Golang (Go language)  with ansible-pull 
apt update && apt -y install ansible git && sed -i 's/#local_tmp/local_tmp/g' /etc/ansible/ansible.cfg && sed -i 's/#remote_tmp/remote_tmp/g' /etc/ansible/ansible.cfg && sed -i 's#~/#/root/#g' /etc/ansible/ansible.cfg && ansible --connection=local localhost -u root -m apt -a "name=golang update_cache=yes state=latest" 

echo "Installation Completed"