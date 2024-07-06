#!/bin/bash

# Update package list
sudo apt-get update

# Install Nginx, MySQL/MariaDB, PHP, and other necessary packages
sudo apt-get install -y nginx mysql-server php-fpm php-mysql

# Secure MySQL/MariaDB installation (optional but recommended)
sudo mysql_secure_installation

# Configure Nginx to start on boot
sudo systemctl enable nginx

# Start Nginx
sudo systemctl start nginx

# Configure MySQL/MariaDB to start on boot
sudo systemctl enable mysql

# Start MySQL/MariaDB
sudo systemctl start mysql

# Display status and information
echo "LEMP stack setup complete."

