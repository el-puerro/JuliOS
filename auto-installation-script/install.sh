#!/bin/bash
#dependencies: ascii_art_julios.txt, archtitus fork
# written by Steven Mielke 

echo "Initialising german keyboard layout..."
loadkeys de-latin1
echo "done"

pacman -Sy unzip
cd $HOME
curl -L https://sourceforge.net/projects/julios-theme/files/JuliOS-installer.zip/download > JuliOS-installer.zip
unzip JuliOS-installer.zip


cd /JuliOS-installer
./archtitus.sh