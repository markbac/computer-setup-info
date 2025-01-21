#!/bin/bash

# Define the playbook file
playbook_file="./second_stage_setup.yml"

# Run the Ansible playbook
echo "Running the playbook..."
ansible-playbook $playbook_file --ask-become-pass
