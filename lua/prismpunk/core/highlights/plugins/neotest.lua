local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  -- Test status
  hl("NeotestPassed", { fg = s.diag.info })
  hl("NeotestFailed", { fg = s.diag.error })
  hl("NeotestRunning", { fg = s.diag.warning })
  hl("NeotestSkipped", { fg = s.syn.comment })

  -- Signs
  hl("NeotestPassedSign", { fg = s.diag.info })
  hl("NeotestFailedSign", { fg = s.diag.error })
  hl("NeotestRunningSign", { fg = s.diag.warning })
  hl("NeotestSkippedSign", { fg = s.syn.comment })

  -- Test structure
  hl("NeotestTest", { fg = s.ui.fg })
  hl("NeotestNamespace", { fg = s.syn.type })
  hl("NeotestFocused", { bold = true })
  hl("NeotestFile", { fg = s.syn.type })
  hl("NeotestDir", { fg = s.syn.type })

  -- Markers
  hl("NeotestMarked", { fg = s.syn.number, bold = true })
  hl("NeotestTarget", { fg = s.diag.error })

  -- Indent
  hl("NeotestIndent", { fg = s.ui.line_nr_dim })
  hl("NeotestExpandMarker", { fg = s.ui.line_nr })

  -- Adapter specific
  hl("NeotestAdapterName", { fg = s.syn.keyword })
  hl("NeotestWinSelect", { fg = s.syn.type, bold = true })

  -- Unknown
  hl("NeotestUnknown", { fg = s.ui.fg_dim })
end

return M
