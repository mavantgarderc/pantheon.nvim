local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("IblIndent", { fg = s.ui.line_nr_dim })
  hl("IblWhitespace", { fg = s.ui.nontext or s.ui.bg_highlight })
  hl("IblScope", { fg = s.ui.line_nr_active })

  hl("IblScopeChar", { fg = s.ui.line_nr_active })

  hl("IblIndent1", { fg = s.ui.line_nr_dim })
  hl("IblIndent2", { fg = s.ui.line_nr_dim })
  hl("IblIndent3", { fg = s.ui.line_nr_dim })
  hl("IblIndent4", { fg = s.ui.line_nr_dim })
  hl("IblIndent5", { fg = s.ui.line_nr_dim })
  hl("IblIndent6", { fg = s.ui.line_nr_dim })
end

return M
