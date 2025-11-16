local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("NeotestPassed", { fg = s.diag.info })
  hl("NeotestFailed", { fg = s.diag.error })
  hl("NeotestRunning", { fg = s.diag.warning })
  hl("NeotestSkipped", { fg = s.syn.comment })

  hl("NeotestPassedSign", { fg = s.diag.info })
  hl("NeotestFailedSign", { fg = s.diag.error })
  hl("NeotestRunningSign", { fg = s.diag.warning })
  hl("NeotestSkippedSign", { fg = s.syn.comment })

  hl("NeotestTest", { fg = s.ui.fg })
  hl("NeotestNamespace", { fg = s.syn.type })
  hl("NeotestFocused", { bold = true })
  hl("NeotestFile", { fg = s.syn.type })
  hl("NeotestDir", { fg = s.syn.type })

  hl("NeotestMarked", { fg = s.syn.number, bold = true })
  hl("NeotestTarget", { fg = s.diag.error })

  hl("NeotestIndent", { fg = s.ui.line_nr_dim })
  hl("NeotestExpandMarker", { fg = s.ui.line_nr })

  hl("NeotestAdapterName", { fg = s.syn.keyword })
  hl("NeotestWinSelect", { fg = s.syn.type, bold = true })

  hl("NeotestUnknown", { fg = s.ui.fg_dim })
end

return M
