#!/bin/bash
# Cleans unused files on the system.

# Check Root
if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as root."
	exit 1
fi

echo ">> Setting Up"
shopt -s dotglob
umask 022

echo ">> Cleaning Directories"
find / -type d -name '*.unison.tmp*' -exec rm -rf {} \;
find / -type d -name '.Tras*' -exec rm -rf {} \;
find / -type d -name 'lost+found' -exec rm -rf {} \;
rm -rf /home/*/.cache /home/*/.local/share/Tras*

echo ">> Cleaning Etc"
find /etc/ -type f -name '*.conf.default' -exec rm {} \;
find /etc/ -type f -name '*.example' -exec rm {} \;
find /etc/ -type f -name '*.example-*' -exec rm {} \;
find /etc/ -type f -name 'example.*' -exec rm {} \;
find /etc/ -type f -name 'README' -exec rm {} \;
rm -rf /etc/*- /etc/iptables/{empty.rules,simple_firewall.rules} /etc/skel/*

echo ">> Cleaning Pacman"
find /etc/ -type f -name '*.pac*' -exec rm {} \;
rm -rf /var/cache/pacman/pkg/*
pacman -Sccq --noconfirm

echo ">> Cleaning Temporary Files"
find / -type f -name '.directory' -exec rm {} \;
find / -type f -name '.DS_Store' -exec rm {} \;
find / -type f -name 'desktop.ini' -exec rm {} \;
find / -type f -name 'Thumbs.db' -exec rm {} \;

echo ">> Updating Caches"
fc-cache -fr
update-ca-certificates
update-desktop-database
updatedb
