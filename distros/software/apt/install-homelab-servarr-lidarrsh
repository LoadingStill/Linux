!#/bin/bash
echo "####################    Lidarr Installing   #######################"
sudo apt install curl mediainfo sqlite3 libchromaprint-tools
wget --content-disposition 'http://lidarr.servarr.com/v1/update/master/updatefile?os=linux&runtime=netcore&arch=x64'
tar -xvzf Lidarr*.linux*.tar.gz
sudo mv Lidarr/ /opt
sudo chown -R lidarr:media /opt/Lidarr
cat << EOF | sudo tee /etc/systemd/system/lidarr.service > /dev/null
[Unit]
Description=Lidarr Daemon
After=syslog.target network.target
[Service]
User=lidarr
Group=media
Type=simple

ExecStart=/opt/Lidarr/Lidarr -nobrowser -data=/var/lib/lidarr/
TimeoutStopSec=20
KillMode=process
Restart=on-failure
[Install]
WantedBy=multi-user.target
EOF
#did this work?
sudo systemctl -q daemon-reload
sudo systemctl enable --now -q lidarr
#rm Lidarr*.linux*.tar.gz
sudo journalctl --since today -u lidarr
echo "####################    Lidarr Installed   #######################"
