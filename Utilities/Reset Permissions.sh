#!/bin/bash
# Sets default permissions on all files.

echo \>\> Setting Folder Permissions
find ~ -type d -exec chmod g=,o= {} \;

echo \>\> Setting File Permissions
find ~ -type f -exec chmod g=,o= {} \;

echo \>\> Setting Script Permissions
find ~ -name *.sh -type f -exec chmod +x {} \;

echo ====================
echo Finished!
read
