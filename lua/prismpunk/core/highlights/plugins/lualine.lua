local M = {}

local hl = require("prismpunk.core.highlights").hl

function M.apply(c, _config)
  if not c.modes then
    vim.notify("[prismpunk] lualine.lua: missing modes in theme", vim.log.levels.WARN)
    return
  end

  if not c.ui then
    vim.notify("[prismpunk] lualine.lua: missing ui in theme", vim.log.levels.WARN)
    return
  end

  -- Normal mode
  hl("lualine_a_normal", { fg = c.ui.bg, bg = c.modes.normal, bold = true })
  hl("lualine_b_normal", { fg = c.ui.fg, bg = c.ui.bg_p1 })
  hl("lualine_c_normal", { fg = c.ui.fg_dim or c.ui.fg, bg = c.ui.bg })

  -- LualineNormal is an alias
  hl("LualineNormal", { link = "lualine_a_normal" })

  -- Insert mode
  hl("lualine_a_insert", { fg = c.ui.bg, bg = c.modes.insert, bold = true })
  hl("lualine_b_insert", { fg = c.ui.fg, bg = c.ui.bg_p1 })
  hl("lualine_c_insert", { fg = c.ui.fg_dim or c.ui.fg, bg = c.ui.bg })

  -- Visual mode
  hl("lualine_a_visual", { fg = c.ui.bg, bg = c.modes.visual, bold = true })
  hl("lualine_b_visual", { fg = c.ui.fg, bg = c.ui.bg_p1 })
  hl("lualine_c_visual", { fg = c.ui.fg_dim or c.ui.fg, bg = c.ui.bg })

  -- Replace mode
  hl("lualine_a_replace", { fg = c.ui.bg, bg = c.modes.replace, bold = true })
  hl("lualine_b_replace", { fg = c.ui.fg, bg = c.ui.bg_p1 })
  hl("lualine_c_replace", { fg = c.ui.fg_dim or c.ui.fg, bg = c.ui.bg })

  -- Command mode
  hl("lualine_a_command", { fg = c.ui.bg, bg = c.modes.command, bold = true })
  hl("lualine_b_command", { fg = c.ui.fg, bg = c.ui.bg_p1 })
  hl("lualine_c_command", { fg = c.ui.fg_dim or c.ui.fg, bg = c.ui.bg })

  -- Terminal mode
  if c.syn and c.syn.special3 then
    hl("lualine_a_terminal", { fg = c.ui.bg, bg = c.syn.special3, bold = true })
  else
    hl("lualine_a_terminal", { fg = c.ui.bg, bg = c.modes.normal, bold = true })
  end
  hl("lualine_b_terminal", { fg = c.ui.fg, bg = c.ui.bg_p1 })
  hl("lualine_c_terminal", { fg = c.ui.fg_dim or c.ui.fg, bg = c.ui.bg })

  -- Inactive
  if c.syn and c.syn.comment then
    hl("lualine_a_inactive", { fg = c.syn.comment, bg = c.ui.bg, bold = true })
    hl("lualine_b_inactive", { fg = c.syn.comment, bg = c.ui.bg_p1 })
    hl("lualine_c_inactive", { fg = c.syn.comment, bg = c.ui.bg })
  end
end

return M
