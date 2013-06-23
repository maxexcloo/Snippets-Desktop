#!/bin/bash
# Cleans unused files on the system.

# Mask Options
umask 022

# Wildcard Options
shopt -s dotglob

echo \>\> Cleaning Directories
sudo find / -type d -name '*.unison.tmp*' -exec rm -rf {} \;
sudo find / -type d -name '.Tras*' -exec rm -rf {} \;
sudo find / -type d -name 'lost+found' -exec rm -rf {} \;
sudo rm -rf /home/*/.cache /home/*/.local/share/Tras*

echo \>\> Cleaning Package Manager
sudo find /etc/ -type f -name '*.pacnew' -exec rm {} \;
sudo find /etc/ -type f -name '*.pacorig' -exec rm {} \;
sudo find /etc/ -type f -name '*.pacsave' -exec rm {} \;
sudo pacman -Sc --noconfirm &> /dev/null

echo \>\> Cleaning Settings
sudo rm -rf /etc/skel/*
sudo rm -rf /etc/xdg/menus/*
sudo cp /home/$USER/Backups/Settings/Menus/kde-applications.menu /etc/xdg/menus/
sudo chmod 755 /etc/xdg/menus/kde-applications.menu
sudo find /etc/ -type f -name '*.conf.default' -exec rm {} \;
sudo find /etc/ -type f -name '*.example' -exec rm {} \;
sudo find /etc/ -type f -name '*.OLD' -exec rm {} \;
sudo find /etc/ -type f -name '*.optional' -exec rm {} \;
sudo find /etc/ -type f -name '*.sample' -exec rm {} \;
sudo find /etc/ -type f -name 'example.*' -exec rm {} \;
sudo find /etc/ -type f -name 'README' -exec rm {} \;
sudo rm -rf /etc/*- /etc/iptables/{empty.rules,simple_firewall.rules}

echo \>\> Cleaning Temporary Files
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
sudo updatedb
