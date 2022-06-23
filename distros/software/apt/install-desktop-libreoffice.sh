#!/bin/bash
echo "########################  libreoffice installing  #######################"
sudo apt remove -y libreoffice
sudo add-apt-repository -y ppa:libreoffice/ppa
sudo apt update
sudo apt install -y libreoffice
echo "########################  libreoffice  installed  #######################"
