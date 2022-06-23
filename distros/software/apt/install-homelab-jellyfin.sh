!#/bin/bash
echo "########################  Jellyfin installing  #######################"
sudo apt install apt-transport-https gnupg lsb-release
curl -fsSL https://repo.jellyfin.org/debian/jellyfin_team.gpg.key | gpg --dearmor -o /etc/apt/trusted.gpg.d/debian-jellyfin.gpg
echo "deb [arch=$( dpkg --print-architecture )] https://repo.jellyfin.org/debian $( lsb_release -c -s ) main" | sudo tee /etc/apt/sources.list.d/jellyfin.list
sudo apt update
sudo apt install jellyfin
sudo service jellyfin status
sudo systemctl restart jellyfin
#sudo /etc/init.d/jellyfin stop
echo "########################  Jellyfin  installed  #######################"
