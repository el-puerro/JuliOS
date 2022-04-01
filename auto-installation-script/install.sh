#!/bin/bash
#dependencies: ascii_art_julios.txt, archtitus fork
# written by Steven Mielke 

echo "Initialising german keyboard layout..."
loadkeys de-latin1
echo "done"

cd $HOME
curl https://sourceforge.net/projects/julios-theme/files/JuliOS-installer.zip/download -o JuliOS-installer.zip
bsdtar xvf JuliOS-installer.zip


cd /JuliOS-installer
./archtitus.sh