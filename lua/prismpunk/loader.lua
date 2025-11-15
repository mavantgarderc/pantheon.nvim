local M = {}

local punkpalette = require("prismpunk.palette")
local punkconf = require("prismpunk.config")
local punklights = require("prismpunk.core.highlights")
local punkterm = require("prismpunk.core.terminals.init")

local theme_cache = {}

local function get_theme_path(universe, variant)
  local universe_map = {
    ["lantern-corps"] = "dc.lantern-corps",
    ["kanagawa"] = "kanagawa",
  }

  local mapped = universe_map[universe]
  if not mapped then
    error("Unknown universe: " .. universe .. "\nAvailable: " .. vim.inspect(vim.tbl_keys(universe_map)))
  end

  return "prismpunk.themes." .. mapped .. "." .. variant
end

local function load_theme_module(universe, variant)
  local cache_key = universe .. "/" .. variant

  if theme_cache[cache_key] then return theme_cache[cache_key] end

  local theme_path = get_theme_path(universe, variant)
  local ok, theme_spec = pcall(require, theme_path)

  if not ok then error("Failed to load theme: " .. cache_key .. "\n" .. tostring(theme_spec)) end

  local theme = punkpalette.create_theme(theme_spec)

  theme_cache[cache_key] = theme
  return theme
end

M.load_theme_module = load_theme_module

M.load = function(theme_spec, force_reload)
  local universe, variant = punkconf.parse_theme(theme_spec)
  local config = _G.prismpunk_config or punkconf.defaults

  if force_reload then theme_cache[universe .. "/" .. variant] = nil end

  local theme = load_theme_module(universe, variant)

  if config.overrides.colors then theme.colors = vim.tbl_deep_extend("force", theme.colors, config.overrides.colors) end

  vim.cmd("hi clear")

  if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
  vim.g.colors_name = "prismpunk" -- luacheck: ignore
  vim.o.termguicolors = true -- luacheck: ignore

  punklights.apply(theme, config)

  if config.terminal.enabled then
    punkterm.apply(theme)
    punkterm.auto_export(theme, config)
  end

  if package.loaded["lualine"] then
    vim.schedule(function()
      local punklualine = require("prismpunk.core.lualine")
      local ok, lualine_theme = pcall(punklualine.get, theme_spec)
      if ok then require("lualine").setup({
        options = {
          theme = lualine_theme,
        },
      }) end
    end)
  end

  vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      vim.cmd("hi clear")
      if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
      punklights.apply(theme, config)
    end,
    once = true,
  })
end

M.clear_cache = function()
  theme_cache = {}
  for key in pairs(package.loaded) do
    if key:match("^prismpunk%.") then package.loaded[key] = nil end
  end
end

return M
