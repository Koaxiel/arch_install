#!/bin/bash
read -s -p "User password: " password
printf "\n"
read -p "Username: " username
printf "\n"
# Run Command
ansible-playbook -i laptop_setup/inventory -vvv -e "user_password=$password username=$username" laptop_setup/main.yml
