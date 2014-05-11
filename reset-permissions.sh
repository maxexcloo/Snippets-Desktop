#!/bin/bash
# Set default permissions on all files.

echo ">> Setting Ownership"
sudo chown -R $USER:users ~

echo ">> Setting Permissions: Directories"
find ~ -type d -exec chmod 0700 {} \;

echo ">> Setting Permissions: Files"
find ~ -type f ! -executable -exec chmod 0600 {} \;

echo ">> Setting Permissions: Executables"
find ~ -type f -executable -exec chmod 0700 {} \;

echo ">> Setting Permissions: Launchers"
find ~ -type f -name *.desktop -exec chmod 0700 {} \;

echo ">> Setting Permissions: Scripts"
find ~ -type f -name *.sh -exec chmod 0700 {} \;
