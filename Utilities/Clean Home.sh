#!/bin/bash
# Cleans unused files in the home directory.

#############
## General ##
#############

# General
rm -rf ~/.bash_history
rm -rf ~/.cache
rm -rf ~/.compose-cache/*
rm -rf ~/.config/autostart
rm -rf ~/.dmrc
rm -rf ~/.thumbnails
rm -rf ~/.xsession-errors

# Libraries
rm -rf ~/.config/anjuta
rm -rf ~/.config/enchant
rm -rf ~/.p7zip
rm -rf ~/.pki
rm -rf ~/.python-eggs
rm -rf ~/.qt

# Local
rm -rf ~/.local/share/.local-mail.directory
rm -rf ~/.local/share/.Tras*
rm -rf ~/.local/share/contacts/*.txt
rm -rf ~/.local/share/recent*
rm -rf ~/.local/share/Tras*
rm -rf ~/.local/share/user-places.xbel.*

# Menus
rm -rf ~/.config/menus/*
rm -rf ~/.local/share/applications ~/.local/share/desktop-directories
cp -R ~/Backups/Settings/Menus/applications.menu ~/.config/menus/
cp -R ~/Backups/Settings/Menus/applications ~/.local/share/
cp -R ~/Backups/Settings/Menus/desktop-directories ~/.local/share/
cp -R ~/Backups/Settings/Menus/mimeapps.list ~/.local/share/

# Security Tools
rm -rf ~/.config/ettercap_gtk
rm -rf ~/.kismet
rm -rf ~/.wireshark
rm -rf ~/sslstrip.log

##################
## Applications ##
##################

# Audacity
rm -rf ~/.audacity-data/AutoSave
rm -rf ~/.audacity-data/presets

# Audio
rm -rf ~/.config/libimobiledevice
rm -rf ~/.esd_auth

# Bitcoin
rm -rf ~/.bitcoin/*.log

# Chromium
rm -rf ~/.config/google-chrome
cp -R ~/Backups/Settings/Chrome ~/.config/google-chrome

# Clementine
rm -rf ~/.config/Clementine/jamendo.db
rm -rf ~/.config/Clementine/networkcache

# Deadbeef
rm -rf ~/.config/deadbeef/playlists/*
rm -rf ~/.config/deadbeef/socket

# Deluge
rm -rf ~/.config/deluge/*~
rm -rf ~/.config/deluge/*.state
rm -rf ~/.config/deluge/icons
rm -rf ~/.config/deluge/ipc

# Dia
rm -rf ~/.dia/*/*
rmdir ~/.dia/*
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

# Firefox Directories
rm -rf ~/.mozilla/firefox/*/bookmarkbackups
rm -rf ~/.mozilla/firefox/*/Cache
rm -rf ~/.mozilla/firefox/*/HTTPSEverywhereUserRules
rm -rf ~/.mozilla/firefox/*/mozilla-media-cache
rm -rf ~/.mozilla/firefox/*/OfflineCache
rm -rf ~/.mozilla/firefox/*/webapps

# Firefox Files
rm -rf ~/.mozilla/firefox/*/adblockplus/cache.js
rm -rf ~/.mozilla/firefox/*/adblockplus/patterns-backup*.ini
rm -rf ~/.mozilla/firefox/*/pluginreg.dat
rm -rf ~/.mozilla/firefox/*/urlclassifier*
rm -rf ~/.mozilla/firefox/*/weave/logs/*

# Flash
rm -rf ~/.adobe
rm -rf ~/.macromedia

# GIMP
rm -rf ~/.local/share/gegl*
rm -rf ~/.gimp*/*~
rm -rf ~/.gimp*/tmp

# Gnome
rm -rf ~/.config/dconf
rm -rf ~/.gconf
rm -rf ~/.gconfd

# Java
rm -rf ~/.java
rm -rf ~/.sshterm

