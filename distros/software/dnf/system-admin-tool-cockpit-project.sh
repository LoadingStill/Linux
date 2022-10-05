#!/bin/bash
echo "####################    Cockpit Project Installing   #######################"
sudo dnf install cockpit
sudo systemctl enable --now cockpit.socket
sudo firewall-cmd --add-service=cockpit
sudo firewall-cmd --add-service=cockpit --permanent
sudo dnf install cockpit-machines
sudo dnf install cockpit-podman
sudo dnf install cockpit-kdump
sudo dnf install cockpit-certificates
sudo dnf install cockpit-sosreport
sudo dnf install cockpit-composer
sudo dnf install cockpit-389-ds
sudo dnf install cockpit-session-recording

echo "####################    Cockpit Project Installed    #######################"
