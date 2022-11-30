#!/bin/bash
echo "####################    Jellyfin Installing   #######################"
#jellyfin offical instructions for installing jellyifn on fedora
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
  #You will need to enable rpmfusion as ffmpeg is a dependency of the jellyfin server package
sudo dnf install https://repo.jellyfin.org/releases/server/fedora/versions/stable/server/10.8.8/jellyfin-server-10.8.8-1.fc36.x86_64.rpm
sudo dnf install https://repo.jellyfin.org/releases/server/fedora/versions/stable/web/10.8.8/jellyfin-web-10.8.8-1.fc36.noarch.rpm
sudo systemctl start jellyfin
sudo systemctl enable jellyfin
sudo firewall-cmd --permanent --add-service=jellyfin
sudo systemctl reboot

#start on boot
  #change 'youruser' to the user you want to run this program at boot with 
sudo echo -e "[Unit]\nDescription=Jellyfin\nAfter=network.target\n\n[Service]\nType=simple\nUser=youruser\nRestart=always\nExecStart=/opt/jellyfin/jellyfin.sh\n\n[Install]\nWantedBy=multi-user.target" >> /etc/systemd/system/jellyfin.service
sudo chmod 644 jellyfin.service
sudo systemctl daemon-reload
sudo systemctl enable jellyfin.service
sudo systemctl start jellyfin.service



echo 'jellyifn installed and set to start on boot' >> /home/$(whoami)/info/log #add info to log
echo "####################    Jellyfin Installed    #######################"



#jellyfin server and web versions see
  #link: https://repo.jellyfin.org/releases/server/fedora/stable/
#jellyifn insatll documents
  #https://jellyfin.org/docs/general/administration/installing.html#linux
