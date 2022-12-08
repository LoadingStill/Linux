next step is to remove numbers from os-release



#!/bin/bash

chmod -R +x /distros #makes everything in the /distros folder executable (does not run the programs, this only makes them able to run when/if the user wants or allows this script to auto run everything for the use)
        #uname -v
        egrep '^(ID_LIKE|VERSION|NAME)=' /etc/os-release

#step 1:
#Get distro type

#distro variable is used to tell what distro you are using
        distro=`sed -n 5p /etc/os-release`
        echo "$distro"

#Step 2:
#Remove all expect the name of the distro ex: keep ubuntu remove lts and version number
        remove="PRETTY_NAME=""
        echo "${distro//$remove/ } " | tr -d '"'

#removes qoutes
#| tr -d  '"'      "

#Step 4:
#take remaining words from step 2 and search the /distros/scripts for any script with the name of the distro in it.


#step 5:
#tell the user what distro they are using and ask

#shortned variable is the output of step 4 removing fluf from print out of step one.
        echo "$shortned"


#Step 6:
#offer to run a set up script from the scripts that match the $shortned variable in the name of the script




        #uname -v (back up)



#https://linuxhint.com/remove_characters_string_bash/

#http://linuxmafia.com/faq/Admin/release-files.html
