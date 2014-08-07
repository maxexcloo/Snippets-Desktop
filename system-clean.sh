#!/bin/bash
# Execute all cleaning scripts.

echo ">> Begin Initialisation <<"
sudo cd $(dirname $0)

echo ">> Clean Home <<"
bash clean-home.sh

echo ">> Clean System <<"
sudo bash clean-system.sh

echo ">> Reset Permissions <<"
sudo bash reset-permissions.sh
