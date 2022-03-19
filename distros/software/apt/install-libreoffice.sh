#!/bin/bash
echo "########################  libreoffice installing  #######################"
sudo apt-get remove -y libreoffice
sudo add-apt-repository -y ppa:libreoffice/ppa
sudo apt-get install -y libreoffice
echo "########################  libreoffice  installed  #######################"