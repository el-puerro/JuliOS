#!/bin/bash
#dependencies: ascii_art_julios.txt, archtitus fork
# written by Steven Mielke 

echo "Initialising german keyboard layout..."
loadkeys de-latin1
echo "done"

cd $HOME
pacman -Sy git
git clone https://github.com/el-puerro/ArchTitus.git
cd ArchTitus
./archtitus.sh