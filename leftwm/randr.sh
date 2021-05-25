#! /bin/bash

opt=$(autorandr | rofi -dmenu)

if [[ "$opt" == *"(current)"* ]]; then
  echo "Keeping current"
  exit
fi

if [[ "$opt" == "" ]]; then
  exit
fi
autorandr --load $opt

sleep 4s

# reload/restart leftwm so all windows resize. Helpful it we go from mirrored to non-mirrored. 
# Maybe there is a better way to do this
leftwm-command "Reload"

sleep 1s
notify-send "Profile $opt loaded and Window Manager Reloaded"


