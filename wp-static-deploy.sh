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
#Script to auto deploy the generated Static WP site to Github
#A deploy application used at github for static wordpress contents generated using simple-static plugin.
#Bash Script
#Please adjust the path to wherever the zip and wordpress directory are located and you want to operate and then run the following commands.
#1. chmod +x deploy-wp-static-github.sh
#2. ./deploy-wp-static-github.sh "Your commit msg."


#Check if unzip is installed or not
echo "################################################################"
echo "#####################  WP deploy in github! ####################"
echo "################################################################"
echo ""

if apt-cache policy unzip >/dev/null 2>&1; then
echo "Unzip is installed. Moving onto next step."
else
echo "Unzip wasn't detected. Installing Unzip... Please wait."
sudo apt-get --force-yes --yes install unzip
fi

#making dir and unzipping the content
mkdir wptmp
unzip wps.zip -d ~/wptmp

#making tmp directory for moving .git folder
mkdir gittmp
mv ~/wordpress/.git ~/gittmp
cp -a ~/wptmp/deploy-wp-static-github.sh ~/wordpress
mv ~/gittmp/.git ~/wordpress/
cd wordpress

#git commands
{
git add .
git commit -a -m "$1"
git push
}

#removing temp directory
rm -rf ~/wptmp
rm -rf ~/gittmp

echo "################################################################"
echo "################  Operation Successfully completed! ############"
echo "################################################################"


