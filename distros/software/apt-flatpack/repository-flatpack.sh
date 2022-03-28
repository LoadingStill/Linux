#!/bin/bash
echo "########################  flatpack installing  #######################"
sudo add-apt-repository ppa:flatpak/stable -y
sudo apt update
sudo apt install flatpak -y
echo "########################  flatpack  installed  #######################"