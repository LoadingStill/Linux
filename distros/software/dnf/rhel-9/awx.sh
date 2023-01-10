#!/bin/bash
sudo visudo
sudo dnf update -y
sudo systemctl disable firewalld --now
sudo setenforce 0
#sudo vim /etc/selinux/config
  #SELINUX=disabled
  #sestatus
sudo init 0
sudo hostnamectl set-hostname rhel-9-awx
#sudo vim /etc/hosts
ip a | grep inet
#sudo vim /etc/sysconfig/network-scripts/ifcfg-ens192
sudo init 6
curl -sfL https://get.k3s.io | sh -
