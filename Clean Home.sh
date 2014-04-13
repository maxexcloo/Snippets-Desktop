#!/bin/bash
# Cleans unused files in the home directory.

##########
## Base ##
##########

kbuildsycoca4 --noincremental
fc-cache -fr

# General
rm -rf ~/.cache
rm -rf ~/.config/autostart
rm -rf ~/.thumbnails
rm -rf ~/.xsession-errors

# Local
rm -rf ~/.local/share/.Tras*
rm -rf ~/.local/share/gegl*
rm -rf ~/.local/share/gvfs-metadata
rm -rf ~/.local/share/icons
rm -rf ~/.local/share/mime
rm -rf ~/.local/share/recent*
rm -rf ~/.local/share/Tras*
rm -rf ~/.local/share/user-places.xbel.*
rm -rf ~/.local/share/webkit

#############
## Desktop ##
#############

# Audacity
rm -rf ~/.audacity-data/AutoSave
rm -rf ~/.audacity-data/presets

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

# Flash
rm -rf ~/.adobe
rm -rf ~/.macromedia

# GIMP
rm -rf ~/.gimp*/*~
rm -rf ~/.gimp*/tmp

# Google Chrome
rm -rf ~/.config/google-chrome/Default/Pepper\ Data
rm -rf ~/.config/google-chrome/PepperFlash

# GNOME
rm -rf ~/.config/gconf
rm -rf ~/.gconf
rm -rf ~/.gconfd
rm -rf ~/.gnome

# Inkscape
rm -rf ~/.config/inkscape/*.log

# IntelliJ IDEA
rm -rf ~/.IdeaIC12/system/log/*

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

# KDE Applications
rm -rf ~/.kde4/share/apps/dolphin/view_properties
rm -rf ~/.kde4/share/apps/gwenview/recent*
rm -rf ~/.kde4/share/apps/k3b
rm -rf ~/.kde4/share/apps/kate/metainfos
rm -rf ~/.kde4/share/apps/kate/sessions
rm -rf ~/.kde4/share/apps/kcookiejar
rm -rf ~/.kde4/share/apps/kfileplaces/bookmarks.xml.*
rm -rf ~/.kde4/share/apps/klipper
rm -rf ~/.kde4/share/apps/konqueror
rm -rf ~/.kde4/share/apps/korganizer/*~
rm -rf ~/.kde4/share/apps/kpdf
rm -rf ~/.kde4/share/apps/okular/docdata
rm -rf ~/.kde4/share/apps/okular/structures
rm -rf ~/.kde4/share/apps/plasma
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

# MPlayer
rm -rf ~/.mplayer

# Processing
rm -rf ~/.processing/console/*
rm -rf ~/.processing/debug/*
rm -rf ~/.processing/recent.txt

# RDesktops
rm -rf ~/.rdesktop

# Sublime Text
rm -rf ~/.config/sublime-text-2/Backup

# TeamSpeak
rm -rf ~/.ts3client/cache
rm -rf ~/.ts3client/logs/*

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
