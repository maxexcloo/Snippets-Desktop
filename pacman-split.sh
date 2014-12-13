#!/bin/bash
# Split package list into official and AUR lists.

# Empty Output Files
echo -n "" > list.aur
echo -n "" > list.arch

# Loop Over Package List
while read i; do
	# Run Pacman Package Check
	pacman -Sddp $i

	# Check Command Result
	if [ $? != 0 ]; then
		# Add Name To List
		echo $i >> list.aur
	else
		# Add Name To List
		echo $i >> list.arch
	fi
done < list
