local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("LeapMatch", { fg = s.ui.bg, bg = s.syn.number, bold = true })
  hl("LeapLabel", { fg = s.ui.bg, bg = s.syn.type, bold = true })
  hl("LeapBackdrop", { fg = s.syn.comment })
end

return M
