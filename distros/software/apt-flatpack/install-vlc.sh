#!/bin/bash
echo "########################  vlc installing  #######################"
sudo apt remove -y vlc
sudo add-apt-repository -y ppa:videolan/master-daily
sudo apt update
sudo apt install -y vlc
echo "########################  vlc installed  #######################"