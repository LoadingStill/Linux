#file to set make.conf config for amd64 with AMD gpu

#append to end of make.conf file
#-e meand to append new line when \n is seen
echo -e "#set GPU to AMD \nVIDEO_CARDS="amdgpu radeonsi"" >> /etc/portage/make.conf

VIDEO_CARDS="amdgpu radeonsi"
