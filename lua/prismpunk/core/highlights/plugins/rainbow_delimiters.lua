local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  -- Rainbow colors (you can customize these based on your theme)
  hl("RainbowDelimiterRed", { fg = s.diag.error })
  hl("RainbowDelimiterYellow", { fg = s.syn.number })
  hl("RainbowDelimiterBlue", { fg = s.syn.type })
  hl("RainbowDelimiterOrange", { fg = s.diag.warning })
  hl("RainbowDelimiterGreen", { fg = s.diag.info })
  hl("RainbowDelimiterViolet", { fg = s.syn.keyword })
  hl("RainbowDelimiterCyan", { fg = s.syn.func })
end

return M
