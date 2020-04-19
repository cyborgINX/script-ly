#!/bin/bash
#
echo "#########################################################################################"
echo "# Author    :  Rajan Bhattarai                                                          #"
echo "# Website   :  https://cdrrazan.com                                                     #"
echo "#########################################################################################"

#########################################################################################
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.                      #
#########################################################################################

git init
git config --global user.name "Rajan Bhattarai"
git config --global user.email "cdrrazan@gmail.com"
sudo git config --system core.editor nano
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'
git config --global push.default simple

echo "######################################################################"
echo "###################  Operation Successfully completed! ###############"
echo "######################################################################"

