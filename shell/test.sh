#!/bin/bash
set -e

# Call it from xinitrc
while [ "$DISPLAY" == ":0.0" ]
do
    fbsetbg -R ~/.wallpapers
    sleep 30m
done