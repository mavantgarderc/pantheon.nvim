local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("NoicePopupmenu", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NoicePopupmenuBorder", { fg = s.ui.border })
  hl("NoicePopupmenuSelected", { fg = s.ui.bg, bg = s.ui.line_nr_active })

  hl("NoiceCmdline", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NoiceCmdlineIcon", { fg = s.syn.type })
  hl("NoiceCmdlineIconSearch", { fg = s.syn.number })
  hl("NoiceCmdlinePopup", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NoiceCmdlinePopupBorder", { fg = s.ui.border })
  hl("NoiceCmdlinePopupTitle", { fg = s.syn.keyword })

  hl("NoiceConfirm", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NoiceConfirmBorder", { fg = s.ui.border })

  hl("NoiceLspProgressTitle", { fg = s.syn.keyword })
  hl("NoiceLspProgressClient", { fg = s.syn.type })

  hl("NoiceVirtualText", { fg = s.syn.comment })

  hl("NoiceFormatTitle", { fg = s.syn.keyword, bold = true })
  hl("NoiceFormatProgressDone", { fg = s.diag.info })
  hl("NoiceFormatProgressTodo", { fg = s.syn.comment })
end

return M
