local M = {}

local hl = require("prismpunk.core.highlights").hl

function M.apply(c, config)
  local s = c
  local styles = config.styles

  hl("Comment", vim.tbl_extend("force", { fg = s.syn.comment }, styles.comments))

  hl("Constant", { fg = s.syn.constant })
  hl("String", { fg = s.syn.string })
  hl("Character", { fg = s.syn.string })
  hl("Number", { fg = s.syn.number })
  hl("Boolean", { fg = s.syn.boolean })
  hl("Float", { fg = s.syn.number })

  hl("Identifier", { fg = s.syn.variable })
  hl("Function", vim.tbl_extend("force", { fg = s.syn.func }, styles.functions))

  hl("Statement", { fg = s.syn.keyword })
  hl("Conditional", { fg = s.syn.keyword })
  hl("Repeat", { fg = s.syn.keyword })
  hl("Label", { fg = s.syn.keyword })
  hl("Operator", { fg = s.syn.operator })
  hl("Keyword", vim.tbl_extend("force", { fg = s.syn.keyword }, styles.keywords))
  hl("Exception", { fg = s.syn.keyword })

  hl("PreProc", { fg = s.syn.type })
  hl("Include", { fg = s.syn.func })
  hl("Define", { fg = s.syn.keyword })
  hl("Macro", { fg = s.syn.variable })
  hl("PreCondit", { fg = s.syn.type })

  hl("Type", { fg = s.syn.type })
  hl("StorageClass", { fg = s.syn.type })
  hl("Structure", { fg = s.syn.keyword })
  hl("Typedef", { fg = s.syn.type })

  hl("Special", { fg = s.syn.special })
  hl("SpecialChar", { fg = s.syn.special })
  hl("Tag", { fg = s.syn.type })
  hl("Delimiter", { fg = s.syn.operator })
  hl("SpecialComment", { fg = s.syn.special })
  hl("Debug", { fg = s.diag.error })

  hl("Underlined", { underline = true })
  hl("Ignore", { fg = s.ui.bg })
  hl("Error", { fg = s.diag.error })
  hl("Todo", { fg = s.syn.special, bold = true })
end

return M
