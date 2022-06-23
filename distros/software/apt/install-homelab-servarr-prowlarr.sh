#!/bin/bash
echo "####################    Prowlarr Installing  #######################"
sudo apt install curl sqlite3
wget --content-disposition 'http://prowlarr.servarr.com/v1/update/develop/updatefile?os=linux&runtime=netcore&arch=x64'
tar -xvzf Prowlarr*.linux*.tar.gz
sudo mv Prowlarr/ /opt
cat << EOF | sudo tee /etc/systemd/system/prowlarr.service > /dev/null
[Unit]
Description=Prowlarr Daemon
After=syslog.target network.target
[Service]
User=prowlarr
Group=prowlarr
Type=simple

ExecStart=/opt/Prowlarr/Prowlarr -nobrowser -data=/var/lib/prowlarr/
TimeoutStopSec=20
KillMode=process
Restart=on-failure
[Install]
WantedBy=multi-user.target
EOF
#did this work?
sudo systemctl -q daemon-reload
sudo systemctl enable --now -q prowlarr
#rm Prowlarr*.linux*.tar.gz
sudo journalctl --since today -u prowlarr
echo "####################    Prowlarr Installed   #######################"
