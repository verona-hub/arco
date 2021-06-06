#!/bin/bash
set -e

## Install Yay
package="base-devel"
package2="git"

#----------------------------------------------------------------------------------

#checking if base-deve and git are already installed or else install
if pacman -Qi $package &> /dev/null && pacman -Qi $package2 &> /dev/null; then

		tput setaf 2
		echo $'\n'
		echo ""$package" and "$package2" are already installed" | cowsay -n | lolcat
		echo "*************************************************"
		echo "*************************************************"
		echo $'\n'
		tput sgr0

else

		tput setaf 3
		echo $'\n'
		echo "Mooo!!! I will install $package and $package2... Give me a sec..." | cowsay -n | lolcat
		echo $'\n'
		echo "******************************************************************"
		echo "******************************************************************"
		echo $'\n'
		tput sgr0

		sudo pacman -S --noconfirm --needed $package $package2

fi


# Just checking if installation was successful
if pacman -Qi $package &> /dev/null; then

	tput setaf 2
	echo $'\n'
	echo ""$package" and "$package2" have been successfully installed!" | cowsay -n | lolcat
	echo "**************************************************************"
	echo "**************************************************************"
	tput sgr0

else

	tput setaf 1
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!"$package" and "$package2" have NOT been installed!" | cowsay -n | lolcat
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	tput sgr0

fi


#----------------------------------------------------------------------------------

tput setaf 3
echo $'\n'
echo "Going to root folder" | cowsay -n | lolcat
cd
echo $'\n'
echo "Cloning yay from aur" | cowsay -n | lolcat
git clone https://aur.archlinux.org/yay.git
echo $'\n'
echo "Going to yay folder and starting to build yay..." | cowsay -n | lolcat
cd yay
makepkg -sic
tput sgr0


# Checking if yay installation was successful
if pacman -Qi yay &> /dev/null; then

	tput setaf 2
	echo $'\n'
	echo "Yay has been successfully installed!" | cowsay -n | lolcat
	echo "***********************************************"
	echo "***********************************************"
	tput sgr0

else

	tput setaf 1
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!!!!!!!!  Yay has NOT been installed!" | cowsay -n | lolcat
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	tput sgr0

fi

#----------------------------------------------------------------------------------