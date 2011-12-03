#!/bin/bash
# Cleans unused files in the home directory.

# General
rm -rf ~/.bash_history
rm -rf ~/.cache
rm -rf ~/.config/autostart
rm -rf ~/.dmrc
rm -rf ~/.java
rm -rf ~/.pki
rm -rf ~/.python-eggs
rm -rf ~/.sshterm
rm -rf ~/.thumbnails
rm -rf ~/.xsession-errors

# Local
rm -rf ~/.local/share/recent*
rm -rf ~/.local/share/Tras*
rm -rf ~/.local/share/user-places.xbel.*
rm -rf ~/.local/share/vlc

# Akonadi
rm -rf ~/.config/akonadi/agent*
rm -rf ~/.kde4/share/apps/nepomuk
rm -rf ~/.local/share/akonadi
rm -rf ~/.local/share/contacts
rm -rf ~/.local/share/*local-mail*

# Android
rm -rf ~/.android/androidwin.cfg

# Audacity
rm -rf ~/.audacity-data/AutoSave

# Audio
rm -rf ~/.config/libimobiledevice
rm -rf ~/.gstreamer-0.10
rm -rf ~/.pulse
rm -rf ~/.pulse-cookie

# Cache
rm -rf ~/.kde4/tmp-*/*
#kbuildsycoca4

# Chromium
rm -rf ~/.config/chromium
cp -R ~/Backups/Settings/Chromium ~/.config/chromium

# Clementine
rm -rf ~/.config/Clementine/jamendo.db
rm -rf ~/.config/Clementine/networkcache
rm -rf ~/.config/Clementine/scripts

# Deluge
rm -rf ~/.config/deluge/*~
rm -rf ~/.config/deluge/files_tab.state
rm -rf ~/.config/deluge/icons
rm -rf ~/.config/deluge/ipc
rm -rf ~/.config/deluge/peers_tab.state
rm -rf ~/.config/deluge/tabs.state
rm -rf ~/.config/deluge/torrentview.state

# FileZilla
rm -rf ~/.filezilla/bookmarks.xml
rm -rf ~/.filezilla/filters.xml
rm -rf ~/.filezilla/layout.xml
rm -rf ~/.filezilla/lockfile
rm -rf ~/.filezilla/queue.sqlite3
rm -rf ~/.filezilla/queue.xml
rm -rf ~/.filezilla/recentservers.xml
rm -rf ~/.filezilla/trustedcerts.xml

# Flash
rm -rf ~/.adobe
rm -rf ~/.macromedia

# Firefox Folders
rm -rf ~/.mozilla/firefox/*/adblockplus/*backup*
rm -rf ~/.mozilla/firefox/*/adblockplus/cache.js
rm -rf ~/.mozilla/firefox/*/bookmarkbackups
rm -rf ~/.mozilla/firefox/*/Cache
rm -rf ~/.mozilla/firefox/*/chrome
rm -rf ~/.mozilla/firefox/*/gm_scripts_*
rm -rf ~/.mozilla/firefox/*/HTTPSEverywhereUserRules
rm -rf ~/.mozilla/firefox/*/OfflineCache

# Firefox Files
rm -rf ~/.mozilla/firefox/*/.parentlock
rm -rf ~/.mozilla/firefox/*/cert_override.txt
rm -rf ~/.mozilla/firefox/*/chromeappsstore.sqlite
rm -rf ~/.mozilla/firefox/*/compatibility.ini
rm -rf ~/.mozilla/firefox/*/content-prefs.sqlite
rm -rf ~/.mozilla/firefox/*/cookies.sqlite
rm -rf ~/.mozilla/firefox/*/downloads.sqlite
rm -rf ~/.mozilla/firefox/*/dta_queue.sqlite
rm -rf ~/.mozilla/firefox/*/formhistory.sqlite
rm -rf ~/.mozilla/firefox/*/NoScriptSTS.db
rm -rf ~/.mozilla/firefox/*/pluginreg.dat
rm -rf ~/.mozilla/firefox/*/secmod.db
rm -rf ~/.mozilla/firefox/*/urlclassifier3.sqlite
rm -rf ~/.mozilla/firefox/*/webappsstore.sqlite
rm -rf ~/.mozilla/firefox/*/XUL.mfasl

# GIMP
rm -rf ~/.local/share/gegl*
rm -rf ~/.gimp*/tmp

