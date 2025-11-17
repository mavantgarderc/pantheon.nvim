local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("TelescopeBorder", { fg = s.ui.border, bg = s.ui.bg })
  hl("TelescopeNormal", { bg = s.ui.bg })
  hl("TelescopePromptBorder", { fg = s.ui.border, bg = s.ui.bg_p1 })
  hl("TelescopePromptNormal", { bg = s.ui.bg_p1 })
  hl("TelescopePromptPrefix", { fg = s.diag.error, bg = s.ui.bg_p1 })
  hl("TelescopeSelection", { fg = s.ui.fg, bg = s.ui.bg_p2, bold = true })
  hl("TelescopeSelectionCaret", { fg = s.diag.error, bg = s.ui.bg_p2 })
  hl("TelescopeTitle", { fg = s.ui.fg, bold = true })
  hl("TelescopeResultsTitle", { fg = s.ui.bg, bg = s.ui.bg })
  hl("TelescopePreviewTitle", { fg = s.ui.bg, bg = s.diag.ok })
  hl("TelescopePromptTitle", { fg = s.ui.bg, bg = s.diag.error })
end

return M
