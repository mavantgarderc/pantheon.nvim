local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  -- normal
  hl("lualine_a_normal", { fg = s.ui.bg, bg = s.modes.normal, bold = true })
  hl("lualine_b_normal", { fg = s.ui.fg, bg = s.ui.bg_p1 })
  hl("lualine_c_normal", { fg = s.ui.fg_dim, bg = s.ui.bg })

  -- insert
  hl("lualine_a_insert", { fg = s.ui.bg, bg = s.modes.insert, bold = true })
  hl("lualine_b_insert", { fg = s.ui.fg, bg = s.ui.bg_p1 })
  hl("lualine_c_insert", { fg = s.ui.fg_dim, bg = s.ui.bg })

  -- visual
  hl("lualine_a_visual", { fg = s.ui.bg, bg = s.modes.visual, bold = true })
  hl("lualine_b_visual", { fg = s.ui.fg, bg = s.ui.bg_p1 })
  hl("lualine_c_visual", { fg = s.ui.fg_dim, bg = s.ui.bg })

  -- replace
  hl("lualine_a_replace", { fg = s.ui.bg, bg = s.modes.replace, bold = true })
  hl("lualine_b_replace", { fg = s.ui.fg, bg = s.ui.bg_p1 })
  hl("lualine_c_replace", { fg = s.ui.fg_dim, bg = s.ui.bg })

  -- command
  hl("lualine_a_command", { fg = s.ui.bg, bg = s.modes.command, bold = true })
  hl("lualine_b_command", { fg = s.ui.fg, bg = s.ui.bg_p1 })
  hl("lualine_c_command", { fg = s.ui.fg_dim, bg = s.ui.bg })

  -- terminal
  hl("lualine_a_terminal", { fg = s.ui.bg, bg = s.syn.special3, bold = true })
  hl("lualine_b_terminal", { fg = s.ui.fg, bg = s.ui.bg_p1 })
  hl("lualine_c_terminal", { fg = s.ui.fg_dim, bg = s.ui.bg })

  -- inactive
  hl("lualine_a_inactive", { fg = s.syn.comment, bg = s.ui.bg, bold = true })
  hl("lualine_b_inactive", { fg = s.syn.comment, bg = s.ui.bg_p1 })
  hl("lualine_c_inactive", { fg = s.syn.comment, bg = s.ui.bg })
end

return M
