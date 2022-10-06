#!/bin/bash


#YOU NEED TO EDIT THIS FILE FOR THIS TO WORK



echo "####################    setting Up fstab     ####################"
sudo mkdir /mnt/FileNameHere
dnf -y install nfs-utils
echo 'nfs-utils' >> /home/$USERNAME/servarrInfo
sudo echo 'nfsIP:/mount/directory/folder  /mnt/FileNameHere  nfs defaults 0 0' >> /etc/fstab

echo 'nfs enabled' >> /home/$(whoami)/info
echo "####################  fstab setup completed  ####################"
