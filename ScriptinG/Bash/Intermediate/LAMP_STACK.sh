#!/bin/bash

# Update the package list ...
echo "updating package list  ..............."


sudo apt-get update -y

# install Mysql, Apache, PHP, lib-apache2-mod-php, php-mysql
echo "installing necessary packages for LAMP stack..................."

sudo apt-get install -y apache2 mysql-server php libapache2-mod-php php-mysql

# secure mysql/maridb installation

sudo mysql_secure_installation

# configure apache to start on boot

sudo systemctl enable apache2

sudo systemctl start apache2

# configure mysql to start on boot
sudo systemctl enable mysql
sudo systemctl start mysql


echo "LAMP stack setup completed....................."
echo "  --=....................>>>>>>>>>>>>>>>>"
echo "__________     |     ________________ "
