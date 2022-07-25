#!/bin/bash

config="$HOME/.dwm/rofi/launch.sh"

declare -a options=(
  "latte"
  "frappe"
  "mocha"
  "macchiato"
  "saga"
  "quit"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -l 6 -p 'Rofi Themes' -theme ~/.dwm/rofi/themes/saga.rasi)

case $choice in
  'latte')
    echo "rofi -show drun -theme ~/.dwm/rofi/themes/catppuccin-latte.rasi" > $config
    chmod +x $config ;;
  'frappe')
    echo "rofi -show drun -theme ~/.dwm/rofi/themes/catppuccin-frappe" > $config 
    chmod +x $config ;;
  'mocha')
    echo "rofi -show drun -theme ~/.dwm/rofi/themes/catppuccin-mocha.rasi" > $config
    chmod +x $config ;;
  'macchiato')
    echo "rofi -show drun -theme ~/.dwm/rofi/themes/catppuccin-macchiato.rasi" > $config
    chmod +x $config ;;
  'saga')
    echo "rofi -show drun -theme ~/.dwm/rofi/themes/saga.rasi" > $config
    chmod +x $config ;;
  'quit')
    echo "No theme chosen" && exit 1 ;;
esac
