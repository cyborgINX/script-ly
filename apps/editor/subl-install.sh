#!/bin/bash
#
echo "#########################################################################################"
echo "# Author    :  Rajan Bhattarai                                                          #"
echo "# Website   :  https://cdrrazan.com                                                     #"
echo "#########################################################################################"

#########################################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.                      #
#########################################################################################

rm /tmp/sublime-text_build-3126_amd64.deb

wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb -O /tmp/sublime-text_build-3126_amd64.deb
sudo dpkg -i /tmp/sublime-text_build-3126_amd64.deb

rm /tmp/sublime-text_build-3126_amd64.deb

##################################################################################################################

echo "######################################################################"
echo "###################  Operation Successfully completed! ###############"
echo "######################################################################"
