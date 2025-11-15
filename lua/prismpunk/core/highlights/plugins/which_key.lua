local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  hl("WhichKey", { fg = s.syn.func })
  hl("WhichKeyGroup", { fg = s.syn.keyword })
  hl("WhichKeyDesc", { fg = s.syn.variable })
  hl("WhichKeySeparator", { fg = s.syn.operator })
  hl("WhichKeyFloat", { bg = s.ui.float })
  hl("WhichKeyValue", { fg = s.syn.constant })
  hl("WhichKeyBorder", { fg = s.ui.border })

  -- Additional which-key groups
  hl("WhichKeyNormal", { fg = s.ui.fg })
end

return M
