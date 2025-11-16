local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("RainbowDelimiterRed", { fg = s.diag.error })
  hl("RainbowDelimiterYellow", { fg = s.syn.number })
  hl("RainbowDelimiterBlue", { fg = s.syn.type })
  hl("RainbowDelimiterOrange", { fg = s.diag.warning })
  hl("RainbowDelimiterGreen", { fg = s.diag.info })
  hl("RainbowDelimiterViolet", { fg = s.syn.keyword })
  hl("RainbowDelimiterCyan", { fg = s.syn.func })
end

return M
