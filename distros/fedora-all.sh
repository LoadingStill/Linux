#!/bin/bash

sudo dnf system-upgrade reboot
echo "################################################################"
echo "#                                                              #"
echo "#                    Fedora Install Scrip                      #"
echo "#                                                              #"
echo "################################################################"



echo "####################    Updating    #######################"
sudo dnf upgrade
sudo dnf install dnf-plugin-system-upgrade
sudo dnf distro-sync
sudo dnf autoremove
echo "####################    Updated    #######################"



echo "####################    Installing Software   #######################"
sh software/dnf/install-flatpack.sh
sh software/dnf/install-retroarch.sh
sh software/dnf/install-obs.sh
sh software/apt/install-discord.sh
echo "####################    Software Installed    #######################"



echo "####################    After Software Updates    #######################"
sudo dnf upgrade
sudo dnf autoremove
echo "####################    Completed    #######################"



eecho "################################################################"
echo "#                                                              #"
echo "#                    Completed fedora-all.sh                   #"
echo "#                                                              #"
echo "################################################################"



echo "####################    Rebooting    #######################"
echo "Rebooting in 5     Press Ctrl + C to cancel"
sleep 1
echo "Rebooting in 4     Press Ctrl + C to cancel"
sleep 1
echo "Rebooting in 3     Press Ctrl + C to cancel"
sleep 1
echo "Rebooting in 2     Press Ctrl + C to cancel"
sleep 1
echo "Rebooting in 1     Press Ctrl + C to cancel"
sleep 1
echo "Rebooting in 0     Press Ctrl + C to cancel"
echo "####################    Rebooting    #######################"

sudo reboot now
