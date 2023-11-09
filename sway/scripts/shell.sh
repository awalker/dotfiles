#!/usr/bin/env fish
# wrapper script for foot

# USER_CONFIG_PATH="${HOME}/.config/foot/foot.ini"
#
# if [ -f "$USER_CONFIG_PATH" ]; then
#     USER_CONFIG=$USER_CONFIG_PATH
# fi

# foot -c "${USER_CONFIG:-"/usr/share/sway/templates/foot.ini"}" "$@" &
# alacritty "$@" &
#alacritty /home/walke/go/bin/zellijer
alacritty -e zellijer
#
#/usr/bin/wezterm-gui start --cwd .
#
# if [ $(swaymsg -t get_tree | jq '.. | select(.type?) | select(.focused==true and .window_properties.class == "org.wezfurlong.wezterm").window_properties.class, select(.focused==true and .app_id =="org.wezfurlong.wezterm").app_id') ]; then
# 	PANE_ID=$(wezterm cli list-clients --format json | jq '.[] | .focused_pane_id')
# 	WORKDIR=$(wezterm cli list --format json | jq -r ".[] | select(.pane_id == $PANE_ID).cwd")
# 	wezterm cli spawn --new-window --cwd ${WORKDIR#file://adam-nuc}
# 	false
# else
# 	wezterm
# fi
