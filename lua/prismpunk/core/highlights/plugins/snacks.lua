local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("SnacksDashboardHeader", { fg = s.syn.type })
  hl("SnacksDashboardDesc", { fg = s.syn.string })
  hl("SnacksDashboardKey", { fg = s.syn.keyword, bold = true })
  hl("SnacksDashboardIcon", { fg = s.syn.func })
  hl("SnacksDashboardFooter", { fg = s.syn.comment, italic = true })
  hl("SnacksDashboardTitle", { fg = s.syn.keyword, bold = true })
  hl("SnacksDashboardFile", { fg = s.ui.fg })
  hl("SnacksDashboardDir", { fg = s.syn.type })
  hl("SnacksDashboardTerminal", { fg = s.syn.func })
  hl("SnacksDashboardSpecial", { fg = s.syn.special })

  hl("SnacksIndent", { fg = s.ui.line_nr_dim })
  hl("SnacksIndentScope", { fg = s.ui.line_nr_active })

  hl("SnacksNotifierInfo", { fg = s.diag.info })
  hl("SnacksNotifierWarn", { fg = s.diag.warning })
  hl("SnacksNotifierError", { fg = s.diag.error })
  hl("SnacksNotifierDebug", { fg = s.syn.comment })
  hl("SnacksNotifierTrace", { fg = s.syn.special })
  hl("SnacksNotifierIconInfo", { fg = s.diag.info })
  hl("SnacksNotifierIconWarn", { fg = s.diag.warning })
  hl("SnacksNotifierIconError", { fg = s.diag.error })
  hl("SnacksNotifierIconDebug", { fg = s.syn.comment })
  hl("SnacksNotifierIconTrace", { fg = s.syn.special })
  hl("SnacksNotifierTitleInfo", { fg = s.diag.info })
  hl("SnacksNotifierTitleWarn", { fg = s.diag.warning })
  hl("SnacksNotifierTitleError", { fg = s.diag.error })
  hl("SnacksNotifierTitleDebug", { fg = s.syn.comment })
  hl("SnacksNotifierTitleTrace", { fg = s.syn.special })
  hl("SnacksNotifierBorderInfo", { fg = s.diag.info })
  hl("SnacksNotifierBorderWarn", { fg = s.diag.warning })
  hl("SnacksNotifierBorderError", { fg = s.diag.error })
  hl("SnacksNotifierBorderDebug", { fg = s.syn.comment })
  hl("SnacksNotifierBorderTrace", { fg = s.syn.special })

  hl("SnacksScrollView", { bg = s.ui.line_nr_active })
end

return M
