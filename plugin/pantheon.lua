vim.api.nvim_create_user_command('PantheonExportGhostty', function(opts)
  local theme = opts.args ~= '' and opts.args or _G.pantheon_config.theme
  require('pantheon.core.terminal').save_ghostty(theme)
end, {
  nargs = '?',
  desc = 'Export current theme to Ghostty config',
})

vim.api.nvim_create_user_command('PantheonPrintPalette', function(opts)
  local theme = opts.args ~= '' and opts.args or _G.pantheon_config.theme
  require('pantheon.core.terminal').print_palette(theme)
end, {
  nargs = '?',
  desc = 'Print theme color palette',
})

vim.api.nvim_create_user_command('PantheonReload', function()
  require('pantheon.loader').clear_cache()
  require('pantheon').setup(_G.pantheon_config or {})
end, {
  desc = 'Reload Pantheon theme (useful for development)',
})
