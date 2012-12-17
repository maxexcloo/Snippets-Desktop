#!/bin/bash
# Cleans home and system.

sudo echo \>\> Begin Initialisation \<\<
cd $(dirname $0)

echo \>\> Clean Home \<\<
sh "Clean Home.sh"

echo \>\> Clean System \<\<
sh "Clean System.sh"

echo \>\> Reset Permissions \<\<
sh "Reset Permissions.sh"
