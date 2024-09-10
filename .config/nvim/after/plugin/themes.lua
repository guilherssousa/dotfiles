local themes = {
  'kanagawa',
  'kanagawa-dragon',
  'dracula',
  'dracula-soft',
  'vscode',
  'rose-pine-main',
  'rose-pine-moon',
  'gruber-darker',
}

-- [[ Set a random theme on startup ]]

function SetRandomTheme()
  local session_theme = themes[math.random(#themes)]

  vim.cmd.colorscheme(session_theme)
  print('Session theme set to', session_theme)
end

SetRandomTheme()

-- [[ Create command to randomize theme ]]

vim.api.nvim_create_user_command('RandomTheme', 'lua SetRandomTheme()', {
  bang = false,
})
