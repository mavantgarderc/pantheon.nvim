local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("TroubleNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("TroubleNormalNC", { fg = s.ui.fg, bg = s.ui.bg_dim })

  hl("TroubleText", { fg = s.ui.fg })
  hl("TroubleTextHint", { fg = s.diag.hint })
  hl("TroubleTextInformation", { fg = s.diag.info })
  hl("TroubleTextWarning", { fg = s.diag.warning })
  hl("TroubleTextError", { fg = s.diag.error })

  hl("TroubleSignHint", { fg = s.diag.hint })
  hl("TroubleSignInformation", { fg = s.diag.info })
  hl("TroubleSignWarning", { fg = s.diag.warning })
  hl("TroubleSignError", { fg = s.diag.error })
  hl("TroubleSignOther", { fg = s.syn.type })

  hl("TroubleLocation", { fg = s.syn.comment })
  hl("TroubleSource", { fg = s.syn.comment })
  hl("TroubleCode", { fg = s.syn.comment })

  hl("TroubleCount", { fg = s.syn.number })

  hl("TroubleFile", { fg = s.syn.type })
  hl("TroubleIndent", { fg = s.ui.line_nr_dim })
  hl("TroubleFoldIcon", { fg = s.ui.line_nr })
end

return M
