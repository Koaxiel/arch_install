#!/bin/bash
#wpa_supplicant -c wpa_supplicant-wired.conf -D wired -i eno1
read -s -p "Root password: " password
printf "\n"
read -p "Hostname: " hostname
printf "\n"
# Run Command
ansible-playbook -i arch_install/inventory -vvv -e "root_password=$password hostname=$hostname" arch_install/main.yml
