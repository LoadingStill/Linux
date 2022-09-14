#!/bin/bash



#Vatiables
ip4=$(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1) #IPv4 address
#ip6=$(/sbin/ip -o -6 addr list eth0 | awk '{print $4}' | cut -d/ -f1) #IPv6 address
USERNAME="$(whoami)" #username



#create file with info on what was done saved to /home/$USERNAME/servarrInfo
touch /home/$USERNAME/servarrInfo



echo "###############################################################################"
echo "#                                                                             #"
echo "#                    Ubuntu Server Homelab Install Scrip                      #"
echo "#                                                                             #"
echo "###############################################################################"



echo "####################    Updating    #######################"
sudo apt update -y
sudo apt upgrade -y
#sudo apt dist-upgrade
echo "####################    Updated    #######################"



echo "####################    Installing Software  #######################"
sh software/apt/install-homelab-jellyfin.sh #installs jellyfin
echo 'jellyfin installed - $ip4:8096' >> /home/$USERNAME/servarrInfo

sh software/apt/install-homelab-servarr-sonarr.sh #installs sonarr
echo 'sonarr installed - $ip4:8989' >> /home/$USERNAME/servarrInfo

sh software/apt/install-homelab-servarr-radarr.sh #installs radarr
echo 'radarr installed - $ip4:7878' >> /home/$USERNAME/servarrInfo

sh software/apt/install-homelab-servarr-readarr.sh #installs readarr
echo 'readarr installed - $ip4:8787' >> /home/$USERNAME/servarrInfo

sh software/apt/install-homelab-servarr-prowlarr.sh #installs prowlarr
echo 'prowlarr installed - $ip4:9696' >> /home/$USERNAME/servarrInfo

sh software/apt/install-homelab-sabnzbd.sh #installs sabnzbd
echo 'sabnzbd installed - $ip4:8080' >> /home/$USERNAME/servarrInfo
echo "####################    Software Installed   #######################"



#echo "####################    Setting Up fstab     ####################"
#sudo mkdir /mnt/media
#sudo apt install nfs-common -y
#sudo echo 'nasIP:/mount/directory/folder  /mnt/media  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> /etc/fstab
#echo "####################  fstab setup completed  ####################"



echo "####################    Updating    #######################"
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
echo "####################    Updated    ########################"



echo "#########################################################################################"
echo "#                                                                                       #"
echo "#                    Completed Ubuntu Server Homelab Install Scrip                      #"
echo "#                                                                                       #"
echo "#########################################################################################"



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
