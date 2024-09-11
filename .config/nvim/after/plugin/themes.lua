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
}

-- [[ Set a random theme on startup ]]

function SetRandomTheme()
  local session_theme = themes[math.random(#themes)]

  vim.cmd.colorscheme(session_theme)
  vim.notify('Session theme set to ' .. session_theme, vim.log.levels.INFO)
end

SetRandomTheme()

-- [[ Create command to randomize theme ]]

vim.api.nvim_create_user_command('RandomTheme', 'lua SetRandomTheme()', {
  bang = false,
})
