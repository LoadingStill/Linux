!/bin/bash

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
echo "#                  Please restart your system!                 #"
echo "#                                                              #"
echo "################################################################"