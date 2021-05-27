#!/bin/bash
set -e

## Install Thunar-megasync from AUR
package="thunar-megasync"

#----------------------------------------------------------------------------------

#checking if application is already installed or else install with aur
if yay -Qi $package &> /dev/null; then

		tput setaf 2
		echo $'\n'
		echo ""$package" is already installed" | cowsay -n | lolcat
		echo "***********************************"
		echo "***********************************"
		echo $'\n'
		tput sgr0

else

	#checking which helper is installed
	if pacman -Qi yay &> /dev/null; then

		tput setaf 3
		echo $'\n'
		echo "Mooo!!! I will install Thunar-megasync with Yay... Give me a sec..." | cowsay -n | lolcat
		echo $'\n'
		echo "***********************************************************************"
		echo "***********************************************************************"
		echo $'\n'
		tput sgr0

		sudo yay -S --noconfirm $package

	fi

fi


# Just checking if installation was successful
if yay -Qi $package &> /dev/null; then

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