#!/bin/bash
echo "########################  obs installing  #######################"
sudo apt remove -y obs
sudo apt remove -y obs-studio
sudo apt install -y v4l2loopback-dkms
sudo add-apt-repository -y ppa:obsproject/obs-studio
sudo apt update
sudo apt install -y obs-studio
echo "########################  obs installed  #######################"
