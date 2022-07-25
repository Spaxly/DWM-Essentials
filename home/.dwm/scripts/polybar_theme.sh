#!/bin/bash

config="$HOME/.config/bspwm/polybar/colors.ini"

declare -a options=(
  "frappe"
  "latte"
  "macchiato"
  "mocha"
  "saga"
  "quit"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -l 6 -p 'Polybar Themes' -theme ~/.config/bspwm/rofi/themes/saga.rasi)

case $choice in
  'frappe')
    echo "
[colors]
background = #303446
foreground = #c6d0f5
color0 = #232634
color1 = #292c3c
color2 = #414559
color3 = #f2d5cf
color4 = #eebebe
color5 = #e78284
color6 = #a6d189
color7 = #e5c890
color8 = #ef9f76
color9 = #81c8be
color10 = #babbf1
color11 = #a5adce
color12 = #b5bfe2
color15 = #949cbb
    " > $config
    $HOME/.config/bspwm/polybar/launch.sh &
    ;; 
  'latte')
    echo "
[colors]
background = #eff1f5
foreground = #4c4f69
color0 = #dce0e8
color1 = #e6e9ef
color2 = #ccd0da
color3 = #dc8a78
color4 = #dd7878
color5 = #e64553
color6 = #40a02b
color7 = #df8e1d
color8 = #fe640b
color9 = #04a5e5
color10 = #8839ef
color11 = #7c7f93
color12 = #8c8fa1
color15 = #9ca0b0
    " > $config
    $HOME/.config/bspwm/polybar/launch.sh &
    ;;
  'macchiato')
    echo "
[colors]
background = #24273a
foreground = #cad3f5
color0 = #181926
color1 = #1e2030
color2 = #363a4f
color3 = #f0c6c6
color4 = #f5bde6
color5 = #ed8796
color6 = #a6da95
color7 = #eed49f
color8 = #f5a97f
color9 = #91d7e3
color10 = #c6a0f6
color11 = #a5adcb
color12 = #b8c0e0
color15 = #b7bdf8
    " > $config
    $HOME/.config/bspwm/polybar/launch.sh &
    ;;
  'mocha')
    echo "
[colors]
background = #1d1d2d
foreground = #cdd6f4
color0 = #11111b
color1 = #181825
color2 = #313244
color3 = #f2cdcd
color4 = #f5c2e7
color5 = #f38ba8
color6 = #a6e3a1
color7 = #f9e2af
color8 = #fab387
color9 = #89dceb
color10 = #b4befe
color11 = #a6adc8
color12 = #bac2de
color15 = #9399b2 
    " > $config
    $HOME/.config/bspwm/polybar/launch.sh &
    ;;
  'saga')
    echo "
[colors]
background = #0A0D0F
foreground = #FFFCFF
color0 = #0F1214
color1 = #141719
color2 = #191C1E
color3 = #F5D0D0
color4 = #FFBDCB
color5 = #FFB2AD
color6 = #B4F8C8
color7 = #FFFFC1
color8 = #FFDCAC
color9 = #BFFBF9
color10 = #D2C5E8
color11 = #FAEDFF
color12 = #F5E8FF
color15 = #FFF2FF
    " > $config
    $HOME/.config/bspwm/polybar/launch.sh &
    ;;
  'quit')
    echo "No theme chosen" && exit 1 ;;
esac
