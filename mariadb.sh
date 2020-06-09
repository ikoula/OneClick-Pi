#!/bin/bash

# 3 parameters are needed, run the script like this : ./mariadb.sh <MYSQL_USER> <MYSQL_USER_PASS> <MYSQL_USER_DB>

# Install ansible and git, configuring ansible and execute Wordpress playbook with ansible-pull 
apt update && apt -y install ansible git && sed -i 's/#local_tmp/local_tmp/g' /etc/ansible/ansible.cfg && sed -i 's/#remote_tmp/remote_tmp/g' /etc/ansible/ansible.cfg && sed -i 's#~/#/root/#g' /etc/ansible/ansible.cfg && ansible-pull -i 'localhost,' -d /tmp/ansible -U https://github.com/ikoula/ansible_playbooks.git /tmp/ansible/mariadb/mariadb.yml --extra-vars="MARIADB_USER=${1} MARIADB_USER_PASS=${2} MARIADB_USER_DB=${3}" && rm -rf /tmp/ansible /tmp/mariadb.tar.gz

exit 123

echo "Installation completed !"

