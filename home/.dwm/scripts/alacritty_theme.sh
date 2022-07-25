#!/bin/bash

config="$HOME/.dwm/alacritty/colors.yml"

declare -a options=(
"frappe"
"latte"
"macchiato"
"mocha"
"saga"
"quit"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -l 6 -p 'Alacritty Themes' -theme ~/.dwm/rofi/themes/saga.rasi)

case $choice in
    'frappe')
        sed -i '/colors:/c\colors: *frappe' $config ;;
    'latte')
        sed -i '/colors:/c\colors: *latte' $config ;;
    'macchiato')
        sed -i '/colors:/c\colors: *macchiato' $config ;;
    'mocha')
        sed -i '/colors:/c\colors: *mocha' $config ;;
    'saga')
        sed -i '/colors:/c\colors: *saga' $config ;;
    'quit')
        echo "No theme chosen" && exit 1 ;;
esac

