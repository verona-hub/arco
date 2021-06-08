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

echo "2) Moving to parent directory where wallpapers folder is located"
cd $parentdir
echo

echo "3) Copying the new wallpapers to the local Pictures folder"
cp -arf $PWD/wallpapers/Astronaut-in-the-ocean.jpg ~/Pictures
cp -arf $PWD/wallpapers/Space-Plasma-4K.jpg ~/Pictures
echo
echo $'\n'

echo "4) Copying the original file location .txt"
cp -arf $PWD/wallpapers/setwallper-location ~/Pictures
echo
echo $'\n'

echo "5) Making a backup of the original setting file inside /.local/share/kservices5/ServiceMenus"
cp -Rf ~/.local/share/kservices5/ServiceMenus/. ~/$backupFolder
echo

echo "6) Copying the new setting file to the local system"
cp -arf $PWD/wallpapers/SetAsWallpaper-20200109222008.desktop ~/.local/share/kservices5/ServiceMenus/
echo
echo $'\n'

#----------------------------------------------------------------------------------

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

#----------------------------------------------------------------------------------
