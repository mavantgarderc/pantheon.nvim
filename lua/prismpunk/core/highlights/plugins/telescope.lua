local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  hl("TelescopeNormal", { fg = s.ui.fg, bg = s.ui.float })
  hl("TelescopeBorder", { fg = s.ui.border, bg = s.ui.float })
  hl("TelescopePromptNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("TelescopeResultsNormal", { fg = s.ui.fg_dim, bg = s.ui.float })
  hl("TelescopeSelection", { fg = s.ui.bg, bg = s.ui.line_nr_active })
  hl("TelescopePreviewNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
end

return M
