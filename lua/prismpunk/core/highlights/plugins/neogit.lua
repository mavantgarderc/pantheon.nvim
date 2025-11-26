local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("NeogitDiffAdd", { fg = s.diff.add, bg = s.ui.bg })
  hl("NeogitDiffAddHighlight", { fg = s.diff.add, bg = s.ui.bg_dim })
  hl("NeogitDiffDelete", { fg = s.diff.delete, bg = s.ui.bg })
  hl("NeogitDiffDeleteHighlight", { fg = s.diff.delete, bg = s.ui.bg_dim })
  hl("NeogitDiffContext", { fg = s.ui.fg_dim })
  hl("NeogitDiffContextHighlight", { bg = s.ui.bg_dim })

  hl("NeogitHunkHeader", { fg = s.syn.keyword, bg = s.ui.bg_dim })
  hl("NeogitHunkHeaderHighlight", { fg = s.syn.keyword, bg = s.ui.bg_highlight, bold = true })

  hl("NeogitSectionHeader", { fg = s.syn.type, bold = true })
  hl("NeogitChangeModified", { fg = s.diff.change })
  hl("NeogitChangeAdded", { fg = s.diff.add })
  hl("NeogitChangeDeleted", { fg = s.diff.delete })
  hl("NeogitChangeRenamed", { fg = s.syn.keyword })
  hl("NeogitChangeUpdated", { fg = s.diag.info })
  hl("NeogitChangeCopied", { fg = s.syn.func })
  hl("NeogitChangeNewFile", { fg = s.diff.add })

  hl("NeogitBranch", { fg = s.syn.type })
  hl("NeogitBranchHead", { fg = s.syn.type, bold = true })
  hl("NeogitRemote", { fg = s.syn.keyword })

  hl("NeogitCommitViewHeader", { fg = s.syn.keyword, bg = s.ui.bg_dim })
  hl("NeogitFilePath", { fg = s.syn.type })

  hl("NeogitUntrackedfiles", { fg = s.diag.hint })
  hl("NeogitUnstagedchanges", { fg = s.diff.change })
  hl("NeogitStagedchanges", { fg = s.diff.add })
  hl("NeogitUnmergedchanges", { fg = s.diag.error })
  hl("NeogitUnpulledchanges", { fg = s.diag.warning })
  hl("NeogitRecentcommits", { fg = s.syn.comment })
  hl("NeogitStashes", { fg = s.syn.special })
end

return M
