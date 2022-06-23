!#/bin/bash
echo "########################  Readarr Installing  #######################"
sudo apt install curl sqlite3
wget --content-disposition 'http://readarr.servarr.com/v1/update/develop/updatefile?os=linux&runtime=netcore&arch=x64'
tar -xvzf Readarr*.linux*.tar.gz
sudo mv Readarr /opt/
sudo chown readarr:readarr -R /opt/Readarr
cat << EOF | sudo tee /etc/systemd/system/readarr.service > /dev/null
[Unit]
Description=Readarr Daemon
After=syslog.target network.target
[Service]
User=readarr
Group=media
Type=simple

ExecStart=/opt/Readarr/Readarr -nobrowser -data=/var/lib/readarr/
TimeoutStopSec=20
KillMode=process
Restart=on-failure
[Install]
WantedBy=multi-user.target
EOF
# did this work?
sudo systemctl -q daemon-reload
sudo systemctl enable --now -q readarr
#rm Readarr*.linux*.tar.gz
sudo journalctl --since today -u readarr
echo "########################  Readarr Installed  #######################"