# Gnome
rm -rf ~/.gconf
rm -rf ~/.gconfd

# KDE
rm -rf ~/.kde4/share/autostart
rm -rf ~/.kde4/share/kde4

# KDE Applications
rm -rf ~/.kde4/share/apps/bluedevil
rm -rf ~/.kde4/share/apps/gwenview/recent*
rm -rf ~/.kde4/share/apps/kcookiejar
rm -rf ~/.kde4/share/apps/kfileplaces/bookmarks.xml.*
rm -rf ~/.kde4/share/apps/khtml
rm -rf ~/.kde4/share/apps/klipper
rm -rf ~/.kde4/share/apps/knewstuff*
rm -rf ~/.kde4/share/apps/konqueror
rm -rf ~/.kde4/share/apps/korganizer
rm -rf ~/.kde4/share/apps/kopete/jabber-capabilities-cache.xml
rm -rf ~/.kde4/share/apps/kopete/metacontactpicturecache
rm -rf ~/.kde4/share/apps/kopete/urls/*
rm -rf ~/.kde4/share/apps/kpdf
rm -rf ~/.kde4/share/apps/kres-migrator
rm -rf ~/.kde4/share/apps/okular/docdata
rm -rf ~/.kde4/share/apps/RecentDocuments

# KDE Config
rm -rf ~/.kde4/share/config/drkonqirc
rm -rf ~/.kde4/share/config/emaildefaults
rm -rf ~/.kde4/share/config/kaddressbookmigratorrc
rm -rf ~/.kde4/share/config/kcmkresourcesrc
rm -rf ~/.kde4/share/config/kcookiejarrc
rm -rf ~/.kde4/share/config/kdebugrc
rm -rf ~/.kde4/share/config/kded_device_automounterrc
rm -rf ~/.kde4/share/config/kmailrc
rm -rf ~/.kde4/share/config/kmenueditrc
rm -rf ~/.kde4/share/config/kmetainformationrc
rm -rf ~/.kde4/share/config/knoderc
rm -rf ~/.kde4/share/config/kres-migratorrc
rm -rf ~/.kde4/share/config/kresources
rm -rf ~/.kde4/share/config/kuriikwsfilterrc
rm -rf ~/.kde4/share/config/mailtransports
rm -rf ~/.kde4/share/config/specialmailcollectionsrc

# Menus
rm -rf ~/.config/menus/*
rm -rf ~/.local/share/applications
rm -rf ~/.local/share/desktop-directories
cp -R ~/Backups/Settings/Menus/applications.menu ~/.config/menus/
cp -R ~/Backups/Settings/Menus/applications ~/.local/share/
cp -R ~/Backups/Settings/Menus/desktop-directories ~/.local/share/

# Minecraft
rm -rf ~/.minecraft/stats
rm -rf ~/.spoutcraft/*.log
rm -rf ~/.spoutcraft/backups
rm -rf ~/.spoutcraft/Logs
rm -rf ~/.spoutcraft/stats

# Transmission
rm -rf ~/.config/transmission/dht.dat
rm -rf ~/.config/transmission/stats.json

# VirtualBox
rm -rf ~/.VirtualBox/compreg.dat
rm -rf ~/.VirtualBox/VBoxSVC.*
rm -rf ~/.VirtualBox/VirtualBox.xml-prev
rm -rf ~/.VirtualBox/xpti.dat
rm -rf ~/Resources/Virtual\ Machines/*/Logs/*
rm -rf ~/Resources/Virtual\ Machines/*/*.vbox-prev

# WinFF
rm -rf ~/.winff/*.sh
