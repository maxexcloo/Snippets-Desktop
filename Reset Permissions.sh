#!/bin/bash
# Set default permissions on all files.

echo \>\> Setting Ownership
sudo chown -R $USER:users ~

echo \>\> Setting Permissions: Directories
find ~ -type d -exec chmod 700 {} \;

echo \>\> Setting Permissions: Files
find ~ -type f ! -executable -exec chmod 600 {} \;
find ~ -type f -executable -exec chmod 700 {} \;

echo \>\> Setting Permissions: Launchers
find ~ -type f -name *.desktop -exec chmod 700 {} \;

echo \>\> Setting Permissions: Scripts
find ~ -type f -name *.sh -exec chmod 700 {} \;
