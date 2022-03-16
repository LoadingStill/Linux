#!/bin/bash
echo "########################  obs installing  #######################"

sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install obs-studio
#uncomment line 7 if you use a nvidia gpu! (delete the #)
#sudo dnf install xorg-x11-drv-nvidia-cuda

#for older nvidia gpus use uncommit like 10 and not line 7
#sudo dnf install xorg-x11-drv-nvidia-340xx-cuda

echo "########################  obs installed  #######################"
