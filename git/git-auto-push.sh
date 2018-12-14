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
#integrate in your shell config file.
echo "################################################################"
echo "###################  Github Push Shortcut! #####################"
echo "################################################################"
echo ""
echo "Locating your Shell config file.. Please wait"

shrc=`find . -name "~/.zshrc" -print`
if [ -z "$shrc" ]; then
    echo "Zsh Shell wasn't found. Trying to locate Bash Shell!"
else
    echo "function gitup() { \n
    git add . \n
    git commit -a -m "$1" \n
    git push \n
}\n " >> .zshrc
fi

shrc=`find . -name "~/.bashrc" -print`
if [ -z "$shrc" ]; then
    echo "Bash shell wasn't found. Contact your owner!"
else
    echo "function gitup() { \n
    git add . \n
    git commit -a -m "$1" \n
    git push \n
}\n " >> .bashrc
fi
echo "######################################################################"
echo "###################  Operation Successfully completed! ###############"
echo "######################################################################"

