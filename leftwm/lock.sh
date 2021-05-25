#!/bin/bash

scrot -z /tmp/screen.png
#xwobf -s 3 -f /tmp/screen.png
corrupter -bheight 3 -boffset 9 -mag 2 /tmp/screen.png /tmp/screen2.png
i3lock -e -i /tmp/screen2.png --greetertext="Locked"
rm /tmp/screen.png
#feh /tmp/screen2.png
