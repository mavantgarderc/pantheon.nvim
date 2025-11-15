local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  hl("HopNextKey", { fg = s.ui.bg, bg = s.syn.number, bold = true })
  hl("HopNextKey1", { fg = s.ui.bg, bg = s.syn.type, bold = true })
  hl("HopNextKey2", { fg = s.ui.bg, bg = s.syn.func })
  hl("HopUnmatched", { fg = s.syn.comment })
  hl("HopCursor", { reverse = true })
  hl("HopPreview", { fg = s.diag.warning })
end

return M
