#!/bin/bash
echo "########################  bracula installing  #######################"

# Update package lists
sudo apt update

# Install Bacula server
sudo apt install bacula-server -y

# Install Bacula Web interface dependencies
sudo apt install apache2 php php-mysql php-gd php-json php-xml libapache2-mod-php -y

# Install Bacula Web interface
sudo apt install bacula-web -y

# Configure Bacula Web interface
sudo sed -i 's/$config\["authorized_ips"\] = array();/$config\["authorized_ips"\] = array\("192.168.122.0\/24"\);/g' /etc/bacula/bacula-web.conf

# Enable Apache modules
sudo a2enmod rewrite
sudo a2enmod headers

# Configure Apache for Bacula Web interface
sudo cp /etc/bacula/apache.conf /etc/apache2/conf-available/bacula-web.conf
sudo ln -s /etc/apache2/conf-available/bacula-web.conf /etc/apache2/conf-enabled/bacula-web.conf

# Restart Apache
sudo systemctl restart apache2

# Start Bacula director service
sudo systemctl start bacula-director

# Enable Bacula director service to start on boot
sudo systemctl enable bacula-director

# Start Bacula Web service
sudo systemctl start bacula-web

# Enable Bacula Web service to start on boot
sudo systemctl enable bacula-web

echo "Bacula server and Bacula Web interface have been installed successfully."
echo "You can access the Bacula Web interface by opening a web browser and navigating to: http://192.168.122.211/bacula-web/"
echo "Login using the default credentials: admin / admin"

echo "########################  bracula  installed  #######################"
