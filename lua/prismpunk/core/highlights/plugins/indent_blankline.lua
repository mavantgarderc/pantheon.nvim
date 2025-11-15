local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  hl("IblIndent", { fg = s.ui.line_nr_dim })
  hl("IblWhitespace", { fg = s.ui.nontext or s.ui.bg_highlight })
  hl("IblScope", { fg = s.ui.line_nr_active })

  -- Context indent
  hl("IblScopeChar", { fg = s.ui.line_nr_active })

  -- Rainbow colors (if using rainbow indent)
  hl("IblIndent1", { fg = s.ui.line_nr_dim })
  hl("IblIndent2", { fg = s.ui.line_nr_dim })
  hl("IblIndent3", { fg = s.ui.line_nr_dim })
  hl("IblIndent4", { fg = s.ui.line_nr_dim })
  hl("IblIndent5", { fg = s.ui.line_nr_dim })
  hl("IblIndent6", { fg = s.ui.line_nr_dim })
end

return M
