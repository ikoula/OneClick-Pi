#!/bin/bash

# 1 parameter are needed, you need to specify the wanted paperMC version like this (for the latest version) : ./minecraft.sh 1.15.2

# Install ansible and git, configuring ansible and execute Minecraft playbook with ansible-pull 
apt update && apt -y install python-pip git && pip install cryptography ansible && ansible-pull -i 'localhost,' -d /tmp/ansible -U https://github.com/ikoula/ansible_playbooks.git /tmp/ansible/minecraft/minecraft.yml --extra-vars="paperclip_version=${1}" && rm -rf /tmp/ansible

echo "Installation completed !"