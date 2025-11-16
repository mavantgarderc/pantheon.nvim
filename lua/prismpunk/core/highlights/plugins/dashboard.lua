local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("DashboardHeader", { fg = s.syn.type })
  hl("DashboardCenter", { fg = s.syn.func })
  hl("DashboardShortCut", { fg = s.syn.number })
  hl("DashboardFooter", { fg = s.syn.comment, italic = true })
  hl("DashboardDesc", { fg = s.syn.string })
  hl("DashboardKey", { fg = s.syn.keyword, bold = true })
  hl("DashboardIcon", { fg = s.syn.type })
end

return M
