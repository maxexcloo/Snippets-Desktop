#!/bin/bash
# Create list of uninstalled packages.

# Empty Output File
echo -n "" > list.uninstalled

# Loop Over Package List
while read i; do
	# Run Pacman Package Check
	pacman -Qq $i

	# Check Command Result
	if [ $? != 0 ]; then
		# Run Pacman Group Check
		pacman -Qg $i

		# Check Command Result
		if [ $? != 0 ]; then
			# Add Name To List
			echo $i >> list.uninstalled
		fi
	fi
done < list
