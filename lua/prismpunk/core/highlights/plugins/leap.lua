local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  hl("LeapMatch", { fg = s.ui.bg, bg = s.syn.number, bold = true })
  hl("LeapLabel", { fg = s.ui.bg, bg = s.syn.type, bold = true })
  hl("LeapBackdrop", { fg = s.syn.comment })
end

return M
