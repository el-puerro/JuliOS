!#/bin/bash
# written by Steven Mielke under the GNU general Public License

echo "$(<ascii_art_julios.txt)\n"
echo "post-installation process, to get everything you need running\n\n\n"
echo "Updating system files...\n"

cd ~
pacman -Syu

#install desktop environment KDE
X11CHECK = echo $(XDG_SESSION_TYPE)
if [ X11CHECK = "x11"]; then
    pacman -S plasma kde-applications powerdevil
    
else
    pacman -S xorg-server xorg-apps plasma kde-applications powerdevil
fi

echo "installing important helper program yay:\n"
#install important user software
sudo pacman -S --needed-base-devel git
git clone https://aur.archlinux.org/yay-git.git
cd yay
makepkg -si
echo "installing google chrome...\n"
yay -S google-chrome
yay -Syu

echo "installing steam, vim (text editor, very helpful), discord and additional app store Snap:\n"
pacman -S steam vim discord snapd
echo "enable snap..."
systemctl enable --now snapd.socket
echo "done\n"
echo "install spotify..."
snap install spotify
echo "done\n"

echo "\n\n\n Installation finished, rebooting..."
systemctl reboot