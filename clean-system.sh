#!/bin/bash
# Cleans unused files on the system.

echo ">> Setting Up"
shopt -s dotglob

echo ">> Updating Caches"
fc-cache -fr
update-ca-certificates
update-desktop-database

echo ">> Cleaning Cache Directories"
find / -type d -name '*.unison.tmp*' -exec rm -rf {} \;
find / -type d -name '.Tras*' -exec rm -rf {} \;
find / -type d -name 'lost+found' -exec rm -rf {} \;
rm -rf /home/*/.local/share/.Tras* /home/*/.local/share/Tras*

echo ">> Cleaning Cache Files"
find / -type f -name '.directory' -exec rm {} \;
find / -type f -name '.DS_Store' -exec rm {} \;
find / -type f -name 'desktop.ini' -exec rm {} \;
find / -type f -name 'Thumbs.db' -exec rm {} \;

echo ">> Cleaning Etc"
find /etc/ -type f -name '*.conf.default' -exec rm {} \;
find /etc/ -type f -name '*.example' -exec rm {} \;
find /etc/ -type f -name '*.example-*' -exec rm {} \;
find /etc/ -type f -name 'example.*' -exec rm {} \;
find /etc/ -type f -name 'README' -exec rm {} \;
rm -rf /etc/*- /etc/iptables/* /etc/skel/*

echo ">> Cleaning Pacman"
find /etc/ -type f -name '*.pac*' -exec rm {} \;
pacman -Scq --noconfirm
