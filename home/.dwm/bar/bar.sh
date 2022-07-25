#!/bin/bash

interval=0

. ~/.dwm/bar/themes/catppuccin

cpu() {
  cpu_val=$(grep -o "^[^ ]*" /proc/loadavg)

  printf "^c$black^ ^b$green^ CPU"
  printf "^c$black^ ^b$green^ $cpu_val "
}

pkg_updates() {
  #updates=$(doas xbps-install -un | wc -l) # void
  updates=$(checkupdates | wc -l)   # arch
  # updates=$(aptitude search '~U' | wc -l)  # apt (ubuntu,debian etc)

  if [ -z "$updates" ]; then
    printf "^c$black^ ^b$yellow^  Fully Updated"
  else
    printf "^c$black^  ^b$yellow^  $updates"" Updates"
  fi
}

mem() {
  printf "^c$black^^b$red^  "
  printf "^c$black^ $(free -h | awk '/^Mem/ { print $3 }' | sed s/i//g)"
}

clock() {
	printf "^c$black^ ^b$rosewater^  "
	printf "^c$black^^b$rosewater^ $(date '+%I:%M %p')  "
}

update_vol () { 
	vol="$([ "$(pamixer --get-mute)" = "false" ] && printf "^c$black^ ^b$blue^ 🔊 " || printf '🔇')$(pamixer --get-volume)%"
}

update_weather () { 
	weather="$(curl -s "wttr.in?format=1"| sed -E "s/^(.).*\+/\1/")" 
  printf "^c$black^ ^b$pink^ $weather"
}

update_vol

while true; do

  [ $interval = 0 ] || [ $(($interval % 3600)) = 0 ] && updates=$(pkg_updates)
  interval=$((interval + 1))

  sleep 1 && xsetroot -name "$updates $(update_weather) $vol $(cpu) $(mem) $(clock)"
done
