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

echo $'\n'
tput setaf 4
echo "****************************************************************"
echo "Copying Conky, Neofetch, Gtk-3.0, Gtk-4.0, Thunar, and Plasma"
echo "files from the downloaded repository to the local system..."
echo "****************************************************************"
tput sgr0

echo "Creating a backup folder inside root"
mkdir -p ~/$backupFolder
echo

echo "Creating Conky folder inside the backup folder"
mkdir -p ~/$conky
echo

echo "Making a backup of the original file"
cp -Rf ~/.config/conky/AK-Wiu-Plasma.conkyrc ~/$conky
echo

echo "Copying the new file to the local system"
cp -arf $PWD/.config/conky/. ~/.config/conky
echo
echo $'\n'


echo $'\n'
tput setaf 4
echo "******************************************************************************************"
echo "Copying Konsole theme settings files from the downloaded repository to the local system..."
echo "******************************************************************************************"
tput sgr0

echo "Creating Konsole folder inside the backup folder"
mkdir -p ~/$konsole
echo

echo "Making a backup of the original file"
cp -Rf ~/.local/share/konsole/. ~/$konsole
echo

echo "Copying the new file to the local system"
cp -arf $PWD/.local/share/konsole/. ~/.local/share/konsole/
echo
echo $'\n'


echo $'\n'
tput setaf 4
echo "****************************************************************"
echo "Copying oh-my-zsh files and Powerlevel10k theme from the downloaded repository to the local system..."
echo "****************************************************************"
tput sgr0

echo "Creating oh-my-zsh plugins folder inside the backup folder"
mkdir -p ~/$ohmyzsh_plugins
echo

echo "Making a backup of the original file"
sudo cp -Rf ~/.oh-my-zsh/custom/plugins/. ~/$ohmyzsh_plugins
echo

echo "Copying the new file to the local system"
cp -arf $PWD/.oh-my-zsh/custom/plugins/. ~/.oh-my-zsh/custom/plugins
echo

echo "Creating oh-my-zsh themes folder inside the backup folder"
mkdir -p ~/$ohmyzsh_themes
echo

echo "Making a backup of the original file"
sudo cp -Rf ~/.oh-my-zsh/themes/. ~/$ohmyzsh_themes
echo

echo "Copying the new file to the local system"
cp -arf $PWD/.oh-my-zsh/themes/. ~/.oh-my-zsh/themes
echo

echo "Creating oh-my-zsh bin-themes folder inside the backup folder"
mkdir -p ~/$ohmyzsh_powerlevel10k
echo

echo "Making a backup of the original file"
sudo cp -arf /usr/share/zsh-theme-powerlevel10k/. ~/$ohmyzsh_powerlevel10k
echo

echo "Copying the new file to the local system"
sudo cp -arf $PWD/usr/share/. ~/usr/share
echo
echo $'\n'


echo $'\n'
tput setaf 4
echo "****************************************************************"
echo "Copying neofetch ASCII logos files from the downloaded repository to the local system..."
echo "****************************************************************"
tput sgr0

echo "Creating Neofetch folder inside the backup folder"
mkdir -p ~/$neofetch
echo

echo "Making a backup of the original file"
sudo cp -arf /usr/bin/neofetch ~/$neofetch
echo

echo "Copying the new file to the local system"
sudo cp -arf $PWD/usr/bin/neofetch ~/usr/bin/
echo
echo $'\n'


echo $'\n'
tput setaf 4
echo "****************************************************************"
echo "Copying .bashrc file from the downloaded repository to the local system..."
echo "****************************************************************"
tput sgr0

echo "Creating Bash folder inside the backup folder"
mkdir -p ~/$bash
echo

echo "Making a backup of the original file"
cp -Rf ~/.bashrc ~/$bash
echo

echo "Copying the new file to the local system"
cp -arf $PWD/bash/. ~
echo
echo $'\n'


echo $'\n'
tput setaf 4
echo "****************************************************************"
echo "Copying .zshrc file from the downloaded repository to the local system..."
echo "****************************************************************"
tput sgr0

echo "Creating zsh folder inside the backup folder"
mkdir -p ~/$zsh
echo

echo "Making a backup of the original file"
cp -Rf ~/.zshrc ~/$zsh
echo

echo "Copying the new file to the local system"
cp -arf $PWD/zsh/. ~
echo
echo $'\n'

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
