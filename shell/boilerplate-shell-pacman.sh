#!/bin/bash
set -e

## Install xxx
package="xxx"

#----------------------------------------------------------------------------------

#checking if xxx is already installed or else install
if pacman -Qi $package &> /dev/null; then

		tput setaf 2
		echo $'\n'
		echo ""$package" is already installed" | cowsay -n | lolcat
		echo "***********************************"
		echo "***********************************"
		echo $'\n'
		tput sgr0

else

		tput setaf 3
		echo $'\n'
		echo "Mooo!!! I will install xxx... Give me a sec..." | cowsay -n | lolcat
		echo $'\n'
		echo "**************************************************************"
		echo "**************************************************************"
		echo $'\n'
		tput sgr0

		sudo pacman -S --noconfirm $package

fi


# Just checking if installation was successful
if pacman -Qi $package &> /dev/null; then

	tput setaf 2
	echo $'\n'
	echo ""$package" has been successfully installed!" | cowsay -n | lolcat
	echo "***********************************************"
	echo "***********************************************"
	tput sgr0

else

	tput setaf 1
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  "$package" has NOT been installed!" | cowsay -n | lolcat
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	tput sgr0

fi

#----------------------------------------------------------------------------------