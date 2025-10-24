local wezterm = require("wezterm")

local config = {
	-- # Cosmetic Options (https://wezfurlong.org/wezterm/colorschemes/)
	enable_tab_bar = true,

	-- # Font Options
	font = wezterm.font("JetBrainsMonoNL Nerd Font", {
		weight = "Bold",
	}),
	font_size = 12.0,

	-- # Background options
	window_background_opacity = 0.9,
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
config.hyperlink_rules = wezterm.default_hyperlink_rules()

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "Builtin Solarized Dark"
	else
		return "Builtin Solarized Light"
	end
end

function query_appearance_gnome()
	local success, stdout = wezterm.run_child_process({
		"gsettings",
		"get",
		"org.gnome.desktop.interface",
		"gtk-theme",
	})
	-- lowercase and remove whitespace
	stdout = stdout:lower():gsub("%s+", "")
	local mapping = {
		highcontrast = "LightHighContrast",
		highcontrastinverse = "DarkHighContrast",
		adwaita = "Light",
		["adwaita-dark"] = "Dark",
	}
	local appearance = mapping[stdout]
	if appearance then
		return appearance
	end
	if stdout:find("dark") then
		return "Dark"
	end
	return "Light"
end

wezterm.on("update-right-status", function(window, pane)
	local overrides = window:get_config_overrides() or {}
	local appearance = query_appearance_gnome()
	local scheme = scheme_for_appearance(appearance)
	if overrides.color_scheme ~= scheme then
		overrides.color_scheme = scheme
		window:set_config_overrides(overrides)
	end
end)

return config
