# JuliOS

Version 1.1

## current issues
* gpg keys
* JuliOS installer too large, reduce file size

## what the fuck is JuliOS

An auto installer for setting up JuliOS, a custom Arch install made specifically to 
get a system up and running for "Linux noobs", as a gift for my girlfriend. 

## How to install JuliOS

1. Boot from an Arch USB
2. type in the following commands: 
  ```console
  root@archiso~# pacman -Sy git
  root@archiso~# git clone https://github.com/el-puerro/JuliOS.git
  root@archiso~# chmod +x JuliOS/auto-installation-script/install.sh
  root@archiso~# ./JuliOS/auto-installation-script/install.sh
  ``` 
3. Follow the instructions on the screen


## troubleshooting

### Error: keyring is not writable/required key missing from keyring

type `nano /etc/pacman.conf`
look for the line with `SigLevel = ` something. Replace the something with `Never`
press Ctrl + O, enter, and Ctrl + X

## todo
- Add custom theme
- fix current issues
