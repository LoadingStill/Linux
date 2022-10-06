#!/bin/bash
echo "########################  flatpack installing  #######################"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo 'flatpack repo added' >> /home/$(whoami)/info/log #add info to log
echo "########################  flatpack  installed  #######################"
