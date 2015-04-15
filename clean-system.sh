#!/bin/bash
# Cleans unused files on the system.

echo ">> Cleaning Pacman"
find /etc/ -type f -name '*.pac*' -exec rm {} \;
pacman -Scq --noconfirm

echo ">> Cleaning Settings"
find /etc/ -type f -name '*.example' -exec rm {} \;
find /etc/ -type f -name '*.example-*' -exec rm {} \;
find /etc/ -type f -name '*.sample' -exec rm {} \;
find /etc/ -type f -name 'README' -exec rm {} \;
find /etc/ -type f -name 'example.*' -exec rm {} \;
rm -f /etc/*-
rm -f /etc/iptables/*
rm -f /etc/lirc/lircd.conf.d/README.conf.d
rm -f /etc/pango/pango.modules
rm -f /etc/pkcs11/pkcs11.conf.example
rm -f /etc/samba/smb.conf.default
rm -f /etc/skel/.??*
rm -f /etc/ssh/moduli

echo ">> Cleaning Temp Directories"
find / -type d -name '*.unison.tmp*' -exec rm -rf {} \;
find / -type d -name 'lost+found' -exec rm -rf {} \;
rm -rf /home/*/.local/share/.Tras*
rm -rf /home/*/.local/share/Tras*

echo ">> Cleaning Temp Files"
find / -type f -name '.DS_Store' -exec rm {} \;
find / -type f -name '.directory' -exec rm {} \;
find / -type f -name 'Thumbs.db' -exec rm {} \;
find / -type f -name 'desktop.ini' -exec rm {} \;
