!#/bin/bash
echo "####################    Radarr  Installing   #######################"
sudo apt install curl sqlite3
wget --content-disposition 'http://radarr.servarr.com/v1/update/master/updatefile?os=linux&runtime=netcore&arch=x64'
tar -xvzf Radarr*.linux*.tar.gz
sudo mv Radarr /opt/
sudo chown radarr:radarr -R /opt/Radarr
cat << EOF | sudo tee /etc/systemd/system/radarr.service > /dev/null
[Unit]
Description=Radarr Daemon
After=syslog.target network.target
[Service]
User=radarr
Group=media
Type=simple

ExecStart=/opt/Radarr/Radarr -nobrowser -data=/var/lib/radarr/
TimeoutStopSec=20
KillMode=process
Restart=on-failure
[Install]
WantedBy=multi-user.target
EOF
# did this work?
sudo systemctl -q daemon-reload
sudo systemctl enable --now -q radarr
#rm Radarr*.linux*.tar.gz (optional, removed the downloaded file, keeps installed files)
sudo journalctl --since today -u radarr
#http://localhost:7878 is the url you will use
echo "####################    Radarr  Installed    #######################"
