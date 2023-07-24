!#/bin/bash
echo "########################  Jellyfin installing  #######################"
# use if you have `curl` installed
curl https://repo.jellyfin.org/install-debuntu.sh | sudo bash

# use if you have `wget` installed
# wget -O- https://repo.jellyfin.org/install-debuntu.sh | sudo bash

# You only need to run one of the 2 line.
echo "########################  Jellyfin  installed  #######################"
