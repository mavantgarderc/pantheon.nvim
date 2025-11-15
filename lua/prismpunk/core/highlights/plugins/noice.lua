local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  -- Popupmenu
  hl("NoicePopupmenu", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NoicePopupmenuBorder", { fg = s.ui.border })
  hl("NoicePopupmenuSelected", { fg = s.ui.bg, bg = s.ui.line_nr_active })

  -- Command line
  hl("NoiceCmdline", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NoiceCmdlineIcon", { fg = s.syn.type })
  hl("NoiceCmdlineIconSearch", { fg = s.syn.number })
  hl("NoiceCmdlinePopup", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NoiceCmdlinePopupBorder", { fg = s.ui.border })
  hl("NoiceCmdlinePopupTitle", { fg = s.syn.keyword })

  -- Messages
  hl("NoiceConfirm", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NoiceConfirmBorder", { fg = s.ui.border })

  -- LSP
  hl("NoiceLspProgressTitle", { fg = s.syn.keyword })
  hl("NoiceLspProgressClient", { fg = s.syn.type })

  -- Virtual text
  hl("NoiceVirtualText", { fg = s.syn.comment })

  -- Format levels
  hl("NoiceFormatTitle", { fg = s.syn.keyword, bold = true })
  hl("NoiceFormatProgressDone", { fg = s.diag.info })
  hl("NoiceFormatProgressTodo", { fg = s.syn.comment })
end

return M
