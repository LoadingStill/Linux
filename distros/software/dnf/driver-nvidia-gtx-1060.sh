#!/bin/bash
echo "####################    Nvidia GTX 1060 Driver Installing    #######################"
sudo dnf update -y # and reboot if you are not on the latest kernel
sudo dnf install akmod-nvidia # rhel/centos users can use kmod-nvidia instead
sudo dnf install xorg-x11-drv-nvidia-cuda #optional for cuda/nvdec/nvenc support
echo 'Nvidia Driver GTX 1060 Installed - 510+ driver' >> /home/$(whoami)/info/log
echo "####################    Nvidia GTX 1060 P2000 Installed     #######################"



#source
#https://rpmfusion.org/Howto/NVIDIA
