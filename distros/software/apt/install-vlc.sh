#!/bin/bash
echo "########################  vlc installing  #######################"
sudo apt-get remove vlc
sudo add-apt-repository -y ppa:videolan/master-daily
sudo apt-get update
sudo apt-get install -y vlc
echo "########################  vlc installed  #######################"