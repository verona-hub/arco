#!/bin/bash
set -e


### Install Virtualbox
virtualbox="virtualbox"
virtualbox_guest="virtualbox-guest-iso"
extention_pack="virtualbox-ext-oracle"

#----------------------------------------------------------------------------------

# Checking if applications are already installed with pacman
if pacman -Qi $virtualbox &> /dev/null && pacman -Qi $virtualbox_guest &> /dev/null; then

		tput setaf 2
		echo $'\n'
		echo "###########################################################################"
		echo "####    "$virtualbox" and "virtualbox_guest" are already installed!    ####"
		echo "###########################################################################"
		echo $'\n'
		tput sgr0

else

		# Install with pacman
		tput setaf 3
		echo $'\n'
		echo "###########################################################################"
		echo "####    Installing Virtualbox...    #######################################"
		echo "###########################################################################"
		echo $'\n'
		tput sgr0
		
		sudo pacman -S --noconfirm $virtualbox $virtualbox_guest
		
fi


### Adding the current user to the VirtualBox usergroup
tput setaf 2
echo $'\n'
echo "###########################################################################"
echo "####    Adding the current user to the vboxusers group...    ##############"
echo "###########################################################################"
echo $'\n'
sudo gpasswd -a admin vboxusers
echo $'\n'
echo "###########################################################################"
echo "####    user admin successfully added to the vboxusers group!    ##########"
echo "###########################################################################"
echo $'\n'
tput sgr0



### Adding the VirtualBox module to the kernel
tput setaf 2
echo "###########################################################################"
echo "####    Adding the VirtualBox module to the kernel...    ##################"
echo "###########################################################################"
echo $'\n'
sudo modprobe vboxdrv
echo $'\n'
echo "###########################################################################"
echo "####    Module successfully added to the kernel!    #######################"
echo "###########################################################################"
echo $'\n'
tput sgr0


#----------------------------------------------------------------------------------



### Installing Virtualbox Extension Pack with yay
# Checking if already installed with yay
if pacman -Qi yay $extention_pack &> /dev/null; then
	
	tput setaf 2
	echo $'\n'
	echo "###########################################################################"
	echo "####   "$extention_pack" is already installed!    #########################"
	echo "###########################################################################"
	echo $'\n'
	tput sgr0
	
else	
	
	# Install with yay
  tput setaf 3
	echo $'\n'
  echo "###########################################################################"
  echo "####    Installing Virtualbox Extension Pack with yay    ##################"
  echo "###########################################################################"
	echo $'\n'
	yay -S --noconfirm $extention_pack
  tput sgr0

fi


#----------------------------------------------------------------------------------


# Just checking if installation was successful
if pacman -Qi $virtualbox &> /dev/null && pacman -Qi $virtualbox_guest &> /dev/null && pacman -Qi yay $extention_pack &> /dev/null; then

	tput setaf 2
	echo $'\n'
	echo "#########################################################################################################"
	echo "####    Completed !!!    ################################################################################"
	echo "#########################################################################################################"
	echo "####    "$virtualbox", "$virtualbox_guest", and "$extention_pack" have been installed    ##############"
	echo "#########################################################################################################"
	tput sgr0

else

	tput setaf 1
	echo $'\n'
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo "!!  "$virtualbox", "$virtualbox_guest", and "$extention_pack" have NOT been installed!  "
	echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
	echo $'\n'
	tput sgr0

fi

#----------------------------------------------------------------------------------