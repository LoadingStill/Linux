#!/bin/bash
# Script to determine Linux distribution and version

if [ -f /etc/os-release ]; then
    source /etc/os-release
    OS=$NAME
    VER=$VERSION_ID
elif [ -f /etc/lsb-release ]; then
    source /etc/lsb-release
    OS=$DISTRIB_ID
    VER=$DISTRIB_RELEASE
elif [ -f /etc/redhat-release ]; then
    OS=$(cat /etc/redhat-release | awk '{print $1}')
    VER=$(cat /etc/redhat-release | awk '{print $4}')
elif [ -f /etc/gentoo-release ]; then
    OS=$(cat /etc/gentoo-release | awk '{print $1}')
    VER=$(cat /etc/gentoo-release | awk '{print $5}')
else
    OS=$(uname -s)
    VER=$(uname -r)
fi

echo "You are using $OS version $VER."


#This script first checks for the presence of the /etc/os-release file, which is used by most modern Linux distributions to identify themselves.
#If this file is present, it sources the file and extracts the NAME and VERSION_ID variables. If the /etc/os-release file is not found, the script checks for other common distribution-specific files like /etc/lsb-release, /etc/redhat-release, and /etc/gentoo-release.
#If none of these files are found, the script falls back to using the uname command to retrieve the kernel name (usually "Linux") and kernel release version.
#After determining the OS and version, the script prints out a message to the user.
#Note that this script should work with any Linux distribution that provides one of the four files checked by the script.
