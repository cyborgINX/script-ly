#!/bin/bash
#
#########################################################################################
# Author    :  Rajan Bhattarai                                                          #
# Website   :  https://cdrrazan.com                                                     #
#########################################################################################

#########################################################################################                                                                                       #
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.                      #                                                                                       #
#########################################################################################
echo "################################################################"
echo "#############  Remove Docker Images and Containers! ############"
echo "################################################################"
echo ""
#Description
#Script to stop and remove all docker containers and images
echo "Removing all docker containers and images!"
#Stop all running docker containers
echo "Stopping all containers.. Please wait"
docker stop $(docker ps -aq)
echo "Stopping all containers.. Process completed!"

#Remove all docker containers
echo "Removing all  containers.. Please wait"
docker rm $(docker ps -aq)
echo "Removing all container.. Process completed!"

#Remove all docker images
echo "Removing all images.. Please wait"
docker rmi $(docker images -q)
echo "Removing all images.. Process completed!"

echo "################################################################"
echo "################  Operation Successfully completed! ############"
echo "################################################################"
