#!/bin/bash
# Cleans unused files in the home directory.

# Applications
rm -rf ~/.local/share/vlc
rm -rf ~/.mplayer
rm -rf ~/.qt
rm -rf ~/.sshterm

# General
rm -rf ~/.bash_history
rm -rf ~/.cache
rm -rf ~/.config/autostart
rm -rf ~/.dmrc
rm -rf ~/.thumbnails
rm -rf ~/.xsession-errors

# Local
rm -rf ~/.kde4/tmp-*/*
rm -rf ~/.local/share/.local-mail.directory
rm -rf ~/.local/share/local-mail
rm -rf ~/.local/share/recent*
rm -rf ~/.local/share/Tras*
rm -rf ~/.local/share/user-places.xbel.*

# Menus
rm -rf ~/.config/menus/*
rm -rf ~/.local/share/applications
rm -rf ~/.local/share/desktop-directories
cp -R ~/Backups/Settings/Menus/applications.menu ~/.config/menus/
cp -R ~/Backups/Settings/Menus/applications ~/.local/share/
cp -R ~/Backups/Settings/Menus/desktop-directories ~/.local/share/

# Akonadi
rm -rf ~/.config/akonadi/agent*
rm -rf ~/.config/akonadi/akonadiconnectionrc
rm -rf ~/.kde4/share/apps/nepomuk
rm -rf ~/.local/share/akonadi

# Audacity
rm -rf ~/.audacity-data/AutoSave

# Audio
rm -rf ~/.config/libimobiledevice
rm -rf ~/.esd_auth

# Chromium
rm -rf ~/.config/chromium
cp -R ~/Backups/Settings/Chromium ~/.config/chromium

# Clementine
rm -rf ~/.config/Clementine/jamendo.db
rm -rf ~/.config/Clementine/networkcache

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

# Flash
rm -rf ~/.adobe
rm -rf ~/.macromedia

# Firefox Folders
rm -rf ~/.mozilla/firefox/*/adblockplus/cache.js
rm -rf ~/.mozilla/firefox/*/adblockplus/patterns-backup*.ini
rm -rf ~/.mozilla/firefox/*/bookmarkbackups
rm -rf ~/.mozilla/firefox/*/Cache
rm -rf ~/.mozilla/firefox/*/HTTPSEverywhereUserRules
rm -rf ~/.mozilla/firefox/*/OfflineCache
rm -rf ~/.mozilla/firefox/*/startupCache
rm -rf ~/.mozilla/firefox/*/weave/logs/*

# Firefox Files
rm -rf ~/.mozilla/firefox/*/cert_override.txt
rm -rf ~/.mozilla/firefox/*/chromeappsstore.sqlite
rm -rf ~/.mozilla/firefox/*/compatibility.ini
rm -rf ~/.mozilla/firefox/*/content-prefs.sqlite
rm -rf ~/.mozilla/firefox/*/mimeTypes.rdf
rm -rf ~/.mozilla/firefox/*/pluginreg.dat
rm -rf ~/.mozilla/firefox/*/urlclassifier*
rm -rf ~/.mozilla/firefox/*/webappsstore.sqlite

# Geeqie
rm -rf ~/.config/geeqie/accels
rm -rf ~/.config/geeqie/history
rm -rf ~/.local/share/geeqie

# GIMP
rm -rf ~/.local/share/gegl*
rm -rf ~/.gimp*/*~
rm -rf ~/.gimp*/tmp

# Gnome
rm -rf ~/.gconf
rm -rf ~/.gconfd

# Java
rm -rf ~/.icedtea
rm -rf ~/.java

# JDownloader
rm -rf ~/.jd/.junique
rm -rf ~/.jd/backup/database_*.zip
rm -rf ~/.jd/captchas/*
rm -rf ~/.jd/container/*

# KDE
rm -rf ~/.kde
rm -rf ~/.kde4/share/autostart
rm -rf ~/.kde4/share/kde4

# KDE Applications
rm -rf ~/.kde4/share/apps/bluedevil
rm -rf ~/.kde4/share/apps/gwenview/recent*
rm -rf ~/.kde4/share/apps/kabc
rm -rf ~/.kde4/share/apps/kate/sessions
rm -rf ~/.kde4/share/apps/kconf_update
rm -rf ~/.kde4/share/apps/kcookiejar
rm -rf ~/.kde4/share/apps/kded
rm -rf ~/.kde4/share/apps/kfileplaces/bookmarks.xml.*
rm -rf ~/.kde4/share/apps/konqueror
rm -rf ~/.kde4/share/apps/kssl
rm -rf ~/.kde4/share/apps/kwin/scripts
rm -rf ~/.kde4/share/apps/QtCurve
rm -rf ~/.kde4/share/apps/RecentDocuments
rm -rf ~/.kde4/share/apps/remoteview

# KDE Config
rm -rf ~/.kde4/share/config/kresources/*
rm -rf ~/.kde4/share/config/device_automounter_kcmrc
rm -rf ~/.kde4/share/config/kded_device_automounterrc

# KDE Scripts
for i in ~/.kde4/share/config/*; do
	# Files
	#sed -i '/File.*\[\$e\]\=.*/d' $i
	#sed -i '/Name.*\[\$e\]\=.*/d' $i
	#sed -i '/View.*\=.*/d' $i

	# History
	sed -i 's/History Items\[\$e\]\=.*/History Items\[\$e\]\=/g' $i
	sed -i 's/Recent Files\[\$e\]\=.*/Recent Files\[\$e\]\=/g' $i
	sed -i 's/Recent URLs\[\$e\]\=.*/Recent URLs\[\$e\]\=/g' $i
done
sed -i 's/LaunchCounts\=.*/LaunchCounts\=/g' ~/.kde4/share/config/krunnerrc
sed -i 's/PastQueries\=.*/PastQueries=/g' ~/.kde4/share/config/krunnerrc
sed -i 's/Replacement Text History\=.*/Replacement Text History\=/g' ~/.kde4/share/config/katerc
sed -i 's/Search Pattern History\=.*/Search Pattern History\=/g' ~/.kde4/share/config/katerc

# Minecraft
rm -rf ~/.*craft/*.log
rm -rf ~/.*craft/stats

# Transmission
rm -rf ~/.config/transmission/*.dat
rm -rf ~/.config/transmission/stats.json

# VirtualBox
rm -rf ~/.VirtualBox/*.dat
rm -rf ~/.VirtualBox/*.log
rm -rf ~/.VirtualBox/*.xml-prev
rm -rf ~/Resources/Virtual\ Machines/*/Logs/*
rm -rf ~/Resources/Virtual\ Machines/*/*.vbox-prev

# XChat
rm -rf ~/.xchat2/scrollback/*/\**.txt
rm -rf ~/.xchat2/scrollback/*/*_.txt
rm -rf ~/.xchat2/scrollback/*/mib_*.txt
