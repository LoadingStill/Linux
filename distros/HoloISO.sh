#!/bin/bash

passwd #set root password

sudo pacman -Syu

#this will diable read only on your system, steamos locks this down as standard becuase most users will never need it unlocked.  To edit the fstab file (adding network drives that mount on boot), it will need to be unlocked
sudo steamos-readonly disable

sudo pacman-key --init
sudo pacman-key --populate
sudo pacman -S sshfs
sudo pacman -Syy nfs-utils
sudo pacman -Syu nano

sudo cp /etc/fstab /etc/fstab.bak #creates back up of the old fstab file (DO NOT UNCOMMENT THIS, if something goes wrong you want this for a restore point)
sudo chmod 777 /etc/fstab #makes fstab edditable, readable, and executable by anyone on your system (777)


#make your mount point here
#sudo mkdir /run/media/

#add your files for your nfs mount in here
#you should mount the nfs share to `/run/media/` for some readon SteamOS likes this location
#<your nas ip>:/<your mount address> /run/media/<mount name> nfs defaults,soft,timeo=1500,x-systemd.automount,vers=4.1,_netdev 0 0
sudo nano /etc/fstab

#relaunches the daemon that manages mount moints
sudo mount -a
#https://www.reddit.com/r/SteamDeck/comments/wwz7sm/mount_steamdeck_to_your_local_machine_synology/

sudo pacman -Sy holoiso-updateclient steamos-update check && steamos-update now #checks for updates

flatpak install https://downloads.1password.com/linux/flatpak/1Password.flatpakref #installs 1Password
flatpak install flathub org.libreoffice.LibreOffice #installs libreoffice
flatpak install flathub com.discordapp.Discord
flatpak install flathub net.davidotek.pupgui2
flatpak install flathub net.lutris.Lutris
flatpak install flathub com.obsproject.Studio
flatpak install flathub org.videolan.VLC
flatpak install flathub org.mozilla.firefox
flatpak install flathub com.visualstudio.code
flatpak install flathub org.mozilla.Thunderbird

sudo echo 'ILoveCandy' >> sudo /etc/pacman.conf
sudo echo 'VerbosePkgLists' >> sudo /etc/pacman.conf
sudo echo 'ParallelDownloads = 15' >> sudo /etc/pacman.conf
