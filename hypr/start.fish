#!/usr/bin/env fish

# ~/.config/hypr/xdg-portal-hyprland &
systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
systemctl --user start polkit-gnome-authentication-agent-1
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP --components=shh,secrets,pkcs11 --start --all
systemctl --user import-environment QT_QPA_PLATFORMTHEME

sleep 1
1password --silent &


wl-clipboard-history -t &
# dunst &
swaync &
wlsunset -l 33.9 -L -84.6 & #-S 6:30 -s 19:30

# ~/.config/hypr/swayidle.fish
ydotoold &
nm-applet --indicator &

# Bar
waybar &
# eww open bar

# systemctl --user import-environment && gnome-keyring-daemon --components=ssh\,secrets\,pkcs11 --start
dbus-update-activation-environment --all
#
# Wallpaper
# sleep 2
swww init &

# sleep 30
# spotifyd
udiskie&

set locking gtklock --daemonize

swayidle -w \
    timeout 1500 'light -G > /tmp/brightness && light -S 10' resume 'light -S $([ -f /tmp/brightness ] && cat /tmp/brightness || echo 100%)' \
    timeout 1800 'exec $locking' \
    timeout 3600 'hyprctl dispatch dpms off' \
    resume 'hyprctl dispatch dpms on' \
    before-sleep 'playerctl pause' \
    before-sleep 'exec $locking'
