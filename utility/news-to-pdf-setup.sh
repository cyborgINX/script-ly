#!/bin/bash
#
#########################################################################################
# Author    :  Rajan Bhattarai                                                          #
# Website   :  https://cdrrazan.com                                                     #
#########################################################################################

#########################################################################################                                                                                       #
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.                      #                                                                                       #
#########################################################################################

# Description
# Program to download the epaper from the kantipur.com
# Available Epapers by ekantipur media
#    Kantipur
#    The Kathmandu Post
#    Saptahik
#    Nepal
# 
# Epapers will be downloaded in the following format: newspapername-year-month-day

echo "################################################################"
echo "###################  News-2-PDF downloader! ####################"
echo "################################################################"
echo ""
echo "Checking Date with your system.. Please wait!"
# checking the date with the system
y=$(date +%Y)
# prints the year in full format. Eg: 2017
m=$(date +%m)
# prints the month. Eg: 04
d=$(date +%d)
# prints the day. Eg: 12
w=$(date +%u)
# prints the week day. Eg: 3=wednesday

# using wget
# downloading the kantipur[daily-nepali]
# checking the date with the system

# checking if directory already exist in the system
echo "Folder may exist. It will automatically enter into the directory if present!"
cd ~ 
if [ -d "~/Kantipur" ]; then 
cd Kantipur
else 
mkdir Kantipur && cd $_
fi 
# creating date wise directory for saving the epaper
mkdir epaper-$y-$m-$d && cd $_

# downloading kantipur dainik[daily-nepali]
echo ""
echo "Downloading Kantipur Dainik for today.. Please wait!"
wget -O kantipur-$y-$m-$d "http://epaper-beta.ekantipur.com/kantipur/download/$y-$m-$d"
echo "Successfully downloaded Kantipur for today!"

# downloading the kathmandu post[daily-english]
echo ""
echo "Downloading The Kathmandu Post for today.. Please wait!"
wget -O kathmandupost-$y-$m-$d "http://epaper-beta.ekantipur.com/kathmandupost/download/$y-$m-$d"
echo "Successfully downloaded The Kathmandu Post for today!"

# Saptahik is released every friday!
# checking the system date to match if it is friday
# monday=1
if [ $w == 5 ]; then
echo ""
echo "Downloading Saptahik for this weekend.. Please wait!"
wget -O saptahik-$y-$m-$d "http://epaper-beta.ekantipur.com/saptahik/download/$y-$m-$d"
echo "Successfully downloaded Saptahik for this week!"
else
echo "Saptahik isn't available for today! Wait till Friday!"
fi

# Nepal magazine is released every Sunday
# checking the system date to match if it is Sunday
# monday=1
if [ $w == 7 ]; then
echo ""
echo "Downloading Nepal for this weekend.. Please wait!"
wget -O nepal-$y-$m-$d "http://epaper-beta.ekantipur.com/nepal/download/$y-$m-$d"
echo "Successfully downloaded Nepal for this weekend!"
else
echo "Nepal magazine isn't available for today! Wait till Sunday!"
fi
echo "################################################################"
echo "################  Operation Successfully completed! ############"
echo "################################################################"
