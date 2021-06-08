#!/bin/bash
set -e

# Call it from xinitrc
while [ "$DISPLAY" == ":0.0" ]
do
    fbsetbg -R ~/.wallpapers
    sleep 30m
done


while :; do
    display -window root "$(find ~/pictures/wps -type f | shuf -n1)"
    sleep 15m
done &