local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  hl("AlphaHeader", { fg = s.syn.type })
  hl("AlphaHeaderLabel", { fg = s.syn.keyword })
  hl("AlphaButtons", { fg = s.syn.func })
  hl("AlphaShortcut", { fg = s.syn.number })
  hl("AlphaFooter", { fg = s.syn.comment, italic = true })
end

return M
