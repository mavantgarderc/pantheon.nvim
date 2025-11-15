local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  hl("NvimTreeNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NvimTreeFolderName", { fg = s.syn.type })
  hl("NvimTreeOpenedFolderName", { fg = s.syn.type, bold = true })
  hl("NvimTreeFileDirty", { fg = s.git.change })
  hl("NvimTreeGitNew", { fg = s.git.add })
  hl("NvimTreeGitDeleted", { fg = s.git.delete })
end

return M
