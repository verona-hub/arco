#!/bin/bash

sudo pacman -S base-devel git --needed
cd 
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -sic