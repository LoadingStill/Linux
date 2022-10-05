#!/bin/bash
echo "####################    Cockpit Project Installing   #######################"
sudo dnf install -y cockpit
sudo systemctl enable --now cockpit.socket
sudo firewall-cmd --add-service=cockpit
sudo firewall-cmd --add-service=cockpit --permanent
sudo dnf install -y cockpit-machines #Create, run, and manage virtual machines in your browser.
sudo dnf install -y cockpit-podman #Download, use, and manage containers in your browser. (Podman replaces Docker.)
sudo dnf install -y cockpit-kdump #Debugging the Linux kernel? This kdump add-on helps with catching stack traces.
sudo dnf install -y cockpit-certificates #Certificate management app for Cockpit.
sudo dnf install -y cockpit-sosreport #Collect system configuration and diagnostic information from systems, to help with diagnosing problems.
sudo dnf install -y cockpit-composer #Composer is an interface for OSBuild that generates custom images suitable for deploying systems or uploading to the cloud. Images built with Composer are for RPM-based distributions such as Fedora, Red Hat Enterprise Linux, and CentOS.
sudo dnf install -y cockpit-389-ds #A web-based interface to the enterprise-class Open Source LDAP server for Linux.
sudo dnf install -y cockpit-session-recording #Session recording configuration and playback for Cockpit, based on Scribery, to record a user’s actions for watching later.
sudo dnf install -y cockpit-sensors #List all available sensors on the machine provided by lm-sensors
sudo dnf install -y cockpit-zfs #An interactive ZFS on Linux admin package for Cockpit.
#sudo dnf install -y subscription-manager-cockpit #Manage subscriptions to Red Hat Enterprise Linux from your web browser.
#sudo dnf install -y cockpit-ovirt-dashboard #oVirt manages Virtual Machines (VMs) in a datacenter/cluster. Scales easily from tens to tens of thousands VMs running on multiple KVM hypervisor hosts.
echo "####################    Cockpit Project Installed    #######################"






#https://cockpit-project.org/applications.html
