#!/usr/bin/env bash

## Install ansible

sudo apt-add-repository -y ppa:/ansible/ansible
sudo apt-get update -y
sudo apt-get install -y curl software-properties-common ansible

#sudo ansible-pull -U https://github.com/user/repo
