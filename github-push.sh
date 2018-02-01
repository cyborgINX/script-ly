#!/bin/bash
#
###########################################################################################
# Author    :  Rajan Bhattarai
# Website   :  https://cdrrazan.com
###########################################################################################
###########################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
###########################################################################################

#Description
#integrate in your shell config file.

function gitup() {
    git add .
    git commit -a -m "$1"
    git push
}

