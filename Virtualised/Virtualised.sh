#!/bin/bash
mv /etc/modules-load.d/virtualbox-guest.conf.bak /etc/modules-load.d/virtualbox-guest.conf
mv /etc/X11/xorg.conf.d/20-nvidia.conf /etc/X11/xorg.conf.d/20-nvidia.conf.bak
mv /etc/X11/xorg.conf.d/20-virtualbox.conf.bak /etc/X11/xorg.conf.d/20-virtualbox.conf
pacman -Rdd --noconfirm lib32-nvidia-utils nvidia-utils
pacman -S lib32-libgl libgl
