#!/bin/bash
echo "########################  firefox installing  #######################"
sudo snap remove firefox -y
sudo add-apt-repository ppa:mozillateam/firefox-next 
sudo apt-get update
sudo apt-get install firefox
echo "########################  firefox  installed  #######################"
