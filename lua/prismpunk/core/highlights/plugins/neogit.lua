local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("NeogitDiffAdd", { fg = s.git.add, bg = s.ui.bg })
  hl("NeogitDiffAddHighlight", { fg = s.git.add, bg = s.ui.bg_dim })
  hl("NeogitDiffDelete", { fg = s.git.delete, bg = s.ui.bg })
  hl("NeogitDiffDeleteHighlight", { fg = s.git.delete, bg = s.ui.bg_dim })
  hl("NeogitDiffContext", { fg = s.ui.fg_dim })
  hl("NeogitDiffContextHighlight", { bg = s.ui.bg_dim })

  hl("NeogitHunkHeader", { fg = s.syn.keyword, bg = s.ui.bg_dim })
  hl("NeogitHunkHeaderHighlight", { fg = s.syn.keyword, bg = s.ui.bg_highlight, bold = true })

  hl("NeogitSectionHeader", { fg = s.syn.type, bold = true })
  hl("NeogitChangeModified", { fg = s.git.change })
  hl("NeogitChangeAdded", { fg = s.git.add })
  hl("NeogitChangeDeleted", { fg = s.git.delete })
  hl("NeogitChangeRenamed", { fg = s.syn.keyword })
  hl("NeogitChangeUpdated", { fg = s.diag.info })
  hl("NeogitChangeCopied", { fg = s.syn.func })
  hl("NeogitChangeNewFile", { fg = s.git.add })

  hl("NeogitBranch", { fg = s.syn.type })
  hl("NeogitBranchHead", { fg = s.syn.type, bold = true })
  hl("NeogitRemote", { fg = s.syn.keyword })

  hl("NeogitCommitViewHeader", { fg = s.syn.keyword, bg = s.ui.bg_dim })
  hl("NeogitFilePath", { fg = s.syn.type })

  hl("NeogitUntrackedfiles", { fg = s.diag.hint })
  hl("NeogitUnstagedchanges", { fg = s.git.change })
  hl("NeogitStagedchanges", { fg = s.git.add })
  hl("NeogitUnmergedchanges", { fg = s.diag.error })
  hl("NeogitUnpulledchanges", { fg = s.diag.warning })
  hl("NeogitRecentcommits", { fg = s.syn.comment })
  hl("NeogitStashes", { fg = s.syn.special })
end

return M
