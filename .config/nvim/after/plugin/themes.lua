local themes = {
  'kanagawa',
  'kanagawa-dragon',
  'dracula-soft',
  'vscode',
  'rose-pine-moon',
  'gruber-darker',
  'onedark',
  'solarized-osaka',
  'ofirkai',
  'nightfox',
}

local enable_random_theme = false

-- [[ Set a random theme on startup ]]

function SetRandomTheme()
  local session_theme = themes[math.random(#themes)]

  vim.cmd.colorscheme(session_theme)
  vim.notify('Session theme set to ' .. session_theme, vim.log.levels.INFO)
end

if enable_random_theme then
  SetRandomTheme()
else
  vim.cmd.colorscheme('nightfox')
end

-- [[ Create command to randomize theme ]]

vim.api.nvim_create_user_command('RandomTheme', 'lua SetRandomTheme()', {
  bang = false,
})
