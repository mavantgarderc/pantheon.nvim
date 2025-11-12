-- lua/prismpunk/loader.lua
local palette_m = require("prismpunk.palette")
local log = require("prismpunk.utils.log")

local M = {
  cache = {
    themes = {},
    palettes = {},
    modules = {},
  },
  opts = {},
}

local function normalize(id)
  return tostring(id):gsub("%.", "/")
end

local function modpath_for_theme(id)
  local n = normalize(id)
  return "prismpunk.themes." .. n:gsub("/", ".")
end

local function modpath_for_palette(id)
  local n = normalize(id)
  return "prismpunk.palettes." .. n:gsub("/", ".")
end

--- Initialize loader (clear caches optionally)
function M.init(opts)
  M.opts = opts or {}
  vim.g.prismpunk_cache = vim.g.prismpunk_cache or {}
end

--- Load theme & palette by theme id.
--- Returns palette_table, theme_module_or_table
--- @param theme_id string
--- @param opts table|nil
function M.load(theme_id, opts)
  opts = opts or {}
  if not theme_id or theme_id == "" then error("prismpunk.loader.load: theme_id required") end

  local theme_mod = modpath_for_theme(theme_id)
  local palette_mod = nil
  local theme_obj

  if opts.reload then
    package.loaded[theme_mod] = nil
  end

  local ok, res = pcall(require, theme_mod)
  if not ok then
    error(("prismpunk: theme '%s' not found (%s)"):format(theme_id, tostring(res)))
  end
  theme_obj = res

  -- determine palette id
  local palette_id = nil
  if type(theme_obj) == "table" then
    -- theme can export palette id in multiple ways: palette, palette_id, or require palette module itself
    palette_id = theme_obj.palette or theme_obj.palette_id or theme_obj._palette_id
  end
  if not palette_id and type(theme_obj) == "table" and theme_obj.get then
    -- try to load palette from theme's required palette module if it required one internally
    -- best-effort: many theme files will `local palette = require('prismpunk.palettes.dc....')` themselves
    -- we can't reliably detect that, so fallback to error if palette is missing and theme.get expects one.
  end

  if palette_id then
    if opts.reload then package.loaded[modpath_for_palette(palette_id)] = nil end
    local palette_ok, palette_tbl = pcall(palette_m.get_palette, palette_id)
    if not palette_ok then
      error(("prismpunk: palette '%s' failed to load (%s)"):format(tostring(palette_id), tostring(palette_tbl)))
    end
    -- cache
    vim.g.prismpunk_cache = vim.g.prismpunk_cache or {}
    vim.g.prismpunk_cache.palettes = vim.g.prismpunk_cache.palettes or {}
    vim.g.prismpunk_cache.palettes[palette_id] = palette_tbl
    return palette_tbl, theme_obj
  end

  -- If theme didn't export palette_id, return nil palette and theme_obj (theme might embed palette)
  return nil, theme_obj
end

return M
