echo "####################    dnf max parallel downloads    #######################"
echo 'max_parallel_downloads=10' | sudo tee -a /etc/dnf/dnf.conf #changes dnf from single package update/install at once to 10 at once (change to lower number for older systems)
echo 'fastestmirror=True' | sudo tee -a /etc/dnf/dnf.conf #sets dnf to use the fastest mirror
echo "####################    dnf max parallel downloads    #######################"
