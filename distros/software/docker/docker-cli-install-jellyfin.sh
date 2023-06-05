#!/bin/bash
# Sources: https://jellyfin.org/docs/general/installation/container

# 1. Pull the Image
docker pull jellyfin/jellyfin

# 2. make the folders for the container
mkdir -p /docker/jellyfin/config
mkdir -p /docker/jellyfin/cache

# 3. Create storage for the container that docker reconizes
docker volume create jellyfin-config
docker volume create jellyfin-cache

# NOTE: The default network mode for Docker is bridge mode. Bridge mode will be used if host mode is omitted.
#       Using host networking (--net=host) is optional but required in order to use DLNA.

# 4.
docker run -d \
 --name jellyfin \
 --user uid:gid \
 --net=host \
 --volume /path/to/config:/config \ # Alternatively --volume jellyfin-config:/config
 --volume /path/to/cache:/cache \ # Alternatively --volume jellyfin-cache:/cache
 --mount type=bind,source=/path/to/media,target=/media \
 --restart=unless-stopped \
 jellyfin/jellyfin
 
 
 # NOTE: Bind Mounts are needed to pass folders from the host OS to the container OS whereas volumes are maintained by 
 #       Docker and can be considered easier to backup and control by external programs. For a simple setup, 
 #       it's considered easier to use Bind Mounts instead of volumes. Multiple media libraries can be bind mounted if needed:
 
 # 4.5
# --mount type=bind,source=/path/to/media1,target=/media1
# --mount type=bind,source=/path/to/media2,target=/media2,readonly
# ...etc
 
 
 
 
