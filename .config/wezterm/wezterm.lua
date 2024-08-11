local wezterm = require 'wezterm'

local config = {
  -- # Cosmetic Options (https://wezfurlong.org/wezterm/colorschemes/)
  enable_tab_bar = false,

  -- # Font Options
  font = wezterm.font("JetBrainsMono Nerd Font Mono"),
  font_size = 18.0,

  -- # Background options
  window_background_opacity = 0.93,
  win32_system_backdrop = 'Acrylic',

  -- # Keys configuration
  keys = {
    {
      key = 'n',
      mods = 'SHIFT|CTRL',
      action = wezterm.action.ToggleFullScreen,
    }
  },

  -- # Mouse bindings
  mouse_bindings = {
    -- Ctrl-click will open the link under the mouse  cursor
    {
      event = {
        Up = { streak = 1, button = 'Left' }
      },
      mods = "CTRL",
      action = wezterm.action.OpenLinkAtMouseCursor,
    }
  },
}

-- Set those stuff after object initialization for copy-paste reasons...
config.color_scheme = 'Solarized Dark Higher Contrast'

return config
