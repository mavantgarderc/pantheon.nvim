local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
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
