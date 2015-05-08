#!/bin/bash
# Split package list into AUR, official and uninstalled lists.

# Empty Output Files
echo -n "" > list.aur
echo -n "" > list.official

# Loop Over Package List
while read i; do
	# Run Package Validity Check
	pacman -Sddp $i

	# Check Package Validity Result
	if [ $? != 0 ]; then
		# Add Package To AUR List
		echo $i >> list.aur
	else
		# Add Package To Official List
		echo $i >> list.official
	fi

	# Run Package Install Check
	pacman -Qq $i

	# Check Package Install Result
	if [ $? != 0 ]; then
		# Run Pacman Group Check
		pacman -Qg $i

		# Check Pacman Group Result
		if [ $? != 0 ]; then
			# Add Package To Uninstalled List
			echo $i >> list.uninstalled
		fi
	fi
done < list
