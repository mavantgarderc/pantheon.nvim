local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  -- Main completion items
  hl("CmpItemAbbr", { fg = s.ui.fg })
  hl("CmpItemAbbrDeprecated", { fg = s.syn.comment, strikethrough = true })
  hl("CmpItemAbbrMatch", { fg = s.syn.keyword, bold = true })
  hl("CmpItemAbbrMatchFuzzy", { fg = s.syn.keyword })

  -- Kind icons
  hl("CmpItemKind", { fg = s.syn.type })
  hl("CmpItemKindFunction", { fg = s.syn.func })
  hl("CmpItemKindMethod", { fg = s.syn.func })
  hl("CmpItemKindVariable", { fg = s.syn.variable })
  hl("CmpItemKindConstant", { fg = s.syn.constant })
  hl("CmpItemKindClass", { fg = s.syn.type })
  hl("CmpItemKindInterface", { fg = s.syn.type })
  hl("CmpItemKindModule", { fg = s.syn.keyword })
  hl("CmpItemKindProperty", { fg = s.syn.variable })
  hl("CmpItemKindField", { fg = s.syn.variable })
  hl("CmpItemKindEnum", { fg = s.syn.type })
  hl("CmpItemKindKeyword", { fg = s.syn.keyword })
  hl("CmpItemKindSnippet", { fg = s.syn.special })
  hl("CmpItemKindText", { fg = s.syn.string })
  hl("CmpItemKindValue", { fg = s.syn.number })
  hl("CmpItemKindOperator", { fg = s.syn.operator })
  hl("CmpItemKindConstructor", { fg = s.syn.func })
  hl("CmpItemKindUnit", { fg = s.syn.number })
  hl("CmpItemKindStruct", { fg = s.syn.type })
  hl("CmpItemKindEvent", { fg = s.syn.type })
  hl("CmpItemKindTypeParameter", { fg = s.syn.type })

  -- Menu and extras
  hl("CmpItemMenu", { fg = s.syn.comment })
  hl("CmpItemKindDefault", { fg = s.ui.fg_dim })
end

return M
