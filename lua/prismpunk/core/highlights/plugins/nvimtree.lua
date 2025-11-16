local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("NvimTreeNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NvimTreeFolderName", { fg = s.syn.type })
  hl("NvimTreeOpenedFolderName", { fg = s.syn.type, bold = true })
  hl("NvimTreeFileDirty", { fg = s.git.change })
  hl("NvimTreeGitNew", { fg = s.git.add })
  hl("NvimTreeGitDeleted", { fg = s.git.delete })
end

return M
