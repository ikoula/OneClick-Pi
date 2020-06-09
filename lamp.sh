#!/bin/bash

# 3 parameters are needed, run the script like this : ./lamp.sh <USER> <USER_PASS> <USER_DB>

# Install ansible and git, configuring ansible and execute LAMP playbook with ansible-pull 
apt update && apt -y install ansible git && sed -i 's/#local_tmp/local_tmp/g' /etc/ansible/ansible.cfg && sed -i 's/#remote_tmp/remote_tmp/g' /etc/ansible/ansible.cfg && sed -i 's#~/#/root/#g' /etc/ansible/ansible.cfg && ansible-pull -i 'localhost,' -d /tmp/ansible -U https://github.com/ikoula/ansible_playbooks.git /tmp/ansible/lamp/lamp.yml --extra-vars="MYSQL_USER=${1} MYSQL_USER_PASS=${2} MYSQL_USER_DB=${3}" && rm -rf /tmp/ansible

exit 123

echo "Installation completed !"
