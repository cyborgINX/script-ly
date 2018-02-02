#!/bin/bash
#
#########################################################################################
# Author    :  Rajan Bhattarai                                                          #
# Website   :  https://cdrrazan.com                                                     #
#########################################################################################

#########################################################################################                                                                                       #
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.                      #                                                                                       #
#########################################################################################

#Description
#Script to install wordpress in DO machine via docker
echo "################################################################"
echo "#################  WP in DO machine via Docker! ################"
echo "################################################################"
echo ""

#SSH
#ssh root@MachineB 'bash -s' < wp-docker-DO.sh

#update/upgrade/clean machine
echo "Updating and upgrading your system.. Pleae wait!"
sudo apt-get -y update && sudo apt-get -y upgrade
sudo apt-get -y autoremove && sudo apt-get -y autoclean
echo ""
echo "Successfully updated your system!"
#cd to home

cd ~
echo "Cloning Some Required Repos from Github.. Please wait!"
#clone github repo in home {plz config .git}
git clone git@github.com:cdrrazan/compose-ly.git
git clone git@github.com:cdrrazan/script-ly.git
echo "Repositories have been Successfully cloned."

#enter into wp-setup dir
cd compose-ly/wordpress-setup/

echo "Checking Requirements for the system.. Please wait!"
#check if docker-ce is installed or not
if
sudo apt-cache policy docker >/dev/null 2>&1; then
echo "Docker is installed. Moving onto next step."
else
echo "Docker wasn't detected. Installing Docker... Please wait."
#update apt package
sudo apt-get update
#packages to allow apt to use a repository over HTTPS:
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#update apt package
sudo apt-get update
#install docker-ce
sudo apt-get -y install docker-ce
fi
echo "Docker is successfully installed!"
#check if docker-compose package is installed
if
apt-cache policy docker >/dev/null 2>&1; then
echo "Docker-compose is installed. Moving onto next step."
else
echo "Docker-compose wasn't detected. Installing Docker-compose... Please wait."
sudo apt-get -y install docker-compose
fi
echo "Docker-compose is successfully installed!"

#starting docker-compose for wordpress
#initiates both wp and phpmyadmin
docker-compose up
echo "Successfully started Docker Operation!"

echo "################################################################"
echo "################  Operation Successfully completed! ############"
echo "################################################################"

