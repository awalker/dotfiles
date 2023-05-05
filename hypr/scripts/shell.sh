#!/bin/sh
# wrapper script for foot

# USER_CONFIG_PATH="${HOME}/.config/foot/foot.ini"
#
# if [ -f "$USER_CONFIG_PATH" ]; then
#     USER_CONFIG=$USER_CONFIG_PATH
# fi

# foot -c "${USER_CONFIG:-"/usr/share/sway/templates/foot.ini"}" "$@" &
#alacritty "$@" &
#
#/usr/bin/wezterm-gui start --cwd .
if [ $1 ]; then
	PANE_ID=$(wezterm cli list-clients --format json | jq '.[] | .focused_pane_id')
	WORKDIR=$(wezterm cli list --format json | jq -r ".[] | select(.pane_id == $PANE_ID).cwd")
	wezterm cli spawn --new-window --cwd ${WORKDIR#file://adam-nuc}
	#rofi -dmenu "$PANE_ID" "$WORKDIR"
	false
else
	#wezterm
	echo "nope" | rofi -dmenu
fi
