!#/bin/bash
#dependencies: ascii_art_julios.txt, archtitus fork
# written by Steven Mielke 


#initialise german output
#echo "$(<ascii_art_julios.txt)"
echo "\n\n\n\nInitialising german keyboard layout..."
loadkeys de-latin1
echo "done\n"

#check for internet connection
echo "checking for connection..."

echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1
if [ $? -eq 0 ]; then
    RESULT =$(echo "online")
    echo "Online\n\n"
else
    RESULT=$(echo "offline")
    echo "Offline\n\n"
fi

#download dependencies
if [ $RESULT = "online" ]; then
    echo "initialise install...\n"
    #curl -O https://goo.gl/YbxT3F && chmod +x archinstall.sh
    pacman -Sy git
    git clone https://github.com/el-puerro/ArchTitus.git
    cd ArchTitus
    ./archtitus.sh
else 
    echo "no internet connection available, exiting...\n"
    exit
fi


#echo "checking boot mode..."
#check boot mode (UEFI or legacy BIOS)
#EFIDIR="/sys/firmware/efi/vars"
#if [-d "$EFIDIR" ]; then
#    echo "Booted in UEFI mode\n"
#    echo "Booted in UEFI mode\n"
#else
#    echo "booted in BIOS mode\n"
#fi

#installation target selection
#echo "These are the disks where you can install JuliOS: \n\n"
#lsblk -d -n -oNAME,RO | grep '0$' | awk {'print $1'}
#echo "enter the disk you want to install JuliOS to (usually "sd<x> or something"): "
#read TARGET
#echo "selected installation disk: $TARGET\n"

#running archinstall.sh
#./archinstall.sh --target /dev/$TARGET --host-name JuliOS --user-names juliafiliz --local-time /Europe/Berlin --keyboard-layout de-latin1 --country-with-mirrors Germany --prevent-using-pacstrap --needed-services sshd dhcpcd --install-common-additional-packages --reboot