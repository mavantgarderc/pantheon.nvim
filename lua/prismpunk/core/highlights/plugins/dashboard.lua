local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
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
