#!/bin/bash
# set -e


#----------------------------------------------------------------------------------

# Setting the wallpaper:
echo $'\n'
tput setaf 4
echo "Changing the wallpaper..." | cowsay | lolcat
echo "*******************************"
echo "*******************************"
tput sgr0

# while [ "$DISPLAY" == ":0.0" ]
# do
#     display -window root ~/Pictures/Astronaut-in-the-ocean.jpg
#     sleep 30m
# done

# feh --bg-scale ~/Pictures/Astronaut-in-the-ocean.jpg
  feh --bg-scale /home/admin/Pictures/Space.jpg



# feh --bg-fill /home/admin/Pictures/Astronaut-in-the-ocean.jpg
# feh --bg-max /home/admin/Pictures/Astronaut-in-the-ocean.jpg

# xsetroot -bitmap ~/Pictures/Astronaut-in-the-ocean.jpg

# xloadimage -onroot -fullscreen ~/Pictures/Astronaut-in-the-ocean.jpg

# display -window root ~/Pictures/Astronaut-in-the-ocean.jpg
# (requires ImageMagic)



#----------------------------------------------------------------------------------
