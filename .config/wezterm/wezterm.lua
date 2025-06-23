local wezterm = require("wezterm")

local config = {
	-- # Cosmetic Options (https://wezfurlong.org/wezterm/colorschemes/)
	enable_tab_bar = true,

	-- # Font Options
	font = wezterm.font("JetBrainsMonoNL Nerd Font", {
		weight = "Bold",
	}),
	font_size = 11.0,

	-- # Background options
	window_background_opacity = 1,
	win32_system_backdrop = "Acrylic",

	-- # Dismiss annoying warning
	warn_about_missing_glyphs = false,

	-- # Keys configuration
	keys = {
		{
			key = "n",
			mods = "SHIFT|CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
	},

	-- # Mouse bindings
	mouse_bindings = {
		-- Ctrl-click will open the link under the mouse  cursor
		{
			event = {
				Up = { streak = 1, button = "Left" },
			},
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},

	-- remove window padding
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
}

-- Set those stuff after object initialization for copy-paste reasons...
config.color_scheme = "Dracula (Official)"

return config
