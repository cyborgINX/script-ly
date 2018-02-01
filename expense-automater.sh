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
#Calculate the average Expense per user

#reads username
read -p 'User: ' user
#checking the date with the system
y=$(date +%Y)
#prints the year in full format. Eg: 2017
m=$(date +%m)
#prints the month. Eg: 04
d=$(date +%d)
#prints the time. Eg: 04
t=$(date +%T)

if d=1
then
touch sabin-rec.txt
touch achyut-rec.txt
touch rajan-rec.txt
fi

if [ $user='Sabin' ]
then
read -p 'New Item: ' itemlist
read -p 'Total Expense: ' itemprice

echo Thanks, Sabin has made total expense of $itemprice for $itemlist in $y-$m-$d.
rec.sabin=$y-$m-$d: $itemprice
rec.sabin >> sabin-rec.txt
fi

if $user='Achyut' ]
then
read -p 'New Item: ' itemlist
read -p 'Total Expense: ' itemprice

echo Thanks, Achyut has made total expense of $itemprice for $itemlist in $y-$m-$d.
rec.achyut = $y-$m-$d: $itemprice
rec.achyut >> achyut-rec.txt
fi

else [ $user='Rajan' ]
then
read -p 'New Item: ' itemlist
read -p 'Total Expense: ' itemprice

echo Thanks, Rajan has made total expense of $itemprice for $itemlist in $y-$m-$d.
rec.rajan = $y-$m-$d: $itemprice
rec.rajan >> rajan-rec.txt
fi


