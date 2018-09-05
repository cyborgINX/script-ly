#!/bin/bash
#
#########################################################################################
# Author    :  Rajan Bhattarai                                                          #
# Website   :  https://cdrrazan.com                                                     #
#########################################################################################

#Description
#Script to automate setting up rails project
echo "################################################################"
echo "#################  Make-your-CV rails app setup ################"
echo "################################################################"


#clone the repo from the source
git clone git@github.com:cdrrazan/make-your-cv.git && cd make-your-cv

#Gem installation for rails project
bundle install

# Checking and  Creating rails database for local environment
bundle exec rake db:migrate 2>/dev/null || bundle exec rake db:setup

#Checking if rails default port is used by another application \

touch tmpfile
netstat -tulpn  | grep :3000 > tmpfile

if [ -s proclisten.txt ]
  then
  rails server -p 3535
else
  rails server
fi
#remove tmpfile
rm tmpfile

echo "################################################################"
echo "################  Operation Successfully completed! ############"
echo "################################################################"
