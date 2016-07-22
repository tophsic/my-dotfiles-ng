#!/usr/bin/env bash

set -e
set -u

sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

wget https://github.com/tophsic/my-dotfiles-ng/archive/master.zip
mkdir -p Dev/tophsic
unzip master.zip -d Dev/tophsic

cd Dev/tophsic/my-dotfiles-ng-master
ansible-playbooks desktop.yml -K
