#!/bin/bash
# Update system packages with package manager and run post process tasks.

echo ">> Update Package List"
pacman -Sy

echo ">> Upgrade Packages"
yaourt -Sau

echo ">> Remove Unused Packages"
pacman -Rcns $(pacman -Qdqt)

echo ">> Clean Package Cache"
pacman -Sc
