#!/bin/bash
#uname -v

#step 1:
#Get distro type

#distro variable is used to tell what distro you are using
distro=`sed -n 5p /etc/os-release`
echo "$distro"

#Step 2:
#Remove all expect the name of the distro ex: keep ubuntu remove lts and version number


#Step 4:
#take remaining words from step 2 and search the /distros/scripts for any script with the name of the distro in it.


#step 5:
#tell the user what distro they are using and ask

#shortned variable is the output of step 4 removing fluf from print out of step one.
echo "$shortned"





#uname -v (back up)
