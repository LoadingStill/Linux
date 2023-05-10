[![GitHub Gist last commit](https://img.shields.io/github/gist/last-commit/Linux?style=for-the-badge)](https://img.shields.io/github/gist/last-commit/Linux?style=flat-square)
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/LoadingStill/Linux)

# Linux

The reason for this repository is to help auto set up some Linux distrobutions in one go, so you do not need to monitor your new set up and just let the software you want to, install.

## Goals
Be able to run get-distro-type.sh and have the version of Linux you are running and offer to install software for your system automatically, completely hands off.  So when you return to your desktop, you have a completely set up desktop ready to go.

## Where to Start?
If you are new to Linux, please read this whole page before doing anything.  I would recommend starting with Linux Mint Cinnamon Edition, this Linux distribution is a good place to start when switching from Windows to Linux.

#### Recommended Linux Distro For People New To Linux
Linux Mint desktop environment is similar enough to Windows that you will not feel overwhelmed too fast and be able to explore your new system with some comfort.
(you can press your mouse wheel on a link to open the link in new tab)
* Linux Mint Homepage: https://linuxmint.com/
* Download Page Link: https://linuxmint.com/edition.php?id=299
* Linux Mint Installation Guide Link: https://linuxmint-installation-guide.readthedocs.io/en/latest/

#### Recommended Linux Distro For Home Server
Ubuntu Server is a good distro to start with for running a HomeLab on Linux.   You can run a server on Windows 10, MacOS, and other Linux distros but Ubuntu Server is very common and a lot of guides will be avalable for this Operating System while you learn.
* Ubunt Homepage: https://ubuntu.com/
* Download Page: https://ubuntu.com/download/server
* Ubuntu Server Install Guide: https://ubuntu.com/tutorials/install-ubuntu-server#1-overview

I will be using Ubutnu Server and Debian Server in this guide.  Ubuntu is based on Debian, in the same way that Samsung Tyzen phone Operating system is based on Google's Android Operating System.  A lot of things are simular but there are differences.

### Disclaimer
#### These scripts have only been tested on my system or writen and NEVER tested.  Run at your own risk.  Please read the scripts to understand what they do.  Nothing is designed to damage your system in any way.  Only to help in first install of software and set up.  Anything beyond that use case I do not have the time to support.  I just wanted a quick way to install a new VM for my homelab and not need to be at my computer for the hour a full set up will take.  If you would like to help pease do.
#### This script dose check if the user is running as UID=0 (root) becuase this script installs software for you.  Sudo is needed for that.  For more info on what sudo is visit: https://howtoit.wiki/index.php/Sudo

### How To Use This Auto-Installing Scripts
#### The get-distro-type.sh script is in progress!!! Some of the scripts are not complete but are in progress.

1. When you have installed the Linux Distro of choice, you will then need to navigate to https://github.com/LoadingStill/Linux
    1. Download with the terminal
        1. `wget https://github.com/LoadingStill/Linux/archive/refs/heads/main.zip`
    2. Download with a Graphical User Interface
        1. Click the Green Button near the top right of the repository section and select "Download Zip"
        2. When the file is done downloading, you need to go to your downloads folder and right-click on the file you just downloaded.  Click unzip and hit enter
2. Now that the bash scripts are downloaded, we need to make sure the software is allowed to be executed (be able to run).  This is done by running a simple command in the terminal.
    1. Open the folder we just unzipped from step 3.
    2. And right click inside the folder and click open in terminal.
3. Run the command `chmod +x FileName`
    1. chmod - means Change Mode
    2. +x means to add executable permissions to the file
    3. chmod may require sudo permissions to run
    4. example of the command:
        1. `chmod +x get-distro-type.sh`
            1. changes permission of the single file "get-distro-type.sh" to add executable permissions
        2. `sudo chmod +x /distros/debian-all.sh`
            1. Adds execution permissions to the single file "debian-all.sh" in the folder "/distros"
4. you can check the permissions by running `ls -l`
    1. If you see an x in the string next to the file name you were adding execute permissions to, then you have done this correctly
5. Now to run the script you will type `./FileName`
    1. Example of the command:
        1. `./get-distro-type.sh`
            1. This command runs the file "get-distro-type.sh" and executes what ever that script is asking for.
        3. `./distros/debian-all.sh`
            1. This command runs the file "debian-all" in the folder "/distros" and executes what ever that script is asking for.
