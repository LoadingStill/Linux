#Current Project... Will take some time new to Gentoo

#!/bin/bash



echo "################################################################"
echo "#                                                              #"
echo "#                    Gentoo Install Scrip                      #"
echo "#                                                              #"
echo "################################################################"

#Important
#It is important to read and follow any and all news items that may be listed after performing a repository sync.


#To update all installed packages to the latest available versions, first update the Gentoo repository with emaint:
sudo emaint --auto sync

#Run emerge to update the whole system, with dependencies:
emerge --ask --verbose --update --deep --newuse @world


#Important
#Pay attention to any information provided by Portage at the end of the update. Some of this information may be available in the Portage log.

#If Portage reports dependency issues, sometimes using the --backtrack=30 (or an even higher number) can help. By default, Portage has a relatively low limit on how far it tries to resolve dependencies (for performance reasons), occasionally it is not enough.
#Any configuration file changes should be addressed, this can be managed by dispatch-conf:

sudo dispatch-conf
