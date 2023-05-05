#!/usr/bin/fish
swayidle -w \
    timeout 1500 'light -G > /tmp/brightness && light -S 10' resume 'light -S $([ -f /tmp/brightness ] && cat /tmp/brightness || echo 100%)' \
    timeout 1800 'exec swaylock --daemonize --ignore-empty-password' \
    timeout 3600 'hyprctl dispatch dpms off' \
    resume 'hyprctl dispatch dpms on' \
    before-sleep 'playerctl pause' \
    before-sleep 'exec $locking'
