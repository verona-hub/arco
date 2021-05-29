#!/bin/bash
#set -e

#----------------------------------------------------------------------------------


echo $'\n'
tput setaf 4
echo "****************************************************************"
echo "Copying Conky and Neofetch ./config files from the downloaded repository to the local system..."
echo "****************************************************************"
tput sgr0
mkdir -p ~/backup-before-import/
cp -Rf ~/.config ~/backup-before-import/.config-backup-$(date +%Y.%m.%d-%H.%M.%S)
cp -arf $PWD/.config/. ~/.config
echo $'\n'


echo $'\n'
tput setaf 4
echo "****************************************************************"
echo "Copying Konsole theme settings files from the downloaded repository to the local system..."
echo "****************************************************************"
tput sgr0
cp -Rf ~/.local/share/konsole ~/backup-before-import/konsole-backup-$(date +%Y.%m.%d-%H.%M.%S)
cp -arf $PWD/.local/share/konsole/. ~/.local/share/konsole/
echo $'\n'


echo $'\n'
tput setaf 4
echo "****************************************************************"
echo "Copying oh-my-zsh files from the downloaded repository to the local system..."
echo "****************************************************************"
tput sgr0
sudo cp -Rf ~/.oh-my-zsh/custom/plugins ~/backup-before-import/.oh-my-zsh-custom-plugins-backup-$(date +%Y.%m.%d-%H.%M.%S)
cp -arf $PWD/.oh-my-zsh/. ~/.oh-my-zsh
echo $'\n'


echo $'\n'
tput setaf 4
echo "****************************************************************"
echo "Copying neofetch ASCII logos files from the downloaded repository to the local system..."
echo "****************************************************************"
tput sgr0
sudo cp -arf /usr/bin/. ~/backup-before-import/neofetch-backup-$(date +%Y.%m.%d-%H.%M.%S)
sudo cp -arf $PWD/usr/. ~/usr/
echo $'\n'


echo $'\n'
tput setaf 4
echo "****************************************************************"
echo "Copying .zshrc file from the downloaded repository to the local system..."
echo "****************************************************************"
tput sgr0
cp -af ~/.zshrc ~/backup-before-import/.zshrc-$(date +%Y.%m.%d-%H.%M.%S)
cp -arf $PWD/zsh/. ~
echo $'\n'


echo $'\n'
tput setaf 5
echo $'\n'
echo "***********************************************"
echo "Finished!"
echo "***********************************************"
echo "Backup has been made and files have been moved!"
echo "***********************************************"
tput sgr0
echo $'\n'


#----------------------------------------------------------------------------------
