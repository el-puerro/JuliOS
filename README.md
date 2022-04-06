# JuliOS

Version 1.2.1

## current issues
* ~~gpg keys~~ 
* ~~JuliOS installer too large, reduce file size~~
* broken konsave installation, only workaround is manually downloading and replacing the correct config until the dev decides to fix it
  * problem is, this can't be automated within the same installer, because the user has to be logged into KDE at least once after the initial install

## what the fuck is JuliOS

An auto installer for setting up JuliOS, a custom Arch install made specifically to 
get a system up and running for "Linux noobs", as a gift for my girlfriend. 

## How to install JuliOS

**Please note, that the american keyboard layout is the default, until you change it. You can do so by typing in `loadkeys de-latin1`**

1. Boot from an Arch USB
2. when greeted with **archlinux install medium** screen, press __tab__ or __e__
3. type `cow_spacesize=2G` and press __enter__

4. type in the following commands: 
  ```console
  root@archiso~# pacman -Sy git
  root@archiso~# git clone https://github.com/el-puerro/JuliOS.git
  root@archiso~# chmod +x JuliOS/auto-installation-script/install.sh
  root@archiso~# ./JuliOS/auto-installation-script/install.sh
  ``` 

5. After running them, you finally have the german keyboard layout. 

6. You will be prompted to enter your new username and password, as well as the "hostname". That's your computername. 

7. afterwards, you're supposed to "select your desired Desktop Environment". You can navigate with the arrow keys. Press the right arrow key, until "kde" is selected and press enter

8. Now you need to select an "AUR helper". That thing can install programs. Press the right arrow key, until "yay" is selected. Then press enter. 

9. Now you need to select the type of installation. Just press enter here

10. Here you can select between your hard drives for the installation. Please note, that everything on the selected harddrive will be gone. Select the one, that's about the size of your hard drive space (that's the number with the "G" at the end).

11. Now you select if this is an SSD or not. 

12. Now you need to select the "file system". Select "ext4" here. 

13. The system detects your time zone. Control it, and if it's correct (should be Europe/Berlin) press enter. 

14. Select your keyboard layout. Press the right arrow key and then the down arrow key. Then press enter. 

15. Now wait, it may take a while. Grab a coffee, watch a tv show, do some laundry, whatever. 

16. now, if it says `Done - please Eject Install Media and Reboot`, just type `reboot` and remove the USB

17. After you log in, open the program __konsole__ and copy + paste the following commands: 

```console
$ yay -S konsave
$ curl https://raw.githubusercontent.com/Prayag2/konsave/master/konsave/conf_kde.yaml > conf.yaml
$ cp conf.yaml ~/.config/konsave/conf.yaml
$ konsave -w
$ konsave -i ~/ArchTitus/configs/JuliOS_beta.knsv
$ konsave -a JuliOS_beta
```
now log out and log in again. You might need to go to System Settings > appearance and reapply the theme. 

18. You're done! JuliOS is installed. Take a look around, if you have any questions, call me up! 

**Happy Anniversary!**





## troubleshooting

### Error: keyring is not writable/required key missing from keyring

- type `pacman -Sy archlinux-keyring`
- if the error persists, type `nano /etc/pacman.conf`
- look for the line with `SigLevel = ` something. Replace the something with `Never`
- press Ctrl + O, enter, and Ctrl + X

## todo
- ~~Add custom theme~~
- ~~fix current issues~~
