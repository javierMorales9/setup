git clone https://github.com/javierMorales9/setup
cd setup
HOME='/home/javi' sudo ansible-playbook test.yaml --ask-become-pass --ask-vault-pass
