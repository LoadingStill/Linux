#!/bin/bash
echo "########################  obs installing  #######################"
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install -y kmod-v4l2loopback # virtual camera support
sudo dnf install -y obs-studio
#sudo dnf install xorg-x11-drv-nvidia-cuda #uncomment this line if you use a nvidia gpu! (delete the 1st # only) newer nvidia gpu
#sudo dnf install xorg-x11-drv-nvidia-340xx-cuda #for older nvidia gpus uncommit this line and NOT the line above  (delete the 1st #)
echo "########################  obs installed  #######################"
