local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

M.apply = function(theme, config)
  local s = theme.semantic
  ---@diagnostic disable-next-line: unused-local
  local p = theme.palette
  ---@diagnostic disable-next-line: unused-local
  local c = theme.colors
  local styles = config.styles

  -- ============================================================================
  -- EDITOR UI (Expanded for full coverage)
  -- ============================================================================

  hl("Normal", { fg = s.ui.fg, bg = s.ui.bg, ctermfg = 15, ctermbg = 0 })
  hl("NormalFloat", { fg = s.ui.fg, bg = s.ui.float })
  hl("NormalNC", { fg = s.ui.fg_dim, bg = s.ui.bg })
  hl("FloatTitle", { fg = s.ui.fg, bg = s.ui.float, bold = true })
  hl("FloatShadow", { bg = s.ui.bg_dim })

  -- Cursor & Columns
  hl("Cursor", { fg = s.ui.bg, bg = s.ui.fg })
  hl("lCursor", { fg = s.ui.bg, bg = s.ui.fg })
  hl("CursorIM", { fg = s.ui.bg, bg = s.ui.fg })
  hl("CursorLine", { bg = s.ui.cursorline })
  hl("CursorColumn", { bg = s.ui.cursorline })
  hl("ColorColumn", { bg = s.ui.bg_dim })

  -- Line numbers & Signs
  hl("LineNr", { fg = s.ui.line_nr })
  hl("LineNrAbove", { fg = s.ui.line_nr_dim })
  hl("LineNrBelow", { fg = s.ui.line_nr_dim })
  hl("CursorLineNr", { fg = s.ui.line_nr_active, bold = true })
  hl("SignColumn", { fg = s.ui.line_nr, bg = s.ui.bg })
  hl("CursorLineSign", { fg = s.ui.line_nr_active })
  hl("CursorLineFold", { fg = s.ui.line_nr_active })

  -- Selection & Matches
  hl("Visual", { bg = s.ui.selection })
  hl("VisualNOS", { bg = s.ui.selection })
  hl("MatchParen", { fg = s.syn.special, bg = s.ui.bg_highlight, bold = true })

  -- Search
  hl("Search", { fg = s.ui.bg, bg = s.syn.type })
  hl("CurSearch", { fg = s.ui.bg, bg = s.syn.number })
  hl("IncSearch", { fg = s.ui.bg, bg = s.syn.number })
  hl("Substitute", { fg = s.ui.bg, bg = s.syn.type })

  -- Splits & Borders
  hl("VertSplit", { fg = s.ui.border })
  hl("WinSeparator", { fg = s.ui.border })
  hl("FloatBorder", { fg = s.ui.border, bg = s.ui.float })
  hl("WinBar", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("WinBarNC", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })

  -- Statusline & Modes
  hl("StatusLine", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
  hl("StatusLineNC", { fg = s.ui.line_nr, bg = s.ui.bg_dim })
  hl("ModeMsg", { fg = s.ui.fg })
  hl("MsgArea", { fg = s.ui.fg_dim })
  hl("MsgSeparator", { fg = s.ui.border })
  hl("MoreMsg", { fg = s.syn.type })
  hl("Question", { fg = s.syn.type })

  -- Tabline
  hl("TabLine", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
  hl("TabLineFill", { bg = s.ui.bg_dim })
  hl("TabLineSel", { fg = s.ui.line_nr_active, bg = s.ui.bg_highlight })

  -- Popups & Completion
  hl("Pmenu", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("PmenuSel", { fg = s.ui.bg, bg = s.ui.line_nr_active })
  hl("PmenuSbar", { bg = s.ui.bg_highlight })
  hl("PmenuThumb", { bg = s.ui.fg_dim })
  hl("PmenuKind", { fg = s.syn.type })
  hl("PmenuExtra", { fg = s.syn.comment })
  hl("WildMenu", { fg = s.ui.bg, bg = s.ui.line_nr_active })

  -- Folds
  hl("Folded", { fg = s.syn.comment, bg = s.ui.bg_dim })
  hl("FoldColumn", { fg = s.ui.line_nr })

  -- Misc UI
  hl("NonText", { fg = s.ui.nontext or s.ui.bg_highlight })
  hl("SpecialKey", { fg = s.ui.nontext or s.ui.bg_highlight })
  hl("EndOfBuffer", { fg = s.ui.bg })
  hl("Directory", { fg = s.syn.type })
  hl("ErrorMsg", { fg = s.diag.error })
  hl("WarningMsg", { fg = s.diag.warning })
  hl("Title", { fg = s.syn.keyword, bold = true })
  hl("Conceal", { fg = s.syn.comment })
  hl("SpellBad", { sp = s.diag.error, undercurl = true })
  hl("SpellCap", { sp = s.diag.warning, undercurl = true })
  hl("SpellRare", { sp = s.diag.info, undercurl = true })
  hl("SpellLocal", { sp = s.diag.hint, undercurl = true })

  -- ============================================================================
  -- SYNTAX HIGHLIGHTING (Mostly unchanged, added a few)
  -- ============================================================================

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

  -- ============================================================================
  -- DIAGNOSTICS (Expanded with virtual text/lines)
  -- ============================================================================

  hl("DiagnosticError", { fg = s.diag.error })
  hl("DiagnosticWarn", { fg = s.diag.warning })
  hl("DiagnosticInfo", { fg = s.diag.info })
  hl("DiagnosticHint", { fg = s.diag.hint })
  hl("DiagnosticOk", { fg = s.syn.type })

  hl("DiagnosticUnderlineError", { sp = s.diag.error, undercurl = true })
  hl("DiagnosticUnderlineWarn", { sp = s.diag.warning, undercurl = true })
  hl("DiagnosticUnderlineInfo", { sp = s.diag.info, undercurl = true })
  hl("DiagnosticUnderlineHint", { sp = s.diag.hint, undercurl = true })
  hl("DiagnosticUnderlineOk", { sp = s.syn.type, undercurl = true })

  hl("DiagnosticVirtualTextError", { fg = s.diag.error, bg = s.ui.bg_dim })
  hl("DiagnosticVirtualTextWarn", { fg = s.diag.warning, bg = s.ui.bg_dim })
  hl("DiagnosticVirtualTextInfo", { fg = s.diag.info, bg = s.ui.bg_dim })
  hl("DiagnosticVirtualTextHint", { fg = s.diag.hint, bg = s.ui.bg_dim })
  hl("DiagnosticVirtualTextOk", { fg = s.syn.type, bg = s.ui.bg_dim })

  hl("DiagnosticSignError", { fg = s.diag.error })
  hl("DiagnosticSignWarn", { fg = s.diag.warning })
  hl("DiagnosticSignInfo", { fg = s.diag.info })
  hl("DiagnosticSignHint", { fg = s.diag.hint })
  hl("DiagnosticSignOk", { fg = s.syn.type })

  -- ============================================================================
  -- GIT & DIFF (Unchanged, but added more GitSigns)
  -- ============================================================================

  hl("DiffAdd", { fg = s.diff.add, bg = s.ui.bg })
  hl("DiffChange", { fg = s.diff.change, bg = s.ui.bg })
  hl("DiffDelete", { fg = s.diff.delete, bg = s.ui.bg })
  hl("DiffText", { fg = s.diff.text, bg = s.ui.bg_dim })

  hl("GitSignsAdd", { fg = s.git.add })
  hl("GitSignsChange", { fg = s.git.change })
  hl("GitSignsDelete", { fg = s.git.delete })
  hl("GitSignsAddInline", { fg = s.git.add, reverse = true })
  hl("GitSignsChangeInline", { fg = s.git.change, reverse = true })
  hl("GitSignsDeleteInline", { fg = s.git.delete, reverse = true })

  -- ============================================================================
  -- TREESITTER
  -- ============================================================================

  hl("@variable", vim.tbl_extend("force", { fg = s.syn.variable }, styles.variables))
  hl("@variable.builtin", { fg = s.syn.constant })
  hl("@variable.parameter", { fg = s.syn.variable })
  hl("@variable.member", { fg = s.syn.variable })
  hl("@field", { fg = s.syn.variable })
  hl("@property", { fg = s.syn.variable })

  hl("@function", { link = "Function" })
  hl("@function.call", { fg = s.syn.func })
  hl("@function.builtin", { fg = s.syn.func })
  hl("@function.macro", { fg = s.syn.special })
  hl("@method", { fg = s.syn.func })
  hl("@method.call", { fg = s.syn.func })
  hl("@constructor", { fg = s.syn.type })

  hl("@keyword", { link = "Keyword" })
  hl("@keyword.return", { fg = s.syn.keyword })
  hl("@keyword.function", { fg = s.syn.keyword })
  hl("@keyword.operator", { fg = s.syn.operator })
  hl("@keyword.coroutine", { fg = s.syn.keyword })
  hl("@keyword.conditional", { fg = s.syn.keyword })
  hl("@keyword.repeat", { fg = s.syn.keyword })

  hl("@string", { link = "String" })
  hl("@string.escape", { fg = s.syn.special })
  hl("@string.special", { fg = s.syn.special })
  hl("@number", { link = "Number" })
  hl("@boolean", { link = "Boolean" })
  hl("@type", { link = "Type" })
  hl("@type.builtin", { fg = s.syn.type })
  hl("@type.definition", { fg = s.syn.type })
  hl("@type.qualifier", { fg = s.syn.keyword })
  hl("@operator", { link = "Operator" })
  hl("@comment", { link = "Comment" })
  hl("@comment.documentation", { fg = s.syn.comment })

  hl("@constant", { fg = s.syn.constant })
  hl("@constant.builtin", { fg = s.syn.constant })
  hl("@constant.macro", { fg = s.syn.special })

  hl("@punctuation.delimiter", { fg = s.syn.operator })
  hl("@punctuation.bracket", { fg = s.syn.operator })
  hl("@punctuation.special", { fg = s.syn.special })
  hl("@attribute", { fg = s.syn.type })
  hl("@error", { fg = s.diag.error })
  hl("@todo", { fg = s.syn.special })
  hl("@none", { fg = "NONE" })

  -- ============================================================================
  -- LSP SEMANTIC TOKENS
  -- ============================================================================

  hl("@lsp.type.function", { link = "@function" })
  hl("@lsp.type.method", { link = "@function" })
  hl("@lsp.type.variable", { link = "@variable" })
  hl("@lsp.type.parameter", { link = "@variable.parameter" })
  hl("@lsp.type.type", { link = "@type" })
  hl("@lsp.type.keyword", { link = "@keyword" })
  hl("@lsp.type.class", { fg = s.syn.type })
  hl("@lsp.type.interface", { fg = s.syn.type })
  hl("@lsp.type.struct", { fg = s.syn.type })
  hl("@lsp.type.enum", { fg = s.syn.type })
  hl("@lsp.type.enumMember", { fg = s.syn.constant })
  hl("@lsp.type.property", { fg = s.syn.variable })
  hl("@lsp.type.namespace", { fg = s.syn.type })
  hl("@lsp.type.macro", { fg = s.syn.special })
  hl("@lsp.type.decorator", { fg = s.syn.func })
  hl("@lsp.type.comment", { link = "@comment" })
  hl("@lsp.type.builtinType", { fg = s.syn.type })
  hl("@lsp.type.selfParameter", { fg = s.syn.variable })
  hl("@lsp.type.typeParameter", { fg = s.syn.type })
  hl("@lsp.type.unresolvedReference", { fg = s.diag.warning })
  hl("@lsp.type.operator", { link = "@operator" })
  hl("@lsp.type.string", { link = "@string" })
  hl("@lsp.type.number", { link = "@number" })
  hl("@lsp.type.boolean", { link = "@boolean" })
  hl("@lsp.type.array", { fg = s.syn.type })
  hl("@lsp.type.object", { fg = s.syn.type })
  hl("@lsp.type.key", { fg = s.syn.variable })
  hl("@lsp.type.null", { fg = s.syn.constant })
  hl("@lsp.type.enumConstant", { fg = s.syn.constant })
  hl("@lsp.type.event", { fg = s.syn.func })
  hl("@lsp.type.regexp", { fg = s.syn.special })
  hl("@lsp.mod.deprecated", { strikethrough = true })
  hl("@lsp.mod.readonly", { fg = s.syn.constant })
  hl("@lsp.mod.async", { fg = s.syn.keyword })

  -- ============================================================================
  -- COMMON PLUGINS (Conditional to avoid errors if not installed)
  -- ============================================================================

  -- Telescope
  if package.loaded["telescope"] then
    hl("TelescopeNormal", { fg = s.ui.fg, bg = s.ui.float })
    hl("TelescopeBorder", { fg = s.ui.border, bg = s.ui.float })
    hl("TelescopePromptNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
    hl("TelescopeResultsNormal", { fg = s.ui.fg_dim, bg = s.ui.float })
    hl("TelescopeSelection", { fg = s.ui.bg, bg = s.ui.line_nr_active })
    hl("TelescopePreviewNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
  end

  -- NvimTree
  if package.loaded["nvim-tree"] then
    hl("NvimTreeNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
    hl("NvimTreeFolderName", { fg = s.syn.type })
    hl("NvimTreeOpenedFolderName", { fg = s.syn.type, bold = true })
    hl("NvimTreeFileDirty", { fg = s.git.change })
    hl("NvimTreeGitNew", { fg = s.git.add })
    hl("NvimTreeGitDeleted", { fg = s.git.delete })
  end

  -- Lualine (basic, assumes default components)
  if package.loaded["lualine"] then
    hl("lualine_a_normal", { fg = s.ui.bg, bg = s.ui.line_nr_active })
    hl("lualine_b_normal", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
    -- Add more sections as needed
  end

  -- nvim-cmp (completion menu)
  if package.loaded["cmp"] then
    hl("CmpItemAbbr", { fg = s.ui.fg })
    hl("CmpItemAbbrDeprecated", { fg = s.syn.comment, strikethrough = true })
    hl("CmpItemAbbrMatch", { fg = s.syn.keyword, bold = true })
    hl("CmpItemAbbrMatchFuzzy", { fg = s.syn.keyword })
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
    hl("CmpItemMenu", { fg = s.syn.comment })
    hl("CmpItemKindDefault", { fg = s.ui.fg_dim })
  end

  -- nvim-dap (debugging)
  if package.loaded["dap"] then
    hl("DapBreakpoint", { fg = s.diag.error })
    hl("DapBreakpointCondition", { fg = s.diag.warn })
    hl("DapBreakpointRejected", { fg = s.diag.hint })
    hl("DapLogPoint", { fg = s.syn.special })
    hl("DapStopped", { bg = s.ui.bg_highlight })
    -- For dap-ui if installed
    if package.loaded["dapui"] then
      hl("DapUIVariable", { fg = s.syn.variable })
      hl("DapUIValue", { fg = s.syn.constant })
      hl("DapUIFrameName", { fg = s.syn.func })
      hl("DapUIThread", { fg = s.syn.keyword })
      hl("DapUIWatchesEmpty", { fg = s.syn.comment })
      hl("DapUIWatchesValue", { fg = s.syn.string })
      hl("DapUIWatchesError", { fg = s.diag.error })
    end
  end

  -- mini.nvim (various modules; add more as needed)
  if package.loaded["mini"] then
    -- mini.diff
    hl("MiniDiffSignAdd", { fg = s.git.add })
    hl("MiniDiffSignChange", { fg = s.git.change })
    hl("MiniDiffSignDelete", { fg = s.git.delete })
    hl("MiniDiffOverAdd", { bg = s.git.add, blend = 20 })
    hl("MiniDiffOverChange", { bg = s.git.change, blend = 20 })
    hl("MiniDiffOverDelete", { bg = s.git.delete, blend = 20 })
    -- mini.hipatterns
    hl("MiniHipatternsFixme", { fg = s.diag.error, bold = true })
    hl("MiniHipatternsHack", { fg = s.diag.warn, bold = true })
    hl("MiniHipatternsTodo", { fg = s.syn.special, bold = true })
    hl("MiniHipatternsNote", { fg = s.diag.info, bold = true })
    -- mini.tabline / mini.statusline (if using)
    hl("MiniTablineCurrent", { fg = s.ui.line_nr_active, bg = s.ui.bg_highlight })
    hl("MiniTablineVisible", { fg = s.ui.fg, bg = s.ui.bg_dim })
    hl("MiniTablineHidden", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
    hl("MiniTablineModifiedCurrent", { fg = s.git.change, bg = s.ui.bg_highlight })
    hl("MiniStatuslineModeNormal", { fg = s.ui.bg, bg = s.syn.type })
    hl("MiniStatuslineModeInsert", { fg = s.ui.bg, bg = s.diag.info })
  end

  -- indent-blankline.nvim (indent guides)
  if package.loaded["ibl"] then
    hl("IblIndent", { fg = s.ui.line_nr_dim })
    hl("IblWhitespace", { fg = s.ui.nontext })
    hl("IblScope", { fg = s.ui.line_nr_active })
  end

  -- which-key.nvim (keybinding popup)
  if package.loaded["which-key"] then
    hl("WhichKey", { fg = s.syn.func })
    hl("WhichKeyGroup", { fg = s.syn.keyword })
    hl("WhichKeyDesc", { fg = s.syn.variable })
    hl("WhichKeySeparator", { fg = s.syn.operator })
    hl("WhichKeyFloat", { bg = s.ui.float })
    hl("WhichKeyValue", { fg = s.syn.constant })
  end

  -- flash.nvim (enhanced motions)
  if package.loaded["flash"] then
    hl("FlashBackdrop", { fg = s.syn.comment })
    hl("FlashMatch", { fg = s.ui.fg, bg = s.ui.bg_highlight })
    hl("FlashCurrent", { fg = s.ui.bg, bg = s.syn.type })
    hl("FlashLabel", { fg = s.ui.bg, bg = s.syn.number, bold = true })
    hl("FlashPrompt", { fg = s.ui.fg, bg = s.ui.bg_dim })
  end

  -- oil.nvim (file explorer)
  if package.loaded["oil"] then
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
    hl("OilTrashSource", { fg = s.diag.warn })
  end

  -- fidget.nvim (LSP progress)
  if package.loaded["fidget"] then
    hl("FidgetTitle", { fg = s.syn.keyword, bold = true })
    hl("FidgetTask", { fg = s.diag.warning })
    hl("FidgetDone", { fg = s.syn.constant })
    hl("FidgetIcon", { fg = s.diag.hint })
    hl("FidgetGroupSeparator", { fg = s.syn.comment })
    hl("FidgetWindow", { fg = s.ui.fg_dim, bg = s.ui.float })
  end

  -- Apply user highlight overrides
  for group, opts in pairs(config.overrides.highlights) do
    hl(group, opts)
  end
end

return M
