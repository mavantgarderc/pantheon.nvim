local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("WhichKey", { fg = s.syn.func })
  hl("WhichKeyGroup", { fg = s.syn.keyword })
  hl("WhichKeyDesc", { fg = s.syn.variable })
  hl("WhichKeySeparator", { fg = s.syn.operator })
  hl("WhichKeyFloat", { bg = s.ui.float })
  hl("WhichKeyValue", { fg = s.syn.constant })
  hl("WhichKeyBorder", { fg = s.ui.border })

  hl("WhichKeyNormal", { fg = s.ui.fg })
end

return M
