#!/bin/bash
echo "########################  git installing  #######################"
sudo apt-get remove vlc
sudo add-apt-repository -y ppa:videolan/master-daily
sudo apt update
sudo apt install -y vlc
echo "########################  git installed  #######################"