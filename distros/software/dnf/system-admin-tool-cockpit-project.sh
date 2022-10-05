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
sudo dnf install -y cockpit-sensors #List all available sensors on the machine provided by lm-sensors
sudo dnf install -y cockpit-zfs #An interactive ZFS on Linux admin package for Cockpit.
#sudo dnf install -y subscription-manager-cockpit #Manage subscriptions to Red Hat Enterprise Linux from your web browser.
#sudo dnf install -y cockpit-ovirt-dashboard #oVirt manages Virtual Machines (VMs) in a datacenter/cluster. Scales easily from tens to tens of thousands VMs running on multiple KVM hypervisor hosts.
echo "####################    Cockpit Project Installed    #######################"






#https://cockpit-project.org/applications.html
