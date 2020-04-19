#!/bin/bash
#
echo "#########################################################################################"
echo "# Author    :  Rajan Bhattarai                                                          #"
echo "# Website   :  https://cdrrazan.com                                                     #"
echo "#########################################################################################"

#########################################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.                      #
#########################################################################################

rm /tmp/virtual-box.deb

wget http://download.virtualbox.org/virtualbox/5.1.12/virtualbox-5.1_5.1.12-112440~Ubuntu~xenial_amd64.deb -O /tmp/virtual-box.deb
#curl -o /tmp/code_1.5.3-1474533365_amd64.deb https://code.visualstudio.com/docs/?dv=linux64_deb
sudo dpkg -i /tmp/virtual-box.deb
#gdebi /tmp/code_1.5.3-1474533365_amd64.deb

rm /tmp/virtual-box.deb

##################################################################################################################

echo "######################################################################"
echo "###################  Operation Successfully completed! ###############"
echo "######################################################################"

