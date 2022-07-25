#!/bin/bash

feh --bg-fill ~/.dwm/wallpapers/CatppuccinOrbit.png &
picom --config ~/.dwm/picom/picom.conf --experimental-backends --animations &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
~/.dwm/bar/bar.sh &
~/.local/bin/startdwm
