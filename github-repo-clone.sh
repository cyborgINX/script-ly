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
# Cloning all github repo at once.
# Clones all public repositories from github. Replace YOURUSERNAME with the required one.
echo "################################################################"
echo "###################  Github Repo Clone! ########################"
echo "################################################################"
echo ""
read -p 'Enter your github user-name: ' user
read -p 'Enter total page you want to clone: ' page
curl "https://api.github.com/users/$USER/repos?page=$PAGE&per_page=100" |
  grep -e 'git_url*' |
  cut -d \" -f 4 |
  xargs -L1 git clone

echo "################################################################"
echo "################  Operation Successfully completed! ############"
echo "################################################################"
