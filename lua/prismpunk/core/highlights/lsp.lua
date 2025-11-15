local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  -- Basic types
  hl("@lsp.type.function", { link = "@function" })
  hl("@lsp.type.method", { link = "@function" })
  hl("@lsp.type.variable", { link = "@variable" })
  hl("@lsp.type.parameter", { link = "@variable.parameter" })
  hl("@lsp.type.type", { link = "@type" })
  hl("@lsp.type.keyword", { link = "@keyword" })

  -- Complex types
  hl("@lsp.type.class", { fg = s.syn.type })
  hl("@lsp.type.interface", { fg = s.syn.type })
  hl("@lsp.type.struct", { fg = s.syn.type })
  hl("@lsp.type.enum", { fg = s.syn.type })
  hl("@lsp.type.enumMember", { fg = s.syn.constant })
  hl("@lsp.type.property", { fg = s.syn.variable })
  hl("@lsp.type.namespace", { fg = s.syn.type })

  -- Special
  hl("@lsp.type.macro", { fg = s.syn.special })
  hl("@lsp.type.decorator", { fg = s.syn.func })
  hl("@lsp.type.comment", { link = "@comment" })

  -- Literals
  hl("@lsp.type.builtinType", { fg = s.syn.type })
  hl("@lsp.type.selfParameter", { fg = s.syn.variable })
  hl("@lsp.type.typeParameter", { fg = s.syn.type })
  hl("@lsp.type.operator", { link = "@operator" })
  hl("@lsp.type.string", { link = "@string" })
  hl("@lsp.type.number", { link = "@number" })
  hl("@lsp.type.boolean", { link = "@boolean" })

  -- Data structures
  hl("@lsp.type.array", { fg = s.syn.type })
  hl("@lsp.type.object", { fg = s.syn.type })
  hl("@lsp.type.key", { fg = s.syn.variable })
  hl("@lsp.type.null", { fg = s.syn.constant })
  hl("@lsp.type.enumConstant", { fg = s.syn.constant })

  -- Misc
  hl("@lsp.type.event", { fg = s.syn.func })
  hl("@lsp.type.regexp", { fg = s.syn.special })
  hl("@lsp.type.unresolvedReference", { fg = s.diag.warning })

  -- Modifiers
  hl("@lsp.mod.deprecated", { strikethrough = true })
  hl("@lsp.mod.readonly", { fg = s.syn.constant })
  hl("@lsp.mod.async", { fg = s.syn.keyword })
end

return M
