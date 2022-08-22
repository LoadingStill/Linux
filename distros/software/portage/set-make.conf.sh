#!/bin/bash

#file to set make.conf config for amd64 with AMD gpu
#-e meand to append new line when \n is seen

#get GPU to AMD
echo -e "#set GPU to AMD" >> /etc/portage/make.conf
echo -e "VIDEO_CARDS="amdgpu radeonsi"" >> /etc/make.conf


