#!/bin/bash
set -e

#software from Arch Linux repositories

# 1. Text Editor
sudo pacman -S --noconfirm --needed atom

# 2. Bash language for Atom
sudo pacman -S --noconfirm --needed bash-language-server

# 3. Resource Monitor
sudo pacman -S --noconfirm --needed bashtop

# 4. Search Feature
sudo pacman -S --noconfirm --needed catfish

# 5. Antivirus
sudo pacman -S --noconfirm --needed clamav

# 6. Terminal Addition
sudo pacman -S --noconfirm --needed cowsay

# 7. Terminal Additions - colors
sudo pacman -S --noconfirm --needed lolcat

# 8. Passwords for keyrings
sudo pacman -S --noconfirm --needed seahorse

# 9. File Manager
sudo pacman -S --noconfirm --needed thunar

# 10. Firewall
sudo pacman -S --noconfirm --needed ufw

# 11. Video Player
sudo pacman -S --noconfirm --needed vlc

# 12. zsh plugin
sudo pacman -S --noconfirm --needed zsh-syntax-highlighting


############################################################################

###########
## Fonts ##
###########

# Adobe Source Pro
sudo pacman -S --noconfirm --needed adobe-source-code-pro-fonts

# Firefox Fira Mono
sudo pacman -S --noconfirm --needed ttf-fira-mono

# Lato
sudo pacman -S --noconfirm --needed ttf-lato


###################################################################################

echo "################################################################"
echo "################### core software installed"
echo "################################################################"