# JDownloader
rm -rf ~/.jdownloader/.junique
rm -rf ~/.jdownloader/*.log
rm -rf ~/.jdownloader/backup
rm -rf ~/.jdownloader/captchas/*
rm -rf ~/.jdownloader/container/*
rm -rf ~/.jdownloader/updateLog.txt

# KDE
rm -rf ~/.kde
rm -rf ~/.kde4/share/applink
rm -rf ~/.kde4/share/autostart
rm -rf ~/.kde4/share/kde4
rm -rf ~/.kde4/shutdown
rm -rf ~/.kde4/tmp-*/*

# KDE Applications
rm -rf ~/.kde4/share/apps/bluedevil
rm -rf ~/.kde4/share/apps/desktoptheme/internal-system-colors
rm -rf ~/.kde4/share/apps/dolphin/view_properties
rm -rf ~/.kde4/share/apps/gwenview/recent*
rm -rf ~/.kde4/share/apps/k3b
rm -rf ~/.kde4/share/apps/kabc
rm -rf ~/.kde4/share/apps/kate/metainfos
rm -rf ~/.kde4/share/apps/kate/sessions
rm -rf ~/.kde4/share/apps/kconf_update
rm -rf ~/.kde4/share/apps/kcookiejar
rm -rf ~/.kde4/share/apps/kded
rm -rf ~/.kde4/share/apps/kfileplaces/bookmarks.xml.*
rm -rf ~/.kde4/share/apps/khelpcenter
rm -rf ~/.kde4/share/apps/klipper
rm -rf ~/.kde4/share/apps/konqueror
rm -rf ~/.kde4/share/apps/korganizer/*~
rm -rf ~/.kde4/share/apps/kpdf
rm -rf ~/.kde4/share/apps/kres-migrator
rm -rf ~/.kde4/share/apps/kssl
rm -rf ~/.kde4/share/apps/kwin
rm -rf ~/.kde4/share/apps/okular/docdata
rm -rf ~/.kde4/share/apps/okular/structures
rm -rf ~/.kde4/share/apps/plasma
rm -rf ~/.kde4/share/apps/QtCurve
rm -rf ~/.kde4/share/apps/RecentDocuments
rm -rf ~/.kde4/share/apps/remoteview

# KDE Config
rm -rf ~/.kde4/share/config/device_automounter_kcmrc
rm -rf ~/.kde4/share/config/kded_device_automounterrc
rm -rf ~/.kde4/share/config/session

# KDE History
for i in ~/.kde4/share/config/*; do
	sed -i 's/History Items\[\$e\]\=.*/History Items\[\$e\]\=/g' $i
	sed -i 's/Recent Files\[\$e\]\=.*/Recent Files\[\$e\]\=/g' $i
	sed -i 's/Recent URLs\[\$e\]\=.*/Recent URLs\[\$e\]\=/g' $i
	sed -i 's/Replacement Text History\=.*/Replacement Text History\=/g' $i
	sed -i 's/Search Pattern History\=.*/Search Pattern History\=/g' $i
done
sed -i 's/LaunchCounts\=.*/LaunchCounts\=/g' ~/.kde4/share/config/krunnerrc
sed -i 's/PastQueries\=.*/PastQueries\=/g' ~/.kde4/share/config/krunnerrc

# Minecraft
rm -rf ~/.*craft/*.log
rm -rf ~/.*craft/crash-reports
rm -rf ~/.*craft/ModLoader.txt
rm -rf ~/.*craft/tmi.*.txt
rm -rf ~/.techniclauncher/logs

# Mixxx
rm -rf ~/.mixxx/*.log
rm -rf ~/.mixxx/midi/*
rm -rf ~/Documents/Mixxx
rm -rf ~/Music/Mixxx

# MPlayer
rm -rf ~/.mplayer

# Pidgin
rm -rf ~/.purple/blist.xml
rm -rf ~/.purple/certificates
rm -rf ~/.purple/icons
rm -rf ~/.purple/smileys
rm -rf ~/.purple/status.xml
rm -rf ~/.purple/xmpp-caps.xml

# Puddletag
rm -rf ~/.puddletag/*.bak
rm -rf ~/.puddletag/plugins

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
