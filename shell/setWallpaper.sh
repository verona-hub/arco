#!/bin/bash
set -e

#----------------------------------------------------------------------------------

backupFolder="backup-wallpaper-settings-$(date +%Y.%m.%d-%H.%M.%S)"
parentdir="$(dirname "$PWD")"

# Change the wallpaper:
echo $'\n'
tput setaf 4
echo "Mooo! I will change your wallpaper..." | cowsay | lolcat
echo "**************************************"
echo "**************************************"
tput sgr0

echo "1) Creating a backup folder inside root"
mkdir -p ~/$backupFolder
echo

echo "2) Making a backup of the original file: admin/.config/plasma-org.kde.plasma.desktopappletsrc"
cp -Rf /home/admin/.config/plasma-org.kde.plasma.desktopappletsrc ~/$backupFolder
echo

echo "3) Moving to parent directory where wallpapers folder is located"
cd $parentdir
echo

echo "4) Copying the new wallpapers to the local Pictures folder"
cp -arf $PWD/wallpapers/. ~/Pictures
echo
echo $'\n'

echo "5) Select which wallpaper you would like to set as background:"
echo
echo "0.  Do nothing"
echo "1.  Space Plasma"
echo "2.  Astronaut in the ocean"
echo "Type the number..."

read CHOICE

case $CHOICE in

    0 )
      echo
      echo "*******************************"
      echo " --- No changes were made! --- " | cowsay | lolcat
      echo "*******************************"
      echo
      ;;

    1 )
			sed -i '/Image=file/c\Image=file:///home/admin/Pictures/Space-Plasma-4K.jpg' /home/admin/.config/plasma-org.kde.plasma.desktop-appletsrc
      ;;
    
    2 )
  		sed -i '/Image=file/c\Image=file:///home/admin/Pictures/Astronaut-in-the-ocean.jpg' /home/admin/.config/plasma-org.kde.plasma.desktopappletsrc
      ;;
    
    * )
    
      echo "*********************************"
      echo " -- Choose the correct number -- " | cowsay | lolcat
      echo "*********************************"
      ;;
esac

tput setaf 4
echo $'\n'
echo "4) Adding the /home/admin/Pictures folder path to admin/.config/plasma-org.kde.plasma.desktopappletsrc"
sed -i '/SlidePaths/s/$/,\/home\/admin\/Pictures/' /home/admin/.config/plasma-org.kde.plasma.desktop-appletsrc
echo
echo $'\n'
tput sgr0


#--------------------------------------------------------------------------------------------------------------

tput setaf 5
echo "**************************************************"
echo "  --- --- ---        Finished!         --- --- ---"
echo "**************************************************"
echo "  Backup has been made and files have been moved! "
echo "**************************************************"
echo "     Restart your system to apply the changes!    "
echo "**************************************************"
tput sgr0
echo $'\n'

#--------------------------------------------------------------------------------------------------------------
