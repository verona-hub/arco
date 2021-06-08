#!/bin/bash
set -e

#----------------------------------------------------------------------------------

# Remove Discover from autostart:
echo $'\n'
tput setaf 4
echo "Removing Discover from autostart" | cowsay | lolcat
echo "********************************************"
echo "********************************************"
echo $'\n'
tput sgr0

sudo rm -rv /etc/xdg/autostart/org.kde.discover.notifier.desktop

tput setaf 5
echo $'\n'
echo "*************************************************"
echo " --- --- ---       Finished!       --- --- --- --"
echo "*************************************************"
tput sgr0
echo $'\n'


#----------------------------------------------------------------------------------
