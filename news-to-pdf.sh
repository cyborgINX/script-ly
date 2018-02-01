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
#program to download the epaper from the kantipur.com
#Available Epapers by ekantipur media
#    Kantipur
#    The Kathmandu Post
#    Saptahik
#    Nepal
# 1. Clone/Download the zip.
# 2. Give execute permission to the script file by  chmod +x ekantipur.sh
# 3. Run the script ./ekantipur.sh .
# Epapers will be downloaded in the following format: Newspapername-year-month-day.pdf
# Replace ~/Newspaper/kantipur/*/* in the download link with the directory to wherever you want to download!

#checking the date with the system

y=$(date +%Y)
#prints the year in full format. Eg: 2017
m=$(date +%m)
#prints the month. Eg: 04
d=$(date +%d)
#prints the day. Eg: 12
w=$(date +%u)
#prints the week day. Eg: 3=wednesday

#using wget
#downloading the kantipur[daily-nepali]
cd ~ && mkdir Kantipur && cd kantipur
wget -O kantipur-$y-$m-$d.pdf "http://epaper.ekantipur.com/epaper/kantipur/$y-$m-$d/$y-$m-$d.pdf"
#downloading the kathmandu post[daily-english]
wget -O thekathmandupost-$y-$m-$d.pdf "http://epaper.ekantipur.com/epaper/the-kathmandu-post/$y-$m-$d/$y-$m-$d.pdf"

#Saptahik is released every friday!
#checking the system date to match if it is friday
#monday=1
if [ $w == 5 ]
then
wget -O saptahik-$y-$m-$d.pdf "http://epaper.ekantipur.com/epaper/saptahik/$y-$m-$d/$y-$m-$d.pdf"
else
echo "Saptahik isn't available for today! Wait till Friday!"
fi

#Nepal magazine is released every Sunday
#checking the system date to match if it is Sunday
#monday=1
if [ $w == 7 ]
then
wget -O nepal-$y-$m-$d.pdf "http://epaper.ekantipur.com/epaper/nepal/$y-$m-$d/$y-$m-$d.pdf"
else
echo "Nepal magazine isn't available for today! Wait till Sunday!"
fi

