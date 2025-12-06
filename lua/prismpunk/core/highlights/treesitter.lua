-- treesitter.lua
local M = {}

local hl = require("prismpunk.core.highlights").hl

function M.apply(c, config)
  local s = c
  local styles = (config and config.styles) or {}
  local var_style = styles.variables or {}
  local param_style = styles.parameters or {}

  hl("@variable", vim.tbl_extend("force", { fg = s.syn.variable }, var_style))
  hl("@variable.builtin", { fg = s.syn.constant })
  hl("@variable.parameter", { fg = s.syn.variable })
  hl("@variable.parameter.builtin", { fg = s.syn.constant })
  hl("@variable.member", { fg = s.syn.variable })
  hl("@field", { fg = s.syn.variable })
  hl("@property", { fg = s.syn.variable })
  hl("@constant", { fg = s.syn.constant })
  hl("@constant.builtin", { fg = s.syn.constant })
  hl("@constant.macro", { fg = s.syn.special })
  hl("@module", { fg = s.syn.type })
  hl("@module.builtin", { fg = s.syn.type })
  hl("@label", { fg = s.syn.special })

  hl("@function", { link = "Function" })
  hl("@function.call", { fg = s.syn.func })
  hl("@function.builtin", { fg = s.syn.func })
  hl("@function.macro", { fg = s.syn.special })
  hl("@method", { fg = s.syn.func })
  hl("@method.call", { fg = s.syn.func })
  hl("@function.method", { link = "@method" })
  hl("@function.method.call", { link = "@method.call" })
  hl("@constructor", { fg = s.syn.type })

  hl("@operator", { link = "Operator" })

  hl("@keyword", { link = "Keyword" })
  hl("@keyword.return", { fg = s.syn.keyword })
  hl("@keyword.function", { fg = s.syn.keyword })
  hl("@keyword.operator", { fg = s.syn.operator })
  hl("@keyword.coroutine", { fg = s.syn.keyword })

  hl("@keyword.conditional", { fg = s.syn.keyword })
  hl("@keyword.conditional.ternary", { fg = s.syn.operator })

  hl("@keyword.repeat", { fg = s.syn.keyword })
  hl("@keyword.import", { fg = s.syn.keyword })
  hl("@keyword.type", { fg = s.syn.keyword })
  hl("@keyword.modifier", { fg = s.syn.keyword })
  hl("@keyword.debug", { fg = s.syn.keyword })
  hl("@keyword.exception", { fg = s.syn.keyword })

  hl("@keyword.directive", { fg = s.syn.keyword })
  hl("@keyword.directive.define", { fg = s.syn.keyword })

  hl("@string", { link = "String" })
  hl("@string.documentation", { fg = s.syn.comment })
  hl("@string.regexp", { fg = s.syn.special })
  hl("@string.escape", { fg = s.syn.special })
  hl("@string.special", { fg = s.syn.special })
  hl("@string.special.symbol", { fg = s.syn.special })
  hl("@string.special.path", { fg = s.syn.string or s.syn.special })
  hl("@string.special.url", { fg = s.syn.string or s.syn.special, underline = true })

  hl("@character", { fg = s.syn.string })
  hl("@character.special", { fg = s.syn.special })

  hl("@boolean", { link = "Boolean" })
  hl("@number", { link = "Number" })
  hl("@number.float", { fg = s.syn.number })

  hl("@type", { link = "Type" })
  hl("@type.builtin", { fg = s.syn.type })
  hl("@type.definition", { fg = s.syn.type })
  hl("@type.qualifier", { fg = s.syn.keyword })

  hl("@attribute", { fg = s.syn.type })
  hl("@attribute.builtin", { fg = s.syn.type })

  hl("@punctuation.delimiter", { fg = s.syn.operator })
  hl("@punctuation.bracket", { fg = s.syn.operator })
  hl("@punctuation.special", { fg = s.syn.special })

  hl("@comment", { link = "Comment", italic = true })
  hl("@comment.documentation", { fg = s.syn.comment })

  hl("@comment.error", { fg = s.diag.error })
  hl("@comment.warning", { fg = s.diag.warning })
  hl("@comment.todo", { fg = s.syn.special })
  hl("@comment.note", { fg = s.syn.comment })

  hl("@markup.strong", { bold = true })
  hl("@markup.italic", { italic = true })
  hl("@markup.strikethrough", { strikethrough = true })
  hl("@markup.underline", { underline = true })

  hl("@markup.heading", { fg = s.syn.keyword, bold = true })
  hl("@markup.heading.1", { fg = s.syn.keyword, bold = true })
  hl("@markup.heading.2", { fg = s.syn.type, bold = true })
  hl("@markup.heading.3", { fg = s.syn.func, bold = true })
  hl("@markup.heading.4", { fg = s.syn.variable, bold = true })
  hl("@markup.heading.5", { fg = s.syn.constant, bold = true })
  hl("@markup.heading.6", { fg = s.syn.special, bold = true })

  hl("@markup.quote", { fg = s.syn.comment, italic = true })
  hl("@markup.math", { fg = s.syn.special })

  hl("@markup.link", { fg = s.syn.special, underline = true })
  hl("@markup.link.label", { fg = s.syn.special })
  hl("@markup.link.url", { fg = s.syn.string or s.syn.special, underline = true })
  hl("@markup.environment", { fg = s.syn.type })
  hl("@markup.environment.name", { fg = s.syn.keyword })

  hl("@markup.raw", { fg = s.syn.string })
  hl("@markup.raw.block", { fg = s.syn.string })

  hl("@markup.list", { fg = s.syn.special })
  hl("@markup.list.checked", { fg = s.syn.type })
  hl("@markup.list.unchecked", { fg = s.syn.comment })

  hl("@diff.plus", { fg = s.diff.add })
  hl("@diff.minus", { fg = s.diff.delete })
  hl("@diff.delta", { fg = s.diff.change })

  hl("@tag", { fg = s.syn.type })
  hl("@tag.builtin", { fg = s.syn.type })
  hl("@tag.attribute", { fg = s.syn.variable })
  hl("@tag.delimiter", { fg = s.syn.operator })

  hl("@constant.builtin", { fg = s.syn.constant })
  hl("@constant.macro", { fg = s.syn.special })

  hl("@error", { fg = s.diag.error })
  hl("@todo", { fg = s.syn.special })

  hl("@none", { fg = "NONE" })

  hl("@text", { link = "@markup" })
  hl("@text.emphasis", { link = "@markup.italic" })
  hl("@text.strong", { link = "@markup.strong" })
  hl("@text.underline", { link = "@markup.underline" })
  hl("@text.strike", { link = "@markup.strikethrough" })

  hl("@text.title", { link = "@markup.heading" })
  hl("@text.literal", { link = "@markup.raw" })
  hl("@text.uri", { link = "@markup.link.url" })
  hl("@text.reference", { link = "@markup.link" })
  hl("@text.math", { link = "@markup.math" })

  hl("@text.environment", { link = "@markup.environment" })
  hl("@text.environment.name", { link = "@markup.environment.name" })

  hl("@text.note", { fg = s.syn.comment })
  hl("@text.warning", { fg = s.diag.warning })
  hl("@text.danger", { fg = s.diag.error })
  hl("@text.todo", { link = "@comment.todo" })

  hl("@spell", { link = "Normal" })

  hl("@parameter", vim.tbl_extend("force", { fg = s.syn.variable }, param_style))
  hl("@parameter.reference", { fg = s.syn.variable })

  hl("@comment", { link = "Comment", italic = true })
  hl("@comment.todo", { fg = s.syn.special, bold = true })
  hl("@todo", { fg = s.syn.special, bold = true, undercurl = false })

  hl("@text.literal.block.markdown", { fg = s.syn.string })
  hl("@text.literal.markdown_inline", { fg = s.syn.string })
  hl("@markup.code", { fg = s.syn.string })
  hl("@markup.inline", { fg = s.ui.fg })
  hl("@markup.block", { fg = s.syn.type })

  hl("@punctuation.special.method", { fg = s.syn.operator })
  hl("@punctuation.special.property", { fg = s.syn.operator })

  hl("@spell", { link = "Normal" })

  hl("@text.danger", { fg = s.diag.error })
  hl("@text.success", { fg = s.diff.add })

  hl("@markup.underline", { underline = true })
end

return M
