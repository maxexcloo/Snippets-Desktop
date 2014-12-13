#!/bin/bash
# Cleans unused files in the home directory.

##########
## Base ##
##########

# Android SDK
rm -rf ~/.android/cache

# Android Studio
rm -rf ~/.AndroidStudioBeta/system/log
rm -rf ~/.AndroidStudioBeta/system/tmp

# Firefox
rm -rf ~/.mozilla/extensions

# Flash
rm -rf ~/.adobe
rm -rf ~/.macromedia

# Genymotion
rm -rf ~/.Genymobile/stats.*

# IntelliJ IDEA
rm -rf ~/.IdeaIC13/system/log
rm -rf ~/.IdeaIC13/system/tmp

# Java
rm -rf ~/.java

# PuTTY
rm -rf ~/.putty/randomseed

# Thumbnails
rm -rf ~/.thumbnails

# VirtualBox
rm -rf ~/.config/VirtualBox/*.dat
rm -rf ~/.config/VirtualBox/*.log
rm -rf ~/.config/VirtualBox/*.log.*
rm -rf ~/.config/VirtualBox/*.xml-prev
rm -rf ~/Resources/Virtual\ Machines/*/*.vbox-prev
rm -rf ~/Resources/Virtual\ Machines/*/Logs
rm -rf ~/VirtualBox\ VMs/*/*.vbox-prev
rm -rf ~/VirtualBox\ VMs/*/Logs

# X11
rm -rf ~/.xsession-errors

############
## Config ##
############

# Clementine
rm -rf ~/.config/Clementine/*.bak
rm -rf ~/.config/Clementine/jamendo.db

# FileZilla
rm -rf ~/.config/filezilla/queue.sqlite3
rm -rf ~/.config/filezilla/search.xml

# Inkscape
rm -rf ~/.config/inkscape/*.log

# Sublime Text
rm -rf ~/.config/sublime-text-2/Backup

# Transmission
rm -rf ~/.config/transmission/*.dat

# Unity3D
rm -rf ./.config/unity32/*.log

#########
## KDE ##
#########

# Applications
rm -rf ~/.kde4/share/apps/dolphin/view_properties
rm -rf ~/.kde4/share/apps/kconf_update
rm -rf ~/.kde4/share/apps/kfileplaces/bookmarks.xml.*
rm -rf ~/.kde4/share/apps/klipper
rm -rf ~/.kde4/share/apps/konsole/*.xml.*
rm -rf ~/.kde4/share/apps/kopete
rm -rf ~/.kde4/share/apps/korganizer/*~
rm -rf ~/.kde4/share/apps/okular/docdata
rm -rf ~/.kde4/share/apps/okular/structures
rm -rf ~/.kde4/share/apps/RecentDocuments

# Directories
rm -rf ~/.kde4/share/appl*
rm -rf ~/.kde4/share/kde4

###########
## Local ##
###########

# Akondai
rm -rf ~/.local/share/akonadi/*.old
rm -rf ~/.local/share/akonadi/db_data/*.old

# MComix
rm -rf ~/.local/share/mcomix

# medit
rm -rf ~/.local/share/medit-1/*~

# System
rm -rf ~/.local/share/.Tras*
rm -rf ~/.local/share/icons
rm -rf ~/.local/share/mime
rm -rf ~/.local/share/recent*
rm -rf ~/.local/share/Tras*
rm -rf ~/.local/share/user-places.xbel.*

# Unreal Engine
rm -rf ~/.local/share/*/*/UDKGame/GLProgramBinaryCache

# VLC
rm -rf ~/.local/share/vlc
