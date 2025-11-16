local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("AlphaHeader", { fg = s.syn.type })
  hl("AlphaHeaderLabel", { fg = s.syn.keyword })
  hl("AlphaButtons", { fg = s.syn.func })
  hl("AlphaShortcut", { fg = s.syn.number })
  hl("AlphaFooter", { fg = s.syn.comment, italic = true })
end

return M
