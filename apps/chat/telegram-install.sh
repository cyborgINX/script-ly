#!/bin/bash
#
echo "#########################################################################################"
echo "# Author    :  Rajan Bhattarai                                                          #"
echo "# Website   :  https://cdrrazan.com                                                     #"
echo "#########################################################################################"

#########################################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.                      #
#########################################################################################

sudo add-apt-repository -y ppa:atareao/telegram
sudo apt-get update
sudo apt-get install telegram -y

echo "fixing hardcoded icon"
old="Icon=\/opt\/telegram\/telegram.svg"
new="Icon=telegram"
location="/usr/share/applications/telegram.desktop"
sudo sed -i s/$old/$new/g $location

echo "######################################################################"
echo "###################  Operation Successfully completed! ###############"
echo "######################################################################"
