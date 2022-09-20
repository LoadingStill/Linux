#Current Project... Will take some time new to Gentoo

#!/bin/bash



echo "################################################################"
echo "#                                                              #"
echo "#                    Gentoo Install Scrip                      #"
echo "#                                                              #"
echo "################################################################"

emerge www-apps/jellyfin


sudo rc-service jellyfin start
sudo rc-service jellyfin enable
#sudo rc-service jellyfin stop
#sudo systemctl start jellyfin.service
#sudo systemctl enable jellyfin.service
#sudo systemctl stop jellyfin.service
