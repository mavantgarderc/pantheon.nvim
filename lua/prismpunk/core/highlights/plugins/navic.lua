local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  hl("NavicText", { fg = s.ui.fg_dim })
  hl("NavicSeparator", { fg = s.syn.operator })

  -- Icons for different symbol kinds
  hl("NavicIconsFile", { fg = s.ui.fg })
  hl("NavicIconsModule", { fg = s.syn.keyword })
  hl("NavicIconsNamespace", { fg = s.syn.type })
  hl("NavicIconsPackage", { fg = s.syn.keyword })
  hl("NavicIconsClass", { fg = s.syn.type })
  hl("NavicIconsMethod", { fg = s.syn.func })
  hl("NavicIconsProperty", { fg = s.syn.variable })
  hl("NavicIconsField", { fg = s.syn.variable })
  hl("NavicIconsConstructor", { fg = s.syn.func })
  hl("NavicIconsEnum", { fg = s.syn.type })
  hl("NavicIconsInterface", { fg = s.syn.type })
  hl("NavicIconsFunction", { fg = s.syn.func })
  hl("NavicIconsVariable", { fg = s.syn.variable })
  hl("NavicIconsConstant", { fg = s.syn.constant })
  hl("NavicIconsString", { fg = s.syn.string })
  hl("NavicIconsNumber", { fg = s.syn.number })
  hl("NavicIconsBoolean", { fg = s.syn.boolean })
  hl("NavicIconsArray", { fg = s.syn.type })
  hl("NavicIconsObject", { fg = s.syn.type })
  hl("NavicIconsKey", { fg = s.syn.variable })
  hl("NavicIconsNull", { fg = s.syn.constant })
  hl("NavicIconsEnumMember", { fg = s.syn.constant })
  hl("NavicIconsStruct", { fg = s.syn.type })
  hl("NavicIconsEvent", { fg = s.syn.type })
  hl("NavicIconsOperator", { fg = s.syn.operator })
  hl("NavicIconsTypeParameter", { fg = s.syn.type })
end

return M
