#!/bin/bash



echo "########################################################################################"
echo "#                                                                                      #"
echo "#                    Fedora Homelab Headless Server Install Scrip                      #"
echo "#                                                                                      #"
echo "########################################################################################"



echo "####################    create log & info    #######################"
sh software/dnf/system-log.sh #makes a log that shows what has been done with this script. (I am still adding this funtion in)
echo "####################    log file created     #######################"



echo "####################    editing dnf settings    #######################"
sh software/dnf/edit-dnf-settings.sh #changes dnf to be faster (edit this bash script if you have a slower computer)
echo "####################    edited dnf settings     #######################"



echo "####################    editing fstab settings    #######################"
#sh software/dnf/edit-fstab-add-nfs.sh #YOU NEED TO EDIT THIS FILE FOR THIS TO WORK
echo "####################    edited fstab settings     #######################"



echo "####################    Installing repository    #######################"
sh software/dnf/repository-rpm-free.sh                     #installs free rmp repository
sh software/dnf/repository-rpm-nonfree.sh                  #installs non-free rpm repository
#sh software/dnf-flatpack/repository-add-fedora-flathub.sh  #installs fedora flatpack repository
sh software/dnf-flatpack/repository-add-flathub.sh         #installs flathub repository
echo "####################    Installed repository     #######################"



echo "####################    Updating    #######################"
#sh software/dnf/system-upgrade.sh #system upgrade (COMMENT OUT AFTER FIRST RUN)
sh software/dnf/system-update.sh #system update (COMMENT OUT AFTER FIRST RUN)
#sudo dnf distro-sync (if autoremove broke something, uncommend this command)
echo "####################    Updated    #######################"



echo "####################    Nvidia Driver Installing    #######################"
#sh software/dnf/driver-nvidia-quadro-p2000.sh
#sh software/dnf/driver-nvidia-gtx-1060.sh
echo "####################    Nvidia Driver Installed     #######################"



echo "####################    Installing Software   #######################"
sh software/dnf-flatpack/install-flatpack-jellyfin.sh #installs jellyfin desktop client
echo "####################    Software Installed    #######################"



echo "####################    After Software Install Updates    #######################"
sudo dnf upgrade -y
sudo dnf autoremove
echo "####################    Completed    #######################"



echo "##################################################################################################"
echo "#                                                                                                #"
echo "#                    Completed Fedora Homelab Headless Server Install Scrip                      #"
echo "#                                                                                                #"
echo "##################################################################################################"



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
