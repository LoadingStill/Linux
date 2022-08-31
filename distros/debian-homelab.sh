#!/bin/bash



echo "########################################################################"
echo "#                                                                      #"
echo "#                    Debian Homelab Install Scrip                      #"
echo "#                                                                      #"
echo "########################################################################"



echo "####################    Updating    #######################"
sudo apt update
echo "####################    Updated    #######################"



echo "####################    Installing Software  #######################"
sh software/apt/install-homelab-jellyfin.sh #installs jellyfin
sh software/apt/install-homelab-servarr-sonarr.sh #installs sonarr
sh software/apt/install-homelab-servarr-radarr.sh #installs radarr
sh software/apt/install-homelab-servarr-readarr.sh #installs readarr
sh software/apt/install-homelab-servarr-prowlarr.sh #installs prowlarr
sh software/apt/install-homelab-sabnzbd.sh #installs prowlarr
echo "####################    Software Installed   #######################"


echo "####################    Updating    #######################"
sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
echo "####################    Updated    ########################"



eecho "#######################################################################"
echo "#                                                                      #"
echo "#                    Completed Debian Homelab.sh                       #"
echo "#                                                                      #"
echo "########################################################################"



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
