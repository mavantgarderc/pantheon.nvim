local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("OilDir", { fg = s.syn.type, bold = true })
  hl("OilDirIcon", { fg = s.syn.type })
  hl("OilFile", { fg = s.ui.fg })
  hl("OilLink", { fg = s.syn.string, underline = true })
  hl("OilSocket", { fg = s.syn.special })

  hl("OilCreate", { fg = s.git.add })
  hl("OilDelete", { fg = s.git.delete })
  hl("OilMove", { fg = s.git.change })
  hl("OilCopy", { fg = s.syn.func })
  hl("OilChange", { fg = s.syn.keyword })

  hl("OilRestore", { fg = s.diag.hint })
  hl("OilTrash", { fg = s.diag.error })
  hl("OilTrashSource", { fg = s.diag.warning })

  hl("OilPermissionNone", { fg = s.syn.comment })
  hl("OilPermissionRead", { fg = s.diag.info })
  hl("OilPermissionWrite", { fg = s.diag.warning })
  hl("OilPermissionExecute", { fg = s.diag.error })
end

return M
