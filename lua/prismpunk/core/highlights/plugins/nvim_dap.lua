local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("DapBreakpoint", { fg = s.diag.error })
  hl("DapBreakpointCondition", { fg = s.diag.warning })
  hl("DapBreakpointRejected", { fg = s.diag.hint })
  hl("DapLogPoint", { fg = s.syn.special })
  hl("DapStopped", { bg = s.ui.bg_highlight })

  if package.loaded["dapui"] then
    hl("DapUIVariable", { fg = s.syn.variable })
    hl("DapUIValue", { fg = s.syn.constant })
    hl("DapUIFrameName", { fg = s.syn.func })
    hl("DapUIThread", { fg = s.syn.keyword })
    hl("DapUIWatchesEmpty", { fg = s.syn.comment })
    hl("DapUIWatchesValue", { fg = s.syn.string })
    hl("DapUIWatchesError", { fg = s.diag.error })
    hl("DapUIScope", { fg = s.syn.type })
    hl("DapUIType", { fg = s.syn.type })
    hl("DapUIModifiedValue", { fg = s.syn.number, bold = true })
    hl("DapUIDecoration", { fg = s.syn.type })
    hl("DapUISource", { fg = s.syn.keyword })
    hl("DapUILineNumber", { fg = s.ui.line_nr_active })
    hl("DapUIFloatBorder", { fg = s.ui.border })
    hl("DapUIStoppedThread", { fg = s.syn.type })
    hl("DapUIBreakpointsPath", { fg = s.syn.type })
    hl("DapUIBreakpointsInfo", { fg = s.diag.info })
    hl("DapUIBreakpointsCurrentLine", { fg = s.syn.type, bold = true })
    hl("DapUIBreakpointsLine", { fg = s.syn.number })
  end
end

return M
