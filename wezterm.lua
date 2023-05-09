-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Macchiato"
config.font = wezterm.font("FiraCode Nerd Font")
-- config.font = wezterm.font("FantasqueSansMono Nerd Font Mono")
config.font = wezterm.font("Iosevka Nerd Font")
-- config.font = wezterm.font("JetBrainsMono Nerd Font")
-- config.font = wezterm.font("NotoSansMono Nerd Font")
-- config.font = wezterm.font("Hack Nerd Font")
-- config.font = wezterm.font("OpenDyslexicMono Nerd Font")
config.font_size = 12.0
-- => ->
--
config.hide_tab_bar_if_only_one_tab = true
-- config.window_background_opacity = 0.6
-- config.macos_window_background_blur = 20
config.background = {
	{
		source = { Color = "black" },
		hsb = { brightness = 0.1 },
		opacity = 0.5,
		height = "100%",
		width = "100%",
	},
}
config.enable_kitty_keyboard = false

-- and finally, return the configuration to wezterm
return config
