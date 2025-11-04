local M = {}

function M.get(theme_name)
  local loader = require("prismpunk.loader")
  local theme = loader.load_theme_module(universe, variant)

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

function M.setup()
  if package.loaded["lualine"] then
    require("lualine").setup({
      options = {
        theme = M.get("lantern-corps/green"),
      },
    })
  end
end

return M
