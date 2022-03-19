#!/bin/bash
echo "########################  obs installing  #######################"
sudo apt-get remove -y obs
sudo apt-get remove -y obs-studio
sudo apt-get install -y v4l2loopback-dkms
sudo add-apt-repository -y ppa:obsproject/obs-studio
sudo apt-get update
sudo apt-get install -y obs-studio
echo "########################  obs installed  #######################"