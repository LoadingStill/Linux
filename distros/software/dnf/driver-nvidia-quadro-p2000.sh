#!/bin/bash
echo "####################    Nvidia Quadro P2000 Driver Installing    #######################"
sudo dnf update -y # and reboot if you are not on the latest kernel
sudo dnf install akmod-nvidia # rhel/centos users can use kmod-nvidia instead
sudo dnf install xorg-x11-drv-nvidia-cuda #optional for cuda/nvdec/nvenc support
echo 'Nvidia Driver Quadro P2000 Installed - 510+ driver' >> /home/$(whoami)/info/log
echo "####################    Nvidia Driver Quadro P2000 Installed     #######################"



#source
#https://rpmfusion.org/Howto/NVIDIA
