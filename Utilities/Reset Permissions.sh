#!/bin/bash
# Set default permissions on all files.

echo \>\> Setting Permissions: Directories
find ~ -type d -exec chmod 700 {} \;

echo \>\> Setting Permissions: Files
find ~ -type f -exec chmod 600 {} \;

echo \>\> Setting Permissions: Desktop
find ~ -name *.desktop -type f -exec chmod +x {} \;

echo \>\> Setting Permissions: Scripts
find ~ -name *.sh -type f -exec chmod +x {} \;

echo ====================
echo Finished!
read
