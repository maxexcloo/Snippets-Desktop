#!/bin/bash
# Updates system and cleans up unused packages.

echo \>\> Updating Packages
sudo pacman -Syy

echo \>\> Upgrading Packages
sudo packer -Suu

echo \>\> Removing Unused Packages
sudo pacman -Rcsn $(sudo pacman -Qqdt)

echo \>\> Cleaning Cache
sudo pacman -Sc

echo ====================
echo Finished!
read
