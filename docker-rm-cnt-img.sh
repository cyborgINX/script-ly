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
#Script to stop and remove all docker containers and images

#Stop all running docker containers
docker stop $(docker ps -aq)

#Remove all docker containers
docker rm $(docker ps -aq)

#Remove all docker images
docker rmi $(docker images -q)
