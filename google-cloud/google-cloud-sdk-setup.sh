#!/bin/bash
#
echo "#########################################################################################"
echo "# Author    :  Rajan Bhattarai                                                          #"
echo "# Website   :  https://cdrrazan.com                                                     #"
echo "#########################################################################################"
echo ""
#Description
#Script to configure Google Cloud SDK in linux
#This setup were made using steps from https://cloud.google.com/sdk/docs/quickstart-linux
echo "################################################################"
echo "################# Configure Google Cloud SDK/Linux #############"
echo "################################################################"

#check python version

echo "Checking Python Version to 2.7"
pyv=`python -V`
read -p "32 or 64 bit architecture: " vers
if [ "$vers" = "64" ]
then
echo "Downloading Google SDK TAR file"
wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-214.0.0-linux-x86_64.tar.gz
tar zxvf google-cloud-sdk-* google-cloud-sdk
./google-cloud-sdk/install.sh
exec bash
gcloud init
gcloud auth list
gcloud config list
gcloud info
gcloud help
rm -r google-cloud-sdk-*

elif [ "$vers" = "32" ]
then
echo "Downloading Google SDK TAR file"
wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-214.0.0-linux-x86.tar.gz
tar zxvf google-cloud-sdk-* google-cloud-sdk
./google-cloud-sdk/install.sh
exec bash
gcloud init
gcloud auth list
gcloud config list
gcloud info
gcloud help
rm -r google-cloud-sdk-*

else
echo "Currently no configure available for given input parameter. Or is it windows?"
fi

echo "################################################################"
echo "################  Operation Successfully completed! ############"
echo "################################################################"
