local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  hl("FidgetTitle", { fg = s.syn.keyword, bold = true })
  hl("FidgetTask", { fg = s.diag.warning })
  hl("FidgetDone", { fg = s.syn.constant })
  hl("FidgetIcon", { fg = s.diag.hint })
  hl("FidgetGroupSeparator", { fg = s.syn.comment })
  hl("FidgetWindow", { fg = s.ui.fg_dim, bg = s.ui.float })
end

return M
