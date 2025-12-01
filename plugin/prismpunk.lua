-- plugin/prismpunk.lua
if vim.fn.has("nvim-0.10") == 0 then
  vim.notify(
    "[prismpunk] Neovim 0.10+ required. Current version: " .. vim.version().major .. "." .. vim.version().minor,
    vim.log.levels.ERROR
  )
  return
end

local function get_config()
  local ok, prismpunk = pcall(require, "prismpunk.config")
  if ok and prismpunk.options then return prismpunk.options end
  return _G.prismpunk_config or {}
end

local function get_current_theme(arg)
  if arg and arg ~= "" then return arg end

  local config = get_config()
  return config.theme or "kanagawa/paper-edo"
end

vim.api.nvim_create_user_command("PrismpunkExportGhostty", function(opts)
  local theme = get_current_theme(opts.args)

  local ok, terminals = pcall(require, "prismpunk.terminals")
  if not ok then
    vim.notify("[prismpunk] Failed to load terminals module", vim.log.levels.ERROR)
    return
  end

  if terminals.save_ghostty then
    terminals.save_ghostty(theme)
  else
    vim.notify("[prismpunk] save_ghostty function not found", vim.log.levels.ERROR)
  end
end, {
  nargs = "?",
  complete = function()
    local ok, loader = pcall(require, "prismpunk.loader")
    if ok and loader.list_themes then return loader.list_themes() end
    return {}
  end,
  desc = "Export current theme to Ghostty config",
})

vim.api.nvim_create_user_command("PrismpunkPrintPalette", function(opts)
  local theme = get_current_theme(opts.args)

  local ok, terminals = pcall(require, "prismpunk.terminals")
  if not ok then
    vim.notify("[prismpunk] Failed to load terminals module", vim.log.levels.ERROR)
    return
  end

  if terminals.print_palette then
    terminals.print_palette(theme)
  else
    vim.notify("[prismpunk] print_palette function not found", vim.log.levels.ERROR)
  end
end, {
  nargs = "?",
  complete = function()
    local ok, loader = pcall(require, "prismpunk.loader")
    if ok and loader.list_themes then return loader.list_themes() end
    return {}
  end,
  desc = "Print theme color palette",
})

vim.api.nvim_create_user_command("PrismpunkReload", function()
  local ok, loader = pcall(require, "prismpunk.loader")
  if not ok then
    vim.notify("[prismpunk] Failed to load loader module", vim.log.levels.ERROR)
    return
  end

  loader.clear_cache()

  local config = get_config()
  local prismpunk_ok, prismpunk = pcall(require, "prismpunk")
  if prismpunk_ok and config.theme then
    prismpunk.setup(config)
    vim.notify("[prismpunk] Reloaded theme: " .. config.theme, vim.log.levels.INFO)
  else
    vim.notify("[prismpunk] Failed to reload", vim.log.levels.ERROR)
  end
end, {
  desc = "Clear cache and reload Prismpunk theme",
})

vim.api.nvim_create_user_command("PrismpunkListThemes", function()
  local ok, loader = pcall(require, "prismpunk.loader")
  if not ok then
    vim.notify("[prismpunk] Failed to load loader module", vim.log.levels.ERROR)
    return
  end

  if loader.list_themes then
    local themes = loader.list_themes()
    vim.notify("Available themes:\n" .. table.concat(themes, "\n"), vim.log.levels.INFO)
  else
    vim.notify("[prismpunk] list_themes function not found", vim.log.levels.ERROR)
  end
end, {
  desc = "List all available Prismpunk themes",
})
