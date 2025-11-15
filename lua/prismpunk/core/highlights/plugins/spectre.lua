local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  hl("SpectreSearch", { fg = s.ui.bg, bg = s.syn.number })
  hl("SpectreReplace", { fg = s.ui.bg, bg = s.git.add })
  hl("SpectreFile", { fg = s.syn.type })
  hl("SpectreBorder", { fg = s.ui.border })
  hl("SpectreDir", { fg = s.syn.type })
  hl("SpectreHeader", { fg = s.syn.keyword, bold = true })
  hl("SpectreBody", { fg = s.ui.fg })
end

return M
