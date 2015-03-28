#!/bin/bash
# Update system packages with package manager.

sudo echo ">> Update Package List"
sudo pacman -Syy

echo ">> Upgrade Packages"
yaourt -Sauu

echo ">> Remove Unused Packages"
sudo pacman -Rcns $(pacman -Qdqt)

echo ">> Clean Package Cache"
sudo pacman -Sc
