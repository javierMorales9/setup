# Set up the configuration of wsl

The idea of this repo is that I can replicate my entire wsl set up automatically

It uses ansible to install all the dependencies, package and tools I use.

Then it (lso set up ssh keys(which are encrypted) with ansible-vault and install set up all the configuration files in the dotfiles [repo](https://github.com/javierMorales9/.dotfiles).

In a new computer execute:
```bash
sudo apt-add-repository -y ppa:/ansible/ansible
sudo apt-get update -y
sudo apt-get install -y curl software-properties-common ansible

sudo ansible-pull -U https://github.com/javierMorales9/setup.git
cd setup

```
This will install ansible and pull this repository. Then to install it all execute
```bash
ansible-playbook local.yaml --ask-become-pass --ask-vault-pass
```

