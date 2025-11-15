local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  -- Diff
  hl("DiffAdd", { fg = s.diff.add, bg = s.ui.bg })
  hl("DiffChange", { fg = s.diff.change, bg = s.ui.bg })
  hl("DiffDelete", { fg = s.diff.delete, bg = s.ui.bg })
  hl("DiffText", { fg = s.diff.text, bg = s.ui.bg_dim })

  -- GitSigns
  hl("GitSignsAdd", { fg = s.git.add })
  hl("GitSignsChange", { fg = s.git.change })
  hl("GitSignsDelete", { fg = s.git.delete })
  hl("GitSignsAddInline", { fg = s.git.add_inline or s.git.add, reverse = true })
  hl("GitSignsChangeInline", { fg = s.git.change_inline or s.git.change, reverse = true })
  hl("GitSignsDeleteInline", { fg = s.git.delete_inline or s.git.delete, reverse = true })
end

return M
