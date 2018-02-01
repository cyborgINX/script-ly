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
#Ubuntu-17 installation  program after clean install via script file.

# repo for grub-customizer
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo add-apt-repository ppa:peterlevi/ppa -y
sudo apt-get -y update

# donwloading and installing google chrome for netflix e.g.
echo "downloading google chrome latest stable edition"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y libcurl3
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
sudo apt install -f -y

# repo for spotify --> https://www.spotify.com/be-nl/download/linux/
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt install spotify-client

# Downloading and installing latest sublime text 3
wget https://download.sublimetext.com/sublime-text_build-3114_amd64.deb
sudo dpkg -i sublime-text_build-3114_amd64.deb
rm sublime-text_build-3114_amd64.deb

#software from 'normal' repositories
echo "software from 'normal' repositories"
sudo apt install -y catfish clementine curl evolution focuswriter frei0r-plugins geary gimp git gpick glances gparted
sudo apt install -y hardinfo inkscape inxi kazam openshot p7zip-full ppa-purge radiotray screenruler scrot shutter slurm
sudo apt install -y thunar vnstat winbind screenfetch plank
sudo apt install -y browser-plugin-vlc vlc
sudo apt install breeze-cursor-theme -y

# installation of zippers and unzippers
echo "installation of zippers and unzippers"
sudo apt install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

#software from extra repositories
echo "software from extra repositories"
sudo apt install -y grub-customizer variety
sudo apt install -y gnome-tweak-tool compizconfig-settings-manager
sudo apt install gnome-themes-standard -y
