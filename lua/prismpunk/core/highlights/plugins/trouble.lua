local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  -- Main window
  hl("TroubleNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("TroubleNormalNC", { fg = s.ui.fg, bg = s.ui.bg_dim })

  -- Text elements
  hl("TroubleText", { fg = s.ui.fg })
  hl("TroubleTextHint", { fg = s.diag.hint })
  hl("TroubleTextInformation", { fg = s.diag.info })
  hl("TroubleTextWarning", { fg = s.diag.warning })
  hl("TroubleTextError", { fg = s.diag.error })

  -- Signs
  hl("TroubleSignHint", { fg = s.diag.hint })
  hl("TroubleSignInformation", { fg = s.diag.info })
  hl("TroubleSignWarning", { fg = s.diag.warning })
  hl("TroubleSignError", { fg = s.diag.error })
  hl("TroubleSignOther", { fg = s.syn.type })

  -- Location and source
  hl("TroubleLocation", { fg = s.syn.comment })
  hl("TroubleSource", { fg = s.syn.comment })
  hl("TroubleCode", { fg = s.syn.comment })

  -- Counts
  hl("TroubleCount", { fg = s.syn.number })

  -- File and indent
  hl("TroubleFile", { fg = s.syn.type })
  hl("TroubleIndent", { fg = s.ui.line_nr_dim })
  hl("TroubleFoldIcon", { fg = s.ui.line_nr })
end

return M
