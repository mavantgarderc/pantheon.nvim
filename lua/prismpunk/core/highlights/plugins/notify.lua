local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("NotifyBackground", { bg = s.ui.bg_dim })
  hl("NotifyERRORBorder", { fg = s.diag.error })
  hl("NotifyWARNBorder", { fg = s.diag.warning })
  hl("NotifyINFOBorder", { fg = s.diag.info })
  hl("NotifyDEBUGBorder", { fg = s.syn.comment })
  hl("NotifyTRACEBorder", { fg = s.syn.special })

  hl("NotifyERRORIcon", { fg = s.diag.error })
  hl("NotifyWARNIcon", { fg = s.diag.warning })
  hl("NotifyINFOIcon", { fg = s.diag.info })
  hl("NotifyDEBUGIcon", { fg = s.syn.comment })
  hl("NotifyTRACEIcon", { fg = s.syn.special })

  hl("NotifyERRORTitle", { fg = s.diag.error })
  hl("NotifyWARNTitle", { fg = s.diag.warning })
  hl("NotifyINFOTitle", { fg = s.diag.info })
  hl("NotifyDEBUGTitle", { fg = s.syn.comment })
  hl("NotifyTRACETitle", { fg = s.syn.special })

  hl("NotifyERRORBody", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NotifyWARNBody", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NotifyINFOBody", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NotifyDEBUGBody", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NotifyTRACEBody", { fg = s.ui.fg, bg = s.ui.bg_dim })
end

return M
