local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  -- File types
  hl("OilDir", { fg = s.syn.type, bold = true })
  hl("OilDirIcon", { fg = s.syn.type })
  hl("OilFile", { fg = s.ui.fg })
  hl("OilLink", { fg = s.syn.string, underline = true })
  hl("OilSocket", { fg = s.syn.special })

  -- Operations
  hl("OilCreate", { fg = s.git.add })
  hl("OilDelete", { fg = s.git.delete })
  hl("OilMove", { fg = s.git.change })
  hl("OilCopy", { fg = s.syn.func })
  hl("OilChange", { fg = s.syn.keyword })

  -- Trash operations
  hl("OilRestore", { fg = s.diag.hint })
  hl("OilTrash", { fg = s.diag.error })
  hl("OilTrashSource", { fg = s.diag.warning })

  -- Permissions
  hl("OilPermissionNone", { fg = s.syn.comment })
  hl("OilPermissionRead", { fg = s.diag.info })
  hl("OilPermissionWrite", { fg = s.diag.warning })
  hl("OilPermissionExecute", { fg = s.diag.error })
end

return M
