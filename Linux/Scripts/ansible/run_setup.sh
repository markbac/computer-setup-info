#!/bin/bash

# Update package manager and install prerequisites
sudo apt update -y
sudo apt install -y software-properties-common

# Add Ansible PPA and install Ansible
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible

# Run the playbook
ansible-playbook setup.yml --ask-become-pass
