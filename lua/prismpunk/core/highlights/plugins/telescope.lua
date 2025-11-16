local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("TelescopeNormal", { fg = s.ui.fg, bg = s.ui.float })
  hl("TelescopeBorder", { fg = s.ui.border, bg = s.ui.float })
  hl("TelescopePromptNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("TelescopeResultsNormal", { fg = s.ui.fg_dim, bg = s.ui.float })
  hl("TelescopeSelection", { fg = s.ui.bg, bg = s.ui.line_nr_active })
  hl("TelescopePreviewNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
end

return M
