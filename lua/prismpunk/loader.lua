local M = {}

local theme_cache = {}

local function get_theme_path(universe, variant)
  local universe_map = {
    ["lantern-corps"] = "dc.lantern-corps",
    ["superman"] = "dc.superman",
    ["spider-verse"] = "marvel.spider-verse",
    ["justice-league"] = "dc.justice-league",
    ["bat-family"] = "dc.bat-family",
    ["kanagawa"] = "kanagawa",
  }

  local mapped = universe_map[universe]
  if not mapped then error("Unknown universe: " .. universe .. "\nAvailable: " .. vim.inspect(vim.tbl_keys(universe_map))) end

  return "prismpunk.themes." .. mapped .. "." .. variant
end

local function load_theme_module(universe, variant)
  local cache_key = universe .. "/" .. variant

  if theme_cache[cache_key] then return theme_cache[cache_key] end

  local theme_path = get_theme_path(universe, variant)
  local ok, theme_spec = pcall(require, theme_path)

  if not ok then error("Failed to load theme: " .. cache_key .. "\n" .. tostring(theme_spec)) end

  local theme = require("prismpunk.palette").create_theme(theme_spec)

  theme_cache[cache_key] = theme
  return theme
end

M.load = function(theme_spec, force_reload)
  local universe, variant = require("prismpunk.config").parse_theme(theme_spec)
  local config = _G.prismpunk_config or require("prismpunk.config").defaults

  if force_reload then theme_cache[universe .. "/" .. variant] = nil end

  local theme = load_theme_module(universe, variant)

  if config.overrides.colors then theme.colors = vim.tbl_deep_extend("force", theme.colors, config.overrides.colors) end

  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end

  vim.g.colors_name = "prismpunk"
  vim.o.termguicolors = true

  require("prismpunk.core.highlights").apply(theme, config)

  if config.terminal.enabled then
    require("prismpunk.core.terminal").apply(theme)
    require("prismpunk.core.terminal").auto_export(theme, config)
  end

  vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      vim.cmd("hi clear")
      if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
      require("prismpunk.core.highlights").apply(theme, config)
    end,
    once = true,
  })

  vim.notify("Prismpunk: Loaded " .. theme.name, vim.log.levels.INFO)
end

M.clear_cache = function()
  theme_cache = {}
  for key in pairs(package.loaded) do
    if key:match("^prismpunk%.") then package.loaded[key] = nil end
  end
end

return M
