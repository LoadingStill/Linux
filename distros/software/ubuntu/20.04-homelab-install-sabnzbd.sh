!#/bin/bash
echo "####################    SABnzbd Installing  #######################"
sudo apt-get install software-properties-common
sudo add-apt-repository multiverse
sudo add-apt-repository universe
sudo add-apt-repository ppa:jcfp/nobetas  #stable
#sudo add-apt-repository ppa:jcfp/ppa     #alpha/beta/rc
sudo apt-get update && sudo apt-get dist-upgrade
sudo apt-get install sabnzbdplus

#
# edit /etc/default/sabnzbdplus
# USER=whoami
#

sudo systemctl daemon-reload

sudo service sabnzbdplus start  #starts sabnzbd at boot
#sudo service sabnzbdplus stop  ##starts sabnzbd at boot
