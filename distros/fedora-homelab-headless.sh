#!/bin/bash



echo "########################################################################################"
echo "#                                                                                      #"
echo "#                    Fedora Homelab Headless Server Install Scrip                      #"
echo "#                                                                                      #"
echo "########################################################################################"



echo "####################    editing dnf settings    #######################"
sh software/dnf/edit-dnf-settings.sh #changes dnf to be faster (edit this bash script if you have a slower computer)
echo "####################    edited dnf settings     #######################"



echo "####################    editing fstab settings    #######################"
sh software/dnf/edit-fstab-add-nfs.sh #YOU NEED TO EDIT THIS FILE FOR THIS TO WORK
echo "####################    edited fstab settings     #######################"



echo "####################    Updating    #######################"
#sh software/dnf/system-upgrade.sh #system upgrade (COMMENT OUT AFTER FIRST RUN)
sh software/dnf/system-update.sh #system update (COMMENT OUT AFTER FIRST RUN)
#sudo dnf distro-sync (if autoremove broke something, uncommend this command)
echo "####################    Updated    #######################"



echo "####################    Installing repository    #######################"
sh software/dnf/repository-rpm-free.sh                 #installs free rmp repository
sh software/dnf/repository-rpm-nonfree.sh              #installs non-free rpm repository
echo "####################    Installed repository     #######################"



echo "####################    Nvidia Driver Installing    #######################"
#sh software/dnf/driver-nvidia-quadro-p2000.sh
echo "####################    Nvidia Driver Installed     #######################"



echo "####################    Installing Software   #######################"

echo "####################    System Administration Tools   #######################"
sh software/dnf/system-admin-tool-cockpit-project.sh        #installs cockpit project
sh software/dnf/system-admin-tool-grafana-oss.sh            #installs grafana oss
echo "####################    System Ddministration Tools   #######################"

echo "####################    Self-Hosted Software   #######################"
sh software/dnf/install-jellyfin.sh                  #installs jellyfin
echo "####################    Self-Hosted Software   #######################"

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
