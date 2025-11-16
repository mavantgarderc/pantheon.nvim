local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("ScrollView", { bg = s.ui.line_nr_active })
  hl("ScrollViewRestricted", { bg = s.diag.warning })
  hl("ScrollViewConflictsTop", { fg = s.diag.error })
  hl("ScrollViewConflictsMiddle", { fg = s.diag.error })
  hl("ScrollViewConflictsBottom", { fg = s.diag.error })
  hl("ScrollViewCursor", { bg = s.syn.type })
  hl("ScrollViewDiagnosticsError", { fg = s.diag.error })
  hl("ScrollViewDiagnosticsWarn", { fg = s.diag.warning })
  hl("ScrollViewDiagnosticsHint", { fg = s.diag.hint })
  hl("ScrollViewDiagnosticsInfo", { fg = s.diag.info })
  hl("ScrollViewSearch", { fg = s.syn.number })
end

return M
