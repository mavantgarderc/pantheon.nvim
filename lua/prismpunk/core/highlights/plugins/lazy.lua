local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  -- Window
  hl("LazyNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("LazyButton", { bg = s.ui.bg_highlight })
  hl("LazyButtonActive", { fg = s.ui.bg, bg = s.syn.type })

  -- Headers and sections
  hl("LazyH1", { fg = s.ui.bg, bg = s.syn.type, bold = true })
  hl("LazyH2", { fg = s.syn.keyword, bold = true })

  -- Special text
  hl("LazySpecial", { fg = s.syn.special })
  hl("LazyComment", { fg = s.syn.comment })
  hl("LazyCommit", { fg = s.syn.number })
  hl("LazyCommitIssue", { fg = s.syn.type })
  hl("LazyCommitType", { fg = s.syn.keyword })
  hl("LazyCommitScope", { fg = s.syn.string })

  -- Status
  hl("LazyReasonPlugin", { fg = s.diag.error })
  hl("LazyReasonRuntime", { fg = s.syn.func })
  hl("LazyReasonCmd", { fg = s.syn.number })
  hl("LazyReasonSource", { fg = s.syn.type })
  hl("LazyReasonEvent", { fg = s.syn.keyword })
  hl("LazyReasonKeys", { fg = s.syn.constant })
  hl("LazyReasonStart", { fg = s.diag.info })
  hl("LazyReasonFt", { fg = s.syn.string })
  hl("LazyReasonImport", { fg = s.syn.variable })

  -- Operations
  hl("LazyProgressDone", { fg = s.diag.info })
  hl("LazyProgressTodo", { fg = s.syn.comment })

  -- Properties
  hl("LazyProp", { fg = s.syn.variable })
  hl("LazyValue", { fg = s.syn.string })
  hl("LazyNoCond", { fg = s.diag.error })
  hl("LazyUrl", { fg = s.syn.string, underline = true })
  hl("LazyDir", { fg = s.syn.type })

  -- Diagnostics
  hl("LazyTaskOutput", { fg = s.ui.fg })
  hl("LazyTaskError", { fg = s.diag.error })
end

return M
