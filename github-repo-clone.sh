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
# Cloning all github repo at once.
# Clones all public repositories from github. Replace YOURUSERNAME with the required one.

USER=YOURUSERNAME; PAGE=1
curl "https://api.github.com/users/$USER/repos?page=$PAGE&per_page=100" |
  grep -e 'git_url*' |
  cut -d \" -f 4 |
  xargs -L1 git clone
