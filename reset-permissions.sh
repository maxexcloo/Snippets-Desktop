#!/bin/bash
# Set default permissions on all files.

echo ">> Setting Ownership"
chown -R $USER:$GROUPS ~

echo ">> Setting Permissions: Directories"
find ~ -type d -print0 | xargs -0 chmod 0755

echo ">> Setting Permissions: Files"
find ~ -type f ! -executable -print0 | xargs -0 chmod 0644

echo ">> Setting Permissions: Executables"
find ~ -type f -executable -print0 | xargs -0 chmod 0755

echo ">> Setting Permissions: Launchers"
find ~ -type f -name *.desktop -print0 | xargs -0 chmod 0755

echo ">> Setting Permissions: Scripts"
find ~ -type f -name *.sh -print0 | xargs -0 chmod 0755
