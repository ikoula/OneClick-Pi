#!/bin/bash

# It is necessary to pass the MySQL root password and the drupal admin password in the script parameter: ./drupal.sh <MYSQL_PASS> <DP_SITE_PASS>

# Install ansible and git, configuring ansible and execute Drupal playbook with ansible-pull 
apt update && apt -y install python-pip git sudo && pip install cryptography ansible && ansible-pull -i 'localhost,' -d /tmp/ansible -U https://github.com/ikoula/ansible_playbooks.git /tmp/ansible/drupal/drupal.yml --extra-vars "DRUPAL_MYSQL_PASS=${1} DRUPAL_SITE_PASS=${2}" --verbose && rm -rf /tmp/ansible

echo "Installation Completed"