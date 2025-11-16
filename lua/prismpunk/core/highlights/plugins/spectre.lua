local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
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
