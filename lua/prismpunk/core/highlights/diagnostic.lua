local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("DiagnosticError", { fg = s.diag.error })
  hl("DiagnosticWarn", { fg = s.diag.warning })
  hl("DiagnosticInfo", { fg = s.diag.info })
  hl("DiagnosticHint", { fg = s.diag.hint })
  hl("DiagnosticOk", { fg = s.syn.type })

  hl("DiagnosticUnderlineError", { sp = s.diag.error, undercurl = true })
  hl("DiagnosticUnderlineWarn", { sp = s.diag.warning, undercurl = true })
  hl("DiagnosticUnderlineInfo", { sp = s.diag.info, undercurl = true })
  hl("DiagnosticUnderlineHint", { sp = s.diag.hint, undercurl = true })
  hl("DiagnosticUnderlineOk", { sp = s.syn.type, undercurl = true })

  local vt_error = s.diag.virtual_text_error or s.diag.error
  local vt_warn = s.diag.virtual_text_warning or s.diag.warning
  local vt_info = s.diag.virtual_text_info or s.diag.info
  local vt_hint = s.diag.virtual_text_hint or s.diag.hint
  local vt_ok = s.diag.virtual_text_ok or s.diag.ok

  hl("DiagnosticVirtualTextError", { fg = vt_error, bg = s.ui.bg_dim })
  hl("DiagnosticVirtualTextWarn", { fg = vt_warn, bg = s.ui.bg_dim })
  hl("DiagnosticVirtualTextInfo", { fg = vt_info, bg = s.ui.bg_dim })
  hl("DiagnosticVirtualTextHint", { fg = vt_hint, bg = s.ui.bg_dim })
  hl("DiagnosticVirtualTextOk", { fg = vt_ok, bg = s.ui.bg_dim })

  hl("DiagnosticSignError", { fg = s.diag.error })
  hl("DiagnosticSignWarn", { fg = s.diag.warning })
  hl("DiagnosticSignInfo", { fg = s.diag.info })
  hl("DiagnosticSignHint", { fg = s.diag.hint })
  hl("DiagnosticSignOk", { fg = s.syn.type })
end

return M
