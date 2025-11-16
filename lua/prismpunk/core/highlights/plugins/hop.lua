local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("HopNextKey", { fg = s.ui.bg, bg = s.syn.number, bold = true })
  hl("HopNextKey1", { fg = s.ui.bg, bg = s.syn.type, bold = true })
  hl("HopNextKey2", { fg = s.ui.bg, bg = s.syn.func })
  hl("HopUnmatched", { fg = s.syn.comment })
  hl("HopCursor", { reverse = true })
  hl("HopPreview", { fg = s.diag.warning })
end

return M
