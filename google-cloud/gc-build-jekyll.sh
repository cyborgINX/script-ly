#!/bin/bash
#
#########################################################################################
# Author    :  Rajan Bhattarai                                                          #
# Website   :  https://cdrrazan.com                                                     #
#########################################################################################

#Description
#Script to automate building jekyll blog to Google Cloud
echo "################################################################"
echo "################# AutoBuild Jekyll Blog to the GCP #############"
echo "################################################################"
echo ""

jekyll build && gsutil -m rsync -d -r _site/ gs://log.cdrrazan.com

echo "################################################################"
echo "################  Operation Successfully completed! ############"
echo "################################################################"
