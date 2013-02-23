#!/bin/bash
mv /etc/modules-load.d/virtualbox-guest.conf /etc/modules-load.d/virtualbox-guest.conf.bak
mv /etc/X11/xorg.conf.d/20-nvidia.conf.bak /etc/X11/xorg.conf.d/20-nvidia.conf
mv /etc/X11/xorg.conf.d/20-virtualbox.conf /etc/X11/xorg.conf.d/20-virtualbox.conf.bak
pacman -Rdd --noconfirm lib32-libgl libgl
pacman -S lib32-nvidia-utils nvidia-utils
