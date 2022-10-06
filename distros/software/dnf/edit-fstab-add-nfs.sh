#!/bin/bash


#YOU NEED TO EDIT THIS FILE FOR THIS TO WORK



echo "####################    setting Up fstab     ####################"
sudo mkdir /mnt/FileNameHere
dnf -y install nfs-utils
sudo echo 'nfsIP:/mount/directory/folder  /mnt/FileNameHere  nfs defaults 0 0' >> /etc/fstab

echo 'nfs enabled' >> /home/$(whoami)/info/log #add info to log
echo "####################  fstab setup completed  ####################"
