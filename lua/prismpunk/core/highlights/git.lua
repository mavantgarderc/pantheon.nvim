local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("DiffAdd", { fg = s.diff.add, bg = s.ui.bg })
  hl("DiffChange", { fg = s.diff.change, bg = s.ui.bg })
  hl("DiffDelete", { fg = s.diff.delete, bg = s.ui.bg })
  hl("DiffText", { fg = s.diff.text, bg = s.ui.bg_dim })

  hl("GitSignsAdd", { fg = s.diff.add })
  hl("GitSignsChange", { fg = s.diff.change })
  hl("GitSignsDelete", { fg = s.diff.delete })
  hl("GitSignsAddInline", { fg = s.diff.add_inline or s.diff.add, reverse = true })
  hl("GitSignsChangeInline", { fg = s.diff.change_inline or s.diff.change, reverse = true })
  hl("GitSignsDeleteInline", { fg = s.diff.delete_inline or s.diff.delete, reverse = true })
end

return M
