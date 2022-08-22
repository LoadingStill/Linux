#!/bin/bash

#file to set make.conf config for amd64 with AMD gpu
#-e meand to append new line when \n is seen

#Sets CFLAGS from -02 -pipe to -march=native -02 -pipe (define the build and compile flags that will be used for all package deployments)
sed 's/CFLAGS="-O2 -pipe"/CFLAGS="-march=native -O2 -pipe"' /etc/portage/make.conf

#get GPU to AMD
echo -e "#set GPU to AMD" >> /etc/portage/make.conf
echo -e "VIDEO_CARDS="amdgpu radeonsi"" >> /etc/portage/make.conf








echo "#Acceptable Licenses" >> /etc/portage/make.conf
echo "ACCEPT_LICENSE="*"" >> /etc/portage/make.conf














#Formatting Possibility?
#!/bin/bash
#touch /etc/portage/make.conf
#{
#echo "VIDEO_CARDS="amdgpu radeonsi""
#echo ACCEPT_LICENSE="*"
#} >> /etc/portage/make.conf
#cat /etc/portage/make.conf
