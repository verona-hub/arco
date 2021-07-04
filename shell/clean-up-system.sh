#!/bin/bash
set -e

#----------------------------------------------------------------------------------

# Cleanup trash folder:
echo $'\n'
tput setaf 4
echo "Cleaning the trash folder inside .local/" | cowsay | lolcat
echo "********************************************"
echo "********************************************"
tput sgr0
sudo rm -rv ~/.local/share/Trash/*


## Install bleachbit from AUR
package="bleachbit"

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
		echo "Mooo!!! I will install bleachbit with Yay... Give me a sec..." | cowsay -n | lolcat
		echo $'\n'
		echo "**************************************************************"
		echo "**************************************************************"
		echo $'\n'
		tput sgr0

	  yay -S --noconfirm $package
    
	fi

fi


# Checking if installation was successful
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


# Bleachbit cleanup:
echo $'\n'
tput setaf 4
echo "Cleaning the system (cache - localisations - trash - tmp) with Bleachbit" | cowsay | lolcat
echo "**************************************************************************"
echo "**************************************************************************"
tput sgr0

sudo bleachbit --delete system.cache system.localizations system.trash system.tmp


tput setaf 5
echo $'\n'
echo "*************************************************"
echo " --- --- ---       Finished!       --- --- --- --"
echo "*************************************************"
echo "--- ---  All the files have been cleaned! --- ---"
echo "*************************************************"
tput sgr0
echo $'\n'


#----------------------------------------------------------------------------------
