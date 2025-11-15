local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

function M.apply(c, config)
  local s = c
  local styles = config.styles

  -- Variables
  hl("@variable", vim.tbl_extend("force", { fg = s.syn.variable }, styles.variables))
  hl("@variable.builtin", { fg = s.syn.constant })
  hl("@variable.parameter", { fg = s.syn.variable })
  hl("@variable.member", { fg = s.syn.variable })
  hl("@field", { fg = s.syn.variable })
  hl("@property", { fg = s.syn.variable })

  -- Functions
  hl("@function", { link = "Function" })
  hl("@function.call", { fg = s.syn.func })
  hl("@function.builtin", { fg = s.syn.func })
  hl("@function.macro", { fg = s.syn.special })
  hl("@method", { fg = s.syn.func })
  hl("@method.call", { fg = s.syn.func })
  hl("@constructor", { fg = s.syn.type })

  -- Keywords
  hl("@keyword", { link = "Keyword" })
  hl("@keyword.return", { fg = s.syn.keyword })
  hl("@keyword.function", { fg = s.syn.keyword })
  hl("@keyword.operator", { fg = s.syn.operator })
  hl("@keyword.coroutine", { fg = s.syn.keyword })
  hl("@keyword.conditional", { fg = s.syn.keyword })
  hl("@keyword.repeat", { fg = s.syn.keyword })

  -- Literals
  hl("@string", { link = "String" })
  hl("@string.escape", { fg = s.syn.special })
  hl("@string.special", { fg = s.syn.special })
  hl("@number", { link = "Number" })
  hl("@boolean", { link = "Boolean" })

  -- Types
  hl("@type", { link = "Type" })
  hl("@type.builtin", { fg = s.syn.type })
  hl("@type.definition", { fg = s.syn.type })
  hl("@type.qualifier", { fg = s.syn.keyword })

  -- Operators & Comments
  hl("@operator", { link = "Operator" })
  hl("@comment", { link = "Comment" })
  hl("@comment.documentation", { fg = s.syn.comment })

  -- Constants
  hl("@constant", { fg = s.syn.constant })
  hl("@constant.builtin", { fg = s.syn.constant })
  hl("@constant.macro", { fg = s.syn.special })

  -- Punctuation
  hl("@punctuation.delimiter", { fg = s.syn.operator })
  hl("@punctuation.bracket", { fg = s.syn.operator })
  hl("@punctuation.special", { fg = s.syn.special })

  -- Misc
  hl("@attribute", { fg = s.syn.type })
  hl("@error", { fg = s.diag.error })
  hl("@todo", { fg = s.syn.special })
  hl("@none", { fg = "NONE" })
end

return M
