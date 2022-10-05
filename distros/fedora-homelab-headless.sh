#!/bin/bash



#This 



echo "################################################################"
echo "#                                                              #"
echo "#                    Fedora Install Scrip                      #"
echo "#                                                              #"
echo "################################################################"



echo "####################    dnf settings    #######################"
sh software/dnf/edit-dnf-settings.sh #changes dnf to be faster (edit this bash script if you have a slower computer)
echo "####################    dnf settings    #######################"



echo "####################    Updating    #######################"
#sh software/dnf/system-upgrade.sh #system upgrade (COMMENT OUT AFTER FIRST RUN)
sh software/dnf/system-update.sh #system update (COMMENT OUT AFTER FIRST RUN)
sudo dnf autoremove
#sudo dnf distro-sync (if autoremove broke something, uncommend this command)
echo "####################    Updated    #######################"



echo "####################    Install repository    #######################"
sh software/dnf/repository-rpm-free.sh
sh software/dnf/repository-rpm-nonfree.sh
echo "####################    Install repository    #######################"



echo "####################    Nvidia Driver Installing    #######################"
#sh software/dnf/driver-nvidia-quadro-p2000.sh
echo "####################    Nvidia Driver Installing    #######################"



echo "####################    Installing Software   #######################"
#N/A
echo "####################    Software Installed    #######################"



echo "####################    After Software Updates    #######################"
sudo dnf upgrade -y
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
