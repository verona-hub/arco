#!/bin/sh

active_window=$(xprop -root _NET_ACTIVE_WINDOW|cut -d ' ' -f 5|sed -e 's/../0&/2')

current_display=$(wmctrl -d|grep "*"|awk '{print $1}')

#########################
# Simple version BEGIN
#
#current_windows=$(wmctrl -lx|awk -v current_display="$current_display" -v active_window="$active_window" '
#
#	{if ($2==current_display) {
#
#		if ($1==active_window) {
#
#			$3="#"$3;
#
#			}
#
#		split($3,window_title,".")
#
#		print "%{A1: wmctrl -ia "$1" & disown:}"window_title[1]"%{A}"
#
#		}
#
#	}')
#
# Simple version END
#########################

#########################
# Decorated version BEGIN
#
color_blue="2ab9ff"
color_magenta="ff557f"
color_green="B4E99D"

active_window_decoration_style_left_side="%{F#$color_green}%{+u}%{u#$color_magenta}"
active_window_decoration_style_right_side="%{-u}%{F-}"

current_windows=$(wmctrl -lx|awk -v current_display="$current_display" -v active_window="$active_window" -v active_window_decoration_style_left_side="$active_window_decoration_style_left_side" -v active_window_decoration_style_right_side="$active_window_decoration_style_right_side" '

	{if ($2==current_display) {

		split($3,window_title,".")

		if ($1==active_window) {

			window_title[1]=active_window_decoration_style_left_side window_title[1] active_window_decoration_style_right_side

			}

		print "%{A1: wmctrl -ia "$1" & disown:} "window_title[1]" %{A}"

		}

	}')
#
# Decorated version END
#######################

echo $current_windows
