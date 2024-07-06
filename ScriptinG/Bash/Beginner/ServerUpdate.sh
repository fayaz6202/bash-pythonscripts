#!/bin/bash

#Updating the package list

echo "Updating the Package list....."

sudo apt-get update -y

#Upgrade all installed packages

echo "Upgrading installed packages...."

sudo apt-get upgrade -y

#Cleanup unnecessary packages

echo "Removing Unneccessary packages"

sudo apt-get autoremove -y

echo "System Upgrade complete"

echo  "-  -"
echo   '|' 
