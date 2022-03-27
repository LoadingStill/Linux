#!/bin/bash
echo "########################  flatpack installing  #######################"
sudo add-apt-repository ppa:flatpak/stable
sudo apt update
sudo apt install flatpak
echo "########################  flatpack  installed  #######################"