local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  -- Background and border
  hl("NotifyBackground", { bg = s.ui.bg_dim })
  hl("NotifyERRORBorder", { fg = s.diag.error })
  hl("NotifyWARNBorder", { fg = s.diag.warning })
  hl("NotifyINFOBorder", { fg = s.diag.info })
  hl("NotifyDEBUGBorder", { fg = s.syn.comment })
  hl("NotifyTRACEBorder", { fg = s.syn.special })

  -- Icons
  hl("NotifyERRORIcon", { fg = s.diag.error })
  hl("NotifyWARNIcon", { fg = s.diag.warning })
  hl("NotifyINFOIcon", { fg = s.diag.info })
  hl("NotifyDEBUGIcon", { fg = s.syn.comment })
  hl("NotifyTRACEIcon", { fg = s.syn.special })

  -- Titles
  hl("NotifyERRORTitle", { fg = s.diag.error })
  hl("NotifyWARNTitle", { fg = s.diag.warning })
  hl("NotifyINFOTitle", { fg = s.diag.info })
  hl("NotifyDEBUGTitle", { fg = s.syn.comment })
  hl("NotifyTRACETitle", { fg = s.syn.special })

  -- Body
  hl("NotifyERRORBody", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NotifyWARNBody", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NotifyINFOBody", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NotifyDEBUGBody", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NotifyTRACEBody", { fg = s.ui.fg, bg = s.ui.bg_dim })
end

return M
