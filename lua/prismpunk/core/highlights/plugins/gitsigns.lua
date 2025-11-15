local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  -- Sign column
  hl("GitSignsAdd", { fg = s.git.add })
  hl("GitSignsChange", { fg = s.git.change })
  hl("GitSignsDelete", { fg = s.git.delete })

  -- Line highlights
  hl("GitSignsAddLn", { bg = s.git.add, blend = 10 })
  hl("GitSignsChangeLn", { bg = s.git.change, blend = 10 })
  hl("GitSignsDeleteLn", { bg = s.git.delete, blend = 10 })

  -- Word diff
  hl("GitSignsAddInline", { fg = s.git.add_inline or s.git.add, reverse = true })
  hl("GitSignsChangeInline", { fg = s.git.change_inline or s.git.change, reverse = true })
  hl("GitSignsDeleteInline", { fg = s.git.delete_inline or s.git.delete, reverse = true })

  -- Virtual lines
  hl("GitSignsAddVirtLn", { bg = s.git.add, blend = 5 })
  hl("GitSignsChangeVirtLn", { bg = s.git.change, blend = 5 })
  hl("GitSignsDeleteVirtLn", { bg = s.git.delete, blend = 5 })

  -- Staged changes
  hl("GitSignsStagedAdd", { fg = s.git.add })
  hl("GitSignsStagedChange", { fg = s.git.change })
  hl("GitSignsStagedDelete", { fg = s.git.delete })
  hl("GitSignsStagedAddLn", { bg = s.git.add, blend = 10 })
  hl("GitSignsStagedChangeLn", { bg = s.git.change, blend = 10 })
  hl("GitSignsStagedDeleteLn", { bg = s.git.delete, blend = 10 })

  -- Blame
  hl("GitSignsCurrentLineBlame", { fg = s.syn.comment, italic = true })
end

return M
