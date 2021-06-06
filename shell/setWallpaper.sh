#!/bin/bash
set -e


#----------------------------------------------------------------------------------

# Cleanup trash folder:
echo $'\n'
tput setaf 4
echo "Changing the wallpaper..." | cowsay | lolcat
echo "*******************************"
echo "*******************************"
tput sgr0

# while :; do
#    display -window root "$(find ~/pictures/wps -type f | shuf -n1)"
#    sleep 15m
# done &

feh --bg-scale /path/to/wallpaper

# feh --bg-fill /path/to/background_image


# xsetroot -bitmap filename.bmp


#----------------------------------------------------------------------------------