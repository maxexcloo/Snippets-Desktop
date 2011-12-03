#!/bin/bash
# Cleans unused files on the system.

echo \>\> Cleaning Directories
sudo rm -rf /root/*
sudo find / -name '*.unison.tmp*' -exec rm -rf {} \;
sudo find / -type d -name 'lost+found' -exec rm -rf {} \;
sudo find / -type d -name '.Tras*' -exec rm -rf {} \;

echo \>\> Cleaning Pacman
sudo pacman -Sc --noconfirm > /dev/null
sudo find /etc/ -type f -name '*.pacnew' -exec rm {} \;
sudo find /etc/ -type f -name '*.pacorig' -exec rm {} \;
sudo find /etc/ -type f -name '*.pacsave' -exec rm {} \;

echo \>\> Cleaning Settings
sudo find /etc/ -type f -name '*.conf.default' -exec rm {} \;
sudo find /etc/ -type f -name 'example.*' -exec rm {} \;
sudo find /etc/ -type f -name '*.optional' -exec rm {} \;
sudo find /etc/ -type f -name '*.sample' -exec rm {} \;

echo \>\> Cleaning Temp
sudo find / -type f -name 'desktop.ini' -exec rm {} \;
sudo find / -type f -name '.directory' -exec rm {} \;
sudo find / -type f -name '.DS_Store' -exec rm {} \;
sudo find / -type f -name 'Thumbs.db' -exec rm {} \;

echo \>\> Restoring XDG
sudo rm -rf /etc/xdg/
sudo cp -R /etc/xdg-safe/ /etc/xdg/
sudo find /etc/xd*/ -type f -exec chmod 644 {} \;
sudo find /etc/xd*/ -type d -exec chmod 755 {} \;

echo ====================
echo Finished!
read
