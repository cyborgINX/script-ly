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
# Script to fix old git commit author
echo "################################################################"
echo "###################  Github Commit Author! ########################"
echo "################################################################"
echo ""

git filter-branch --env-filter '
OLD_EMAIL=OLD_EMAIL
CORRECT_NAME=CORRECT_NAME
CORRECT_EMAIL=CORRECT_EMAIL
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags

echo "################################################################"
echo "################  Operation Successfully completed! ############"
echo "################################################################"
