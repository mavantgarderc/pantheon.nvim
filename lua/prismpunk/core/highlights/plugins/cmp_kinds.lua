local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("CmpItemKindCopilot", { fg = s.syn.special })
  hl("CmpItemKindTabNine", { fg = s.syn.special })
  hl("CmpItemKindEmoji", { fg = s.syn.string })
  hl("CmpItemKindSupermaven", { fg = s.syn.special })
  hl("CmpItemKindCody", { fg = s.syn.special })

  hl("CmpItemKindCommit", { fg = s.git.change })
  hl("CmpItemKindIssue", { fg = s.diag.warning })
  hl("CmpItemKindPullRequest", { fg = s.git.add })
  hl("CmpItemKindUser", { fg = s.syn.variable })
  hl("CmpItemKindRepo", { fg = s.syn.type })

  hl("CmpItemKindFile", { fg = s.ui.fg })
  hl("CmpItemKindFolder", { fg = s.syn.type })
  hl("CmpItemKindColor", { fg = s.syn.number })
  hl("CmpItemKindReference", { fg = s.syn.string })
end

return M
