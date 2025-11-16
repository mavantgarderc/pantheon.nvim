local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("BufferLineFill", { bg = s.ui.bg_dim })

  hl("BufferLineBuffer", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
  hl("BufferLineBufferVisible", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("BufferLineBufferSelected", { fg = s.ui.fg, bg = s.ui.bg, bold = true })

  hl("BufferLineTab", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
  hl("BufferLineTabSelected", { fg = s.ui.fg, bg = s.ui.bg })
  hl("BufferLineTabSeparator", { fg = s.ui.border, bg = s.ui.bg_dim })
  hl("BufferLineTabSeparatorSelected", { fg = s.ui.border, bg = s.ui.bg })

  hl("BufferLineIndicatorVisible", { fg = s.ui.line_nr, bg = s.ui.bg_dim })
  hl("BufferLineIndicatorSelected", { fg = s.ui.line_nr_active, bg = s.ui.bg })

  hl("BufferLineModified", { fg = s.git.change, bg = s.ui.bg_dim })
  hl("BufferLineModifiedVisible", { fg = s.git.change, bg = s.ui.bg_dim })
  hl("BufferLineModifiedSelected", { fg = s.git.change, bg = s.ui.bg })

  hl("BufferLineDuplicate", { fg = s.ui.fg_dim, bg = s.ui.bg_dim, italic = true })
  hl("BufferLineDuplicateVisible", { fg = s.ui.fg, bg = s.ui.bg_dim, italic = true })
  hl("BufferLineDuplicateSelected", { fg = s.ui.fg, bg = s.ui.bg, italic = true })

  hl("BufferLineCloseButton", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
  hl("BufferLineCloseButtonVisible", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("BufferLineCloseButtonSelected", { fg = s.diag.error, bg = s.ui.bg })

  hl("BufferLineSeparator", { fg = s.ui.border, bg = s.ui.bg_dim })
  hl("BufferLineSeparatorVisible", { fg = s.ui.border, bg = s.ui.bg_dim })
  hl("BufferLineSeparatorSelected", { fg = s.ui.border, bg = s.ui.bg })

  hl("BufferLineError", { fg = s.diag.error, bg = s.ui.bg_dim })
  hl("BufferLineErrorVisible", { fg = s.diag.error, bg = s.ui.bg_dim })
  hl("BufferLineErrorSelected", { fg = s.diag.error, bg = s.ui.bg })
  hl("BufferLineWarning", { fg = s.diag.warning, bg = s.ui.bg_dim })
  hl("BufferLineWarningVisible", { fg = s.diag.warning, bg = s.ui.bg_dim })
  hl("BufferLineWarningSelected", { fg = s.diag.warning, bg = s.ui.bg })
  hl("BufferLineInfo", { fg = s.diag.info, bg = s.ui.bg_dim })
  hl("BufferLineInfoVisible", { fg = s.diag.info, bg = s.ui.bg_dim })
  hl("BufferLineInfoSelected", { fg = s.diag.info, bg = s.ui.bg })
  hl("BufferLineHint", { fg = s.diag.hint, bg = s.ui.bg_dim })
  hl("BufferLineHintVisible", { fg = s.diag.hint, bg = s.ui.bg_dim })
  hl("BufferLineHintSelected", { fg = s.diag.hint, bg = s.ui.bg })

  hl("BufferLinePick", { fg = s.diag.error, bg = s.ui.bg_dim, bold = true })
  hl("BufferLinePickVisible", { fg = s.diag.error, bg = s.ui.bg_dim, bold = true })
  hl("BufferLinePickSelected", { fg = s.diag.error, bg = s.ui.bg, bold = true })
end

return M
