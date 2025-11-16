local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("InclineNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("InclineNormalNC", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
end

return M
