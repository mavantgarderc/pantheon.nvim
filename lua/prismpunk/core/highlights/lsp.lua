local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("@lsp.type.function", { link = "@function" })
  hl("@lsp.type.method", { link = "@function" })
  hl("@lsp.type.variable", { link = "@variable" })
  hl("@lsp.type.parameter", { link = "@variable.parameter" })
  hl("@lsp.type.type", { link = "@type" })
  hl("@lsp.type.keyword", { link = "@keyword" })
  hl("@lsp.type.number", { link = "@number" })
  hl("@lsp.type.string", { link = "@string" })
  hl("@lsp.type.operator", { link = "@operator" })

  hl("@lsp.type.class", { fg = s.syn.type })
  hl("@lsp.type.interface", { fg = s.syn.type })
  hl("@lsp.type.struct", { fg = s.syn.type })
  hl("@lsp.type.enum", { fg = s.syn.type })
  hl("@lsp.type.enumMember", { fg = s.syn.constant })
  hl("@lsp.type.namespace", { fg = s.syn.type })
  hl("@lsp.type.typeParameter", { fg = s.syn.type })
  hl("@lsp.type.modifier", { fg = s.syn.keyword })

  hl("@lsp.type.property", { fg = s.syn.variable })
  hl("@lsp.type.object", { fg = s.syn.type })
  hl("@lsp.type.array", { fg = s.syn.type })
  hl("@lsp.type.key", { fg = s.syn.variable })

  hl("@lsp.type.macro", { fg = s.syn.special })
  hl("@lsp.type.decorator", { fg = s.syn.func })
  hl("@lsp.type.event", { fg = s.syn.func })
  hl("@lsp.type.regexp", { fg = s.syn.special })
  hl("@lsp.type.boolean", { link = "@boolean" })
  hl("@lsp.type.null", { fg = s.syn.constant })
  hl("@lsp.type.comment", { link = "@comment" })

  hl("@lsp.type.builtinType", { fg = s.syn.type })
  hl("@lsp.type.selfParameter", { fg = s.syn.variable })
  hl("@lsp.type.enumConstant", { fg = s.syn.constant })
  hl("@lsp.type.unresolvedReference", { fg = s.diag.warning })
  hl("@lsp.type.package", { fg = s.syn.type })
  hl("@lsp.type.typeAlias", { fg = s.syn.type })
  hl("@lsp.type.label", { fg = s.syn.special })

  hl("@lsp.mod.abstract", { italic = true })
  hl("@lsp.mod.async", { fg = s.syn.keyword })
  hl("@lsp.mod.declaration", { underline = true })
  hl("@lsp.mod.definition", { bold = true })
  hl("@lsp.mod.deprecated", { strikethrough = true })
  hl("@lsp.mod.documentation", { fg = s.syn.comment })
  hl("@lsp.mod.modification", { underline = true })
  hl("@lsp.mod.readonly", { fg = s.syn.constant })
  hl("@lsp.mod.defaultLibrary", { fg = s.syn.constant })
  hl("@lsp.mod.static", { fg = s.syn.type })

  hl("LspReferenceText", { bg = s.ui.bg_highlight })
  hl("LspReferenceRead", { bg = s.ui.bg_highlight })
  hl("LspReferenceWrite", { bg = s.ui.bg_highlight, underline = true })
  hl("LspReferenceTarget", { fg = s.syn.keyword, bold = true })
  hl("LspInlayHint", { fg = s.syn.comment, bg = s.ui.bg_dim })
  hl("LspCodeLens", { fg = s.syn.comment })
  hl("LspCodeLensSeparator", { fg = s.ui.nontext or s.ui.bg_highlight })
  hl("LspInfoBorder", { fg = s.ui.border, bg = s.ui.bg_dim })
  hl("LspInfoTitle", { fg = s.syn.keyword, bold = true })
  hl("LspInlayHintType", { link = "LspInlayHint" })
  hl("LspInlayHintParameter", { link = "LspInlayHint" })
  hl("LspLens", { fg = s.syn.comment })
  hl("LspProgressFg", { fg = s.syn.type })

  hl("LspSignatureActiveParameter", { fg = s.syn.func, underline = true })

  hl("@lsp.type.field", { fg = s.syn.variable })
  hl("@lsp.type.value", { fg = s.syn.constant })
  hl("@lsp.type.unit", { fg = s.syn.number })
  hl("@lsp.type.expression", { fg = s.ui.fg })

  ---------------------------------------------------------------------------
  -- LEGACY LspDiagnostics* COMPATIBILITY
  ---------------------------------------------------------------------------
  hl("LspDiagnosticsDefaultError", { link = "DiagnosticError" })
  hl("LspDiagnosticsDefaultWarning", { link = "DiagnosticWarn" })
  hl("LspDiagnosticsDefaultInformation", { link = "DiagnosticInfo" })
  hl("LspDiagnosticsDefaultHint", { link = "DiagnosticHint" })
  hl("LspDiagnosticsVirtualTextError", { link = "DiagnosticVirtualTextError" })
  hl("LspDiagnosticsVirtualTextWarning", { link = "DiagnosticVirtualTextWarn" })
  hl("LspDiagnosticsVirtualTextInformation", { link = "DiagnosticVirtualTextInfo" })
  hl("LspDiagnosticsVirtualTextHint", { link = "DiagnosticVirtualTextHint" })
  hl("LspDiagnosticsUnderlineError", { link = "DiagnosticUnderlineError" })
  hl("LspDiagnosticsUnderlineWarning", { link = "DiagnosticUnderlineWarn" })
  hl("LspDiagnosticsUnderlineInformation", { link = "DiagnosticUnderlineInfo" })
  hl("LspDiagnosticsUnderlineHint", { link = "DiagnosticUnderlineHint" })
  hl("LspDiagnosticsSignError", { link = "DiagnosticSignError" })
  hl("LspDiagnosticsSignWarning", { link = "DiagnosticSignWarn" })
  hl("LspDiagnosticsSignInformation", { link = "DiagnosticSignInfo" })
  hl("LspDiagnosticsSignHint", { link = "DiagnosticSignHint" })
end

return M
