#!/bin/bash
#
echo "#########################################################################################"
echo "# Author    :  Rajan Bhattarai                                                          #"
echo "# Website   :  https://cdrrazan.com                                                     #"
echo "#########################################################################################"

#########################################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.                      #
#########################################################################################

rm /tmp/atom-amd64.deb

wget https://atom.io/download/deb -O /tmp/atom-amd64.deb
sudo dpkg -i /tmp/atom-amd64.deb

rm /tmp/atom-amd64.deb

echo "######################################################################"
echo "###################  Operation Successfully completed! ###############"
echo "######################################################################"