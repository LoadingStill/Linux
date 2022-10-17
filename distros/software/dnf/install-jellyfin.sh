#!/bin/bash
echo "####################    Jellyfin Installing   #######################"
#sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
#sudo dnf install https://repo.jellyfin.org/releases/server/fedora/stable/server/jellyfin-server-10.8.5-1.fc36.x86_64.rpm
#sudo dnf install https://repo.jellyfin.org/releases/server/fedora/stable/web/jellyfin-web-10.8.5-1.fc36.noarch.rpm
#sudo systemctl start jellyfin
#sudo systemctl enable jellyfin
#sudo firewall-cmd --permanent --add-service=jellyfin
#sudo systemctl reboot



mkdir /jellyifn
wget https://repo.jellyfin.org/releases/server/fedora/stable/server/jellyfin-server-10.8.5-1.fc36.x86_64.rpm -p /jellyfin
wget https://repo.jellyfin.org/releases/server/fedora/stable/web/jellyfin-web-10.8.5-1.fc36.noarch.rpm -p /jellyfin
cd /jellyfin
sudo rpm -i jellyfin-server-10.8.5-1.fc36.x86_64.rpm
sudo rpm -i jellyfin-web-10.8.5-1.fc36.noarch.rpm

#start on boot
sudo echo -e "[Unit]\nDescription=Jellyfin\nAfter=network.target\n\n[Service]\nType=simple\nUser=youruser\nRestart=always\nRestart=always\nExecStart=/opt/jellyfin/jellyfin.sh\n\n[Install]\nWantedBy=multi-user.target" >> /etc/systemd/system/jellyfin.service
sudo chmod 644 jellyfin.service
sudo systemctl daemon-reload
sudo systemctl enable jellyfin.service
sudo systemctl start jellyfin.service



echo 'jellyifn installed and set to start on boot' >> /home/$(whoami)/info/log #add info to log
echo "####################    Jellyfin Installed    #######################"



#jellyfin server and web versions see link: https://repo.jellyfin.org/releases/server/fedora/stable/
