#!/bin/bash
# Update system packages with package manager.

sudo echo ">> Update Package List"
pacman -Syy

echo ">> Upgrade Packages"
yaourt -Sauu

echo ">> Remove Unused Packages"
pacman -Rcns $(pacman -Qdqt)

echo ">> Clean Package Cache"
pacman -Sc
