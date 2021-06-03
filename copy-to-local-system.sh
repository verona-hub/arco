#!/bin/bash
set -e

#----------------------------------------------------------------------------------
# Location Variabiles
backupFolder="backup-before-import-$(date +%Y.%m.%d-%H.%M.%S)"
conky="$backupFolder/conky"
konsole="$backupFolder/konsole"
ohmyzsh_plugins="$backupFolder/oh-my-zsh/custom/plugins"
ohmyzsh_themes="$backupFolder/oh-my-zsh/themes"
ohmyzsh_powerlevel10k="$backupFolder/oh-my-zsh/bin-themes/zsh-theme-powerlevel10k"
neofetch="$backupFolder/neofetch"
bash="$backupFolder/bash"
zsh="$backupFolder/zsh"
thunar="$backupFolder/thunar"
kwinrc="$backupFolder/kwinrc"
plasma="$backupFolder/plasma"

echo $'\n'
tput setaf 4
echo "*******************************************************************"
echo "Copying files from the downloaded repository to the local system..."
echo "*******************************************************************"
tput sgr0

echo "1) Creating a backup folder inside root"
mkdir -p ~/$backupFolder
echo

echo "2) Creating Conky folder inside the backup folder"
mkdir -p ~/$conky
echo

echo "3) Making a backup of the original file"
cp -Rf ~/.config/conky/AK-Wiu-Plasma.conkyrc ~/$conky
echo

echo "4) Copying the new file to the local system"
cp -arf $PWD/.config/conky/. ~/.config/conky
echo
echo $'\n'


echo $'\n'
tput setaf 4
echo "******************************************************************************************"
echo "Copying Konsole theme settings files from the downloaded repository to the local system..."
echo "******************************************************************************************"
tput sgr0

echo "5) Creating Konsole folder inside the backup folder"
mkdir -p ~/$konsole
echo

echo "6) Making a backup of the original file"
cp -Rf ~/.local/share/konsole/. ~/$konsole
echo

echo "7) Copying the new file to the local system"
cp -arf $PWD/.local/share/konsole/. ~/.local/share/konsole/
echo
echo $'\n'


echo $'\n'
tput setaf 4
echo "****************************************************************"
echo "Copying oh-my-zsh files and Powerlevel10k theme from the downloaded repository to the local system..."
echo "****************************************************************"
tput sgr0

echo "8) Creating oh-my-zsh plugins folder inside the backup folder"
mkdir -p ~/$ohmyzsh_plugins
echo

echo "9) Making a backup of the original file"
cp -Rf ~/.oh-my-zsh/custom/plugins/. ~/$ohmyzsh_plugins
echo

echo "10) Copying the new file to the local system"
cp -arf $PWD/.oh-my-zsh/custom/plugins/. ~/.oh-my-zsh/custom/plugins
echo



echo "11) Creating oh-my-zsh themes folder inside the backup folder"
mkdir -p ~/$ohmyzsh_themes
echo

echo "12) Making a backup of the original file"
cp -Rf ~/.oh-my-zsh/themes/. ~/$ohmyzsh_themes
echo

echo "13) Copying the new file to the local system"
cp -arf $PWD/.oh-my-zsh/themes/. ~/.oh-my-zsh/themes
echo



echo "14) Creating oh-my-zsh bin-themes folder inside the backup folder"
mkdir -p ~/$ohmyzsh_powerlevel10k
echo

echo "15) Making a backup of the original file"
sudo cp -arf /usr/share/zsh-theme-powerlevel10k/. ~/$ohmyzsh_powerlevel10k
echo

echo "16) Copying the new file to the local system"
sudo cp -arf $PWD/usr/share/. /usr/share
echo
echo $'\n'


echo $'\n'
tput setaf 4
echo "********************************************************************"
echo "Copying neofetch settings and  ASCII logos files from the downloaded
echo  repository to the local system..."
echo "********************************************************************"
tput sgr0

echo "17) Creating Neofetch folder inside the backup folder"
mkdir -p ~/$neofetch
echo

echo "18) Making a backup of the original neofetch.sh file"
sudo cp -arf /usr/bin/neofetch ~/$neofetch
echo

echo "19) Copying the new file to the local system"
sudo cp -arf $PWD/usr/bin/neofetch /usr/bin/
echo
echo $'\n'


echo "20) Making a backup of the original .config file"
cp -arf ~/.config/neofetch/. ~/$neofetch
echo

echo "21) Copying the new .config file to the local system"
cp -arf $PWD/.config/neofetch/. ~/.config/neofetch
echo
echo $'\n'


echo $'\n'
tput setaf 4
echo "****************************************************************"
echo "Copying .bashrc file from the downloaded repository to the local system..."
echo "****************************************************************"
tput sgr0

echo "22) Creating Bash folder inside the backup folder"
mkdir -p ~/$bash
echo

echo "23) Making a backup of the original file"
cp -Rf ~/.bashrc ~/$bash
echo

echo "24) Copying the new file to the local system"
cp -arf $PWD/bash/. ~
echo
echo $'\n'


echo $'\n'
tput setaf 4
echo "****************************************************************"
echo "Copying .zshrc file from the downloaded repository to the local system..."
echo "****************************************************************"
tput sgr0

echo "25) Creating zsh folder inside the backup folder"
mkdir -p ~/$zsh
echo

echo "26) Making a backup of the original file"
cp -Rf ~/.zshrc ~/$zsh
echo

echo "27) Copying the new file to the local system"
cp -arf $PWD/zsh/. ~
echo
echo $'\n'


echo $'\n'
tput setaf 4
echo "*************************************************************************"
echo "Copying Thunar file from the downloaded repository to the local system..."
echo "*************************************************************************"
tput sgr0

echo "28) Creating Thunar folder inside the backup folder"
mkdir -p ~/$thunar
echo

echo "29) Making a backup of the original file"
cp -Rf ~/.config/Thunar/. ~/$thunar
echo

echo "30) Copying the new file to the local system"
cp -arf $PWD/.config/Thunar/. ~/.config/Thunar
echo
echo $'\n'



echo $'\n'
tput setaf 4
echo "*********************************************************************************************"
echo "Copying kwinrc and plasma setting files from the downloaded repository to the local system..."
echo "*********************************************************************************************"
tput sgr0

echo "31) Creating kwinrc and plasma folders inside the backup folder"
mkdir -p ~/$kwinrc
mkdir -p ~/$plasma
echo

echo "32) Making a backup of the original files"
cp -Rf ~/.config/kwinrc ~/$kwinrc
cp -Rf ~/.config/plasma-org.kde.plasma.desktop-appletsrc ~/$plasma
cp -Rf ~/.config/powermanagementprofilesrc ~/$plasma
echo

echo "33) Copying the new files to the local system"
cp -arf $PWD/.config/kwinrc ~/.config
cp -arf $PWD/.config/plasma-org.kde.plasma.desktop-appletsrc ~/.config
cp -arf $PWD/.config/powermanagementprofilesrc ~/.config
echo
echo $'\n'



#----------------------------------------------------------------------------------


tput setaf 5
echo $'\n'
echo "*************************************************"
echo " --- --- ---       Finished!       --- --- --- --"
echo "*************************************************"
echo " Backup has been made and files have been moved! "
echo "*************************************************"
tput sgr0
echo $'\n'


#----------------------------------------------------------------------------------
