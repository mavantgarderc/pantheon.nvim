local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("GitSignsAdd", { fg = s.diff.add })
  hl("GitSignsChange", { fg = s.diff.change })
  hl("GitSignsDelete", { fg = s.diff.delete })

  hl("GitSignsAddLn", { bg = s.diff.add, blend = 10 })
  hl("GitSignsChangeLn", { bg = s.diff.change, blend = 10 })
  hl("GitSignsDeleteLn", { bg = s.diff.delete, blend = 10 })

  hl("GitSignsAddInline", { fg = s.diff.add_inline or s.diff.add, reverse = true })
  hl("GitSignsChangeInline", { fg = s.diff.change_inline or s.diff.change, reverse = true })
  hl("GitSignsDeleteInline", { fg = s.diff.delete_inline or s.diff.delete, reverse = true })

  hl("GitSignsAddVirtLn", { bg = s.diff.add, blend = 5 })
  hl("GitSignsChangeVirtLn", { bg = s.diff.change, blend = 5 })
  hl("GitSignsDeleteVirtLn", { bg = s.diff.delete, blend = 5 })

  hl("GitSignsStagedAdd", { fg = s.diff.add })
  hl("GitSignsStagedChange", { fg = s.diff.change })
  hl("GitSignsStagedDelete", { fg = s.diff.delete })
  hl("GitSignsStagedAddLn", { bg = s.diff.add, blend = 10 })
  hl("GitSignsStagedChangeLn", { bg = s.diff.change, blend = 10 })
  hl("GitSignsStagedDeleteLn", { bg = s.diff.delete, blend = 10 })

  hl("GitSignsCurrentLineBlame", { fg = s.syn.comment, italic = true })

  hl("GitSignsAddNr", { fg = s.diff.add, bg = s.ui.bg })
  hl("GitSignsChangeNr", { fg = s.diff.change, bg = s.ui.bg })
  hl("GitSignsDeleteNr", { fg = s.diff.delete, bg = s.ui.bg })

  hl("GitSignsStagedAddNr", { fg = s.diff.add, bg = s.ui.bg })
  hl("GitSignsStagedChangeNr", { fg = s.diff.change, bg = s.ui.bg })
  hl("GitSignsStagedDeleteNr", { fg = s.diff.delete, bg = s.ui.bg })
end

return M
