#!/bin/bash



#Vatiables
ip4=$(/sbin/ip -o -4 addr list eth0 | awk '{print $4}' | cut -d/ -f1) #IPv4 address
#ip6=$(/sbin/ip -o -6 addr list eth0 | awk '{print $4}' | cut -d/ -f1) #IPv6 address
#USERNAME="$(whoami)" #username (replaces $USERNAME to $(whoami)



#create file with info on what was done saved to /home/$(whoami)/servarrInfo
touch /home/$(whoami)/servarrInfo



echo "###############################################################################"
echo "#                                                                             #"
echo "#                    Ubuntu Server Homelab Install Scrip                      #"
echo "#                                                                             #"
echo "###############################################################################"



echo "####################    Updating    #######################"
sudo apt update -y
echo "####################    Updated    #######################"



echo "####################    Installing Software  #######################"
sh software/apt/install-homelab-jellyfin-ubuntu.sh #installs jellyfin
echo 'jellyfin installed - $ip4:8096' >> /home/$(whoami)/servarrInfo

sh software/ubuntu/20.04-homelab-install-sonarr.sh #installs sonarr
echo 'sonarr installed - $ip4:8989' >> /home/$(whoami)/servarrInfo

sh software/apt/install-homelab-servarr-radarr.sh #installs radarr
echo 'radarr installed - $ip4:7878' >> /home/$(whoami)/servarrInfo

sh software/apt/install-homelab-servarr-readarr.sh #installs readarr
echo 'readarr installed - $ip4:8787' >> /home/$(whoami)/servarrInfo

sh software/apt/install-homelab-servarr-prowlarr.sh #installs prowlarr
echo 'prowlarr installed - $ip4:9696' >> /home/$(whoami)/servarrInfo

sh software/ubuntu/20.04-homelab-install-sabnzbd.sh #installs sabnzbd
echo 'sabnzbd installed - $ip4:8080' >> /home/$(whoami)/servarrInfo
echo "####################    Software Installed   #######################"



#echo "####################    setting Up fstab     ####################"
#sudo mkdir /mnt/media
#sudo apt install nfs-common -y
#echo 'nfs-commons installed' >> /home/$(whoami)/servarrInfo
#sudo echo 'nfsIP:/mount/directory/folder  /mnt/media  nfs auto,nofail,noatime,nolock,intr,tcp,actimeo=1800 0 0' >> /etc/fstab
#echo "####################  fstab setup completed  ####################"



echo "####################    Updating    #######################"
sudo apt update -y
sudo apt upgrade -y
#sudo apt dist-upgrade
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
