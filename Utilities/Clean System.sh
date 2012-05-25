#!/bin/bash
# Cleans unused files on the system.

# Umask Options
umask 022

# Wildcard Options
shopt -s dotglob

echo \>\> Cleaning Directories
#sudo rm -rf /root/*
sudo find / -name '*.unison.tmp*' -exec rm -rf {} \;
sudo find / -type d -name 'lost+found' -exec rm -rf {} \;
sudo find / -type d -name '.Tras*' -exec rm -rf {} \;

echo \>\> Cleaning Pacman
sudo pacman -Sc --noconfirm > /dev/null
sudo find /etc/ -type f -name '*.pacnew' -exec rm {} \;
sudo find /etc/ -type f -name '*.pacorig' -exec rm {} \;
sudo find /etc/ -type f -name '*.pacsave' -exec rm {} \;

echo \>\> Cleaning Settings
sudo rm -rf /etc/xdg/menus/* /etc/skel/*
sudo cp -r /etc/xdg/menus2/* /etc/xdg/menus/
sudo find /etc/ -type f -name '*.conf.default' -exec rm {} \;
sudo find /etc/ -type f -name '*.example' -exec rm {} \;
sudo find /etc/ -type f -name '*.optional' -exec rm {} \;
sudo find /etc/ -type f -name '*.sample' -exec rm {} \;
sudo find /etc/ -type f -name 'example.*' -exec rm {} \;

echo \>\> Cleaning Temp
sudo find / -type f -name '.directory' -exec rm {} \;
sudo find / -type f -name '.DS_Store' -exec rm {} \;
sudo find / -type f -name 'desktop.ini' -exec rm {} \;
sudo find / -type f -name 'Thumbs.db' -exec rm {} \;

echo \>\> Rebuilding Caches
fc-cache -fr
sudo fc-cache -fr
update-desktop-database
sudo update-desktop-database

echo \>\> Updating Files
kbuildsycoca4 --noincremental
sudo update-ca-certificates
sudo update-patterndb
sudo update-pciids
sudo update-usbids.sh

echo ====================
echo Finished!
read
