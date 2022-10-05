#!/bin/bash
echo "####################    Cockpit Project Installing   #######################"
sudo dnf install -y cockpit
sudo systemctl enable --now cockpit.socket
sudo firewall-cmd --add-service=cockpit
sudo firewall-cmd --add-service=cockpit --permanent
sudo dnf install -y cockpit-machines
sudo dnf install -y cockpit-podman
sudo dnf install -y cockpit-kdump
sudo dnf install -y cockpit-certificates
sudo dnf install -y cockpit-sosreport
sudo dnf install -y cockpit-composer
sudo dnf install -y cockpit-389-ds
sudo dnf install -y cockpit-session-recording
#subscription-manager-cockpit
#cockpit-ovirt-dashboard
#cockpit-sensors
echo "####################    Cockpit Project Installed    #######################"
