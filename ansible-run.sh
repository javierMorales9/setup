#!/usr/bin/env bash

## Reinstall ansible in case is not installed

sudo apt-get update -y
sudo apt-get install -y curl software-properties-common ansible

#sudo ansible-playbook run.yaml --ask-become-pass --ask-vault-pass --become-user=$USER
sudo ansible-playbook -v run.yaml --extra-vars '{"user": "javi"}' --ask-become-pass --ask-vault-pass
