vim.api.nvim_create_user_command("PrismpunkExportGhostty", function(opts)
  local theme = opts.args ~= "" and opts.args or _G.prismpunk_config.theme
  require("prismpunk.core.terminals.init").save_ghostty(theme)
end, {
  nargs = "?",
  desc = "Export current theme to Ghostty config",
})

vim.api.nvim_create_user_command("PantheonPrintPalette", function(opts)
  local theme = opts.args ~= "" and opts.args or _G.prismpunk_config.theme
  require("prismpunk.core.terminals.init").print_palette(theme)
end, {
  nargs = "?",
  desc = "Print theme color palette",
})

vim.api.nvim_create_user_command("PantheonReload", function()
  require("prismpunk.loader").clear_cache()
  require("prismpunk").setup(_G.prismpunk_config or {})
end, {
  desc = "Reload Pantheon theme (useful for development)",
})
