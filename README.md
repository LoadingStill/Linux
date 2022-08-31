# Linux

The reason for this repository is to help auto set up some Linux distrobutions in one go, so you do not need to monitor your new set up and just let the software you want to, install.


## Where to Start?
If you are new to Linux, please read this whole page before doing anything.  I would recommend starting with Linux Mint Cinnamon Edition, this Linux distribution is a good place to start when switching from Windows to Linux.

#### Recommended Linux Distro For People New To Linux
Linux Mint desktop environment is similar enough to Windows that you will not feel overwhelmed too fast and be able to explore your new system with some comfort.

* Linux Mint Homepage: https://linuxmint.com/
  
* Download Page Link: https://linuxmint.com/edition.php?id=299
  
* Linux Mint Installation Guide Link: https://linuxmint-installation-guide.readthedocs.io/en/latest/

#### How To Use This Auto-Installing Scripts
1. When you have installed the Linux Distro of choice you will then need to navigate to https://github.com/LoadingStill/Linux
2. Click the Green Button near the top right of the repository section and select "Download Zip"
3. Now that the bash scripts are downloaded we need to make sure the software is allowed to be executed (be able to run).  This is done by running a simple command in the terminal.
    1. Open the folder we just downloaded form step 2.
    2. And righ click inside the folder and click open in terminal.
4. Run the command "chmod +x <name>"
    1. chmod - meand Change Mode
    2. +x means to add executable permissions to the file
    3. chmod may require sudo permissions to run
    4. example of the command:
        1. chmod +x get-distro-type.sh
            1. changes permission of the single file get-distro-type.sh to add executable permissions
        2. sudo chmod +x /distros/debian-all.sh
            2. adds execution permissions to the single file debian-all.sh in the file /distros
5. you can check the permissions by running ls -l
    5. if you see an x in the string next to the file name you were adding exeute premissiosn to then you have done this correctly

## Goals
Be able to run get-distro-type.sh and have the version of Linux you are running and offer to install software for your system automatically, completely hands off.  So when you return to your desktop you have a completely set up desktop ready to go.
 May 2007.
