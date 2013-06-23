#!/bin/bash
# Cleans unused files in the home directory.

##########
## Base ##
##########

# Audio
rm -rf ~/.config/libimobiledevice
rm -rf ~/.esd_auth

# General
rm -rf ~/.bash_history
rm -rf ~/.cache
rm -rf ~/.config/autostart
rm -rf ~/.dmrc
rm -rf ~/.thumbnails
rm -rf ~/.xsession-errors

# Libraries
rm -rf ~/.config/dconf
rm -rf ~/.config/enchant
rm -rf ~/.gnupg
rm -rf ~/.local/share/gegl*
rm -rf ~/.p7zip
rm -rf ~/.pki
rm -rf ~/.python-eggs
rm -rf ~/.qt

# Local
rm -rf ~/.local/share/.local-mail.directory
rm -rf ~/.local/share/.Tras*
rm -rf ~/.local/share/gvfs-metadata
rm -rf ~/.local/share/icons
rm -rf ~/.local/share/mime
rm -rf ~/.local/share/recent*
rm -rf ~/.local/share/Tras*
rm -rf ~/.local/share/user-places.xbel.*

# Menus
rm -rf ~/.config/menus/*
cp -R ~/Backups/Local/Menus/applications.menu ~/.config/menus/
rm -rf ~/.local/share/applications
cp -R ~/Backups/Local/Menus/applications ~/.local/share/
rm -rf ~/.local/share/desktop-directories
cp -R ~/Backups/Local/Menus/desktop-directories ~/.local/share/

# Security Tools
rm -rf ~/.config/ettercap_gtk
rm -rf ~/sslstrip.log

#############
## Desktop ##
#############

# Audacity
rm -rf ~/.audacity-data/AutoSave
rm -rf ~/.audacity-data/presets

# Clementine
rm -rf ~/.config/Clementine/*.bak
rm -rf ~/.config/Clementine/jamendo.db
rm -rf ~/.config/Clementine/moodbarcache
rm -rf ~/.config/Clementine/networkcache

# Deluge
rm -rf ~/.config/deluge/*.state
rm -rf ~/.config/deluge/*~
rm -rf ~/.config/deluge/icons
rm -rf ~/.config/deluge/ipc

# Dia
rm -rf ~/.dia/*/
rm -rf ~/.dia/menurc
rm -rf ~/.dia/pluginrc

# FileZilla
rm -rf ~/.filezilla/bookmarks.xml
rm -rf ~/.filezilla/filters.xml
rm -rf ~/.filezilla/layout.xml
rm -rf ~/.filezilla/lockfile
rm -rf ~/.filezilla/queue.sqlite3
rm -rf ~/.filezilla/search.xml
rm -rf ~/.putty/randomseed

# Firefox
rm -rf ~/.mozilla/firefox/*/adblockplus/patterns-backup*.ini
rm -rf ~/.mozilla/firefox/*/bookmarkbackups
rm -rf ~/.mozilla/firefox/*/healthreport
rm -rf ~/.mozilla/firefox/*/HTTPSEverywhereUserRules
rm -rf ~/.mozilla/firefox/*/pluginreg.dat
rm -rf ~/.mozilla/firefox/*/weave/logs/*

# Flash
rm -rf ~/.adobe
rm -rf ~/.macromedia

# GIMP
rm -rf ~/.gimp*/*~
rm -rf ~/.gimp*/tmp

# Google Chrome
rm -rf ~/.config/google-chrome/Default/Pepper\ Data
rm -rf ~/.config/google-chrome/PepperFlash

# Gnome
rm -rf ~/.config/gconf
rm -rf ~/.gconf
rm -rf ~/.gconfd
rm -rf ~/.gnome

# Inkscape
rm -rf ~/.config/inkscape/*.log

# Java
rm -rf ~/.java

# JDownloader
rm -rf ~/.jdownloader/.junique
rm -rf ~/.jdownloader/*.log
rm -rf ~/.jdownloader/backup
rm -rf ~/.jdownloader/captchas/*
rm -rf ~/.jdownloader/updateLog.txt

# KDE
rm -rf ~/.kde
rm -rf ~/.kde4/share/appl*
rm -rf ~/.kde4/share/autostart
rm -rf ~/.kde4/share/kde4
rm -rf ~/.kde4/share/wallpapers
rm -rf ~/.kde4/shutdown
rm -rf ~/.kde4/tmp-*/*
rm -rf ~/.local/share/akonadi

# KDE Applications
rm -rf ~/.kde4/share/apps/dolphin/view_properties
rm -rf ~/.kde4/share/apps/gwenview/recent*
rm -rf ~/.kde4/share/apps/k3b
rm -rf ~/.kde4/share/apps/kabc
rm -rf ~/.kde4/share/apps/kate/metainfos
rm -rf ~/.kde4/share/apps/kate/sessions
rm -rf ~/.kde4/share/apps/kcookiejar
rm -rf ~/.kde4/share/apps/kded
rm -rf ~/.kde4/share/apps/kfileplaces/bookmarks.xml.*
rm -rf ~/.kde4/share/apps/khelpcenter
rm -rf ~/.kde4/share/apps/klipper
rm -rf ~/.kde4/share/apps/konqueror
rm -rf ~/.kde4/share/apps/korganizer/*~
rm -rf ~/.kde4/share/apps/kpdf
rm -rf ~/.kde4/share/apps/kssl
rm -rf ~/.kde4/share/apps/kwin
rm -rf ~/.kde4/share/apps/okular/docdata
rm -rf ~/.kde4/share/apps/okular/structures
rm -rf ~/.kde4/share/apps/plasma
rm -rf ~/.kde4/share/apps/QtCurve
rm -rf ~/.kde4/share/apps/RecentDocuments
rm -rf ~/.kde4/share/config/session

# KDE History
for i in ~/.kde4/share/config/*; do
	sed -i 's/Replacement Text History\=.*/Replacement Text History\=/g' $i
	sed -i 's/Search Pattern History\=.*/Search Pattern History\=/g' $i
done

# MComix
rm -rf ~/.local/share/mcomix

# Meld
rm -rf ~/.local/share/meld

# Minecraft
rm -rf ~/.minecraft/*.log
rm -rf ~/.minecraft/crash-reports

# MPlayer
rm -rf ~/.mplayer

# NX
rm -rf ~/.nx/*rdc*
rm -rf ~/.nx/cache-*
rm -rf ~/.nx/S-*
rm -rf ~/.nx/temp

# Processing
rm -rf ~/.processing/console/*
rm -rf ~/.processing/debug/*
rm -rf ~/.processing/recent.txt

# RDesktop
rm -rf ~/.rdesktop

# Sublime Text
rm -rf ~/.config/sublime-text-2/Backup

# Transmission
rm -rf ~/.config/transmission/*.dat
rm -rf ~/.config/transmission/stats.json

# VirtualBox
rm -rf ~/.VirtualBox/*.dat
rm -rf ~/.VirtualBox/*.log
rm -rf ~/.VirtualBox/*.log.*
rm -rf ~/.VirtualBox/*.xml-prev
rm -rf ~/Resources/Virtual\ Machines/*/*.vbox-prev
rm -rf ~/Resources/Virtual\ Machines/*/Logs/*

# VLC
rm -rf ~/.local/share/vlc

# X-Chat
rm -rf ~/.xchat2/scrollback/*/*_.txt
rm -rf ~/.xchat2/scrollback/*/\**.txt
rm -rf ~/.xchat2/scrollback/*/mib_*.txt
