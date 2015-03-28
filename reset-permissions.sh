#!/bin/bash
# Set default permissions on all files.

echo ">> Setting Ownership"
chown -R $USER:$USER ~

echo ">> Setting Permissions: Directories"
find ~ -type d -exec chmod 0755 {} \;

echo ">> Setting Permissions: Executables"
find ~ -type f -executable -exec chmod 0755 {} \;

echo ">> Setting Permissions: Files"
find ~ -type f ! -executable -exec chmod 0644 {} \;

echo ">> Setting Permissions: Launchers"
find ~ -type f -name '*.desktop' -exec chmod 0755 {} \;

echo ">> Setting Permissions: Scripts"
find ~ -type f -name '*.sh' -exec chmod 0755 {} \;
