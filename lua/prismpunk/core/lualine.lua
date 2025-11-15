local M = {}

local punkconf = require("prismpunk.config")
local punkload = require("prismpunk.loader")

---@param theme_spec string Theme specification
---@return table Lualine theme configuration
function M.get(theme_spec)
  local universe, variant = punkconf.parse_theme(theme_spec)
  local theme = punkload.load_theme_module(universe, variant)

  local s = theme.semantic

  local colors = {
    bg = s.ui.bg_dim,
    fg = s.ui.fg,
    accent = s.syn.type,
    error = s.diag.error,
    warn = s.diag.warning,
    info = s.diag.info,
    hint = s.diag.hint,
    added = s.git.add,
    modified = s.git.change,
    removed = s.git.delete,
  }

  return {
    normal = {
      a = { fg = colors.bg, bg = colors.accent, gui = "bold" },
      b = { fg = colors.fg, bg = colors.bg },
      c = { fg = colors.fg, bg = colors.bg },
      x = { fg = colors.fg, bg = colors.bg },
      y = { fg = colors.fg, bg = colors.bg },
      z = { fg = colors.bg, bg = colors.accent },
    },
    insert = {
      a = { fg = colors.bg, bg = colors.info, gui = "bold" },
      b = { fg = colors.fg, bg = colors.bg },
      c = { fg = colors.fg, bg = colors.bg },
      x = { fg = colors.fg, bg = colors.bg },
      y = { fg = colors.fg, bg = colors.bg },
      z = { fg = colors.bg, bg = colors.info },
    },
    visual = {
      a = { fg = colors.bg, bg = colors.warn, gui = "bold" },
      b = { fg = colors.fg, bg = colors.bg },
      c = { fg = colors.fg, bg = colors.bg },
      x = { fg = colors.fg, bg = colors.bg },
      y = { fg = colors.fg, bg = colors.bg },
      z = { fg = colors.bg, bg = colors.warn },
    },
    replace = {
      a = { fg = colors.bg, bg = colors.error, gui = "bold" },
      b = { fg = colors.fg, bg = colors.bg },
      c = { fg = colors.fg, bg = colors.bg },
      x = { fg = colors.fg, bg = colors.bg },
      y = { fg = colors.fg, bg = colors.bg },
      z = { fg = colors.bg, bg = colors.error },
    },
    command = {
      a = { fg = colors.bg, bg = colors.hint, gui = "bold" },
      b = { fg = colors.fg, bg = colors.bg },
      c = { fg = colors.fg, bg = colors.bg },
      x = { fg = colors.fg, bg = colors.bg },
      y = { fg = colors.fg, bg = colors.bg },
      z = { fg = colors.bg, bg = colors.hint },
    },
    terminal = {
      a = { fg = colors.bg, bg = colors.modified, gui = "bold" },
      b = { fg = colors.fg, bg = colors.bg },
      c = { fg = colors.fg, bg = colors.bg },
      x = { fg = colors.fg, bg = colors.bg },
      y = { fg = colors.fg, bg = colors.bg },
      z = { fg = colors.bg, bg = colors.modified },
    },
    inactive = {
      a = { fg = colors.fg, bg = colors.bg, gui = "bold" },
      b = { fg = colors.fg, bg = colors.bg },
      c = { fg = colors.fg, bg = colors.bg },
      x = { fg = colors.fg, bg = colors.bg },
      y = { fg = colors.fg, bg = colors.bg },
      z = { fg = colors.fg, bg = colors.bg },
    },
  }
end

---@param theme_spec? string Optional theme spec (defaults to config theme)
function M.setup(theme_spec)
  if not package.loaded["lualine"] then
    return
  end

  theme_spec = theme_spec or (_G.prismpunk_config and _G.prismpunk_config.theme) or "lantern-corps/phantom-balanced"

  require("lualine").setup({
    options = {
      theme = M.get(theme_spec),
    },
  })
end

return M
