local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

M.apply = function(theme, config)
  local s = theme.semantic -- Semantic colors
  local p = theme.palette -- Rich palette (if available)
  local c = theme.colors -- Base16 colors (fallback)
  local styles = config.styles

  -- ============================================================================
  -- EDITOR UI
  -- ============================================================================

  hl("Normal", { fg = s.ui.fg, bg = s.ui.bg })
  hl("NormalFloat", { fg = s.ui.fg, bg = s.ui.float })
  hl("NormalNC", { fg = s.ui.fg_dim, bg = s.ui.bg })

  -- Cursor
  hl("Cursor", { fg = s.ui.bg, bg = s.ui.fg })
  hl("CursorLine", { bg = s.ui.cursorline })
  hl("CursorColumn", { bg = s.ui.cursorline })
  hl("ColorColumn", { bg = s.ui.bg_dim })

  -- Line numbers
  hl("LineNr", { fg = s.ui.line_nr })
  hl("CursorLineNr", { fg = s.ui.line_nr_active, bold = true })
  hl("SignColumn", { fg = s.ui.line_nr, bg = s.ui.bg })

  -- Selection
  hl("Visual", { bg = s.ui.selection })
  hl("VisualNOS", { bg = s.ui.selection })

  -- Search
  hl("Search", { fg = s.ui.bg, bg = s.syn.type })
  hl("IncSearch", { fg = s.ui.bg, bg = s.syn.number })
  hl("Substitute", { fg = s.ui.bg, bg = s.syn.type })

  -- Splits & Borders
  hl("VertSplit", { fg = s.ui.border })
  hl("WinSeparator", { fg = s.ui.border })
  hl("FloatBorder", { fg = s.ui.border, bg = s.ui.float })

  -- Statusline
  hl("StatusLine", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
  hl("StatusLineNC", { fg = s.ui.line_nr, bg = s.ui.bg_dim })

  -- Tabline
  hl("TabLine", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
  hl("TabLineFill", { bg = s.ui.bg_dim })
  hl("TabLineSel", { fg = s.ui.line_nr_active, bg = s.ui.bg_highlight })

  -- Popups & Completion
  hl("Pmenu", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("PmenuSel", { fg = s.ui.bg, bg = s.ui.line_nr_active })
  hl("PmenuSbar", { bg = s.ui.bg_highlight })
  hl("PmenuThumb", { bg = s.ui.fg_dim })

  -- ============================================================================
  -- SYNTAX HIGHLIGHTING
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

  -- ============================================================================
  -- DIAGNOSTICS
  -- ============================================================================

  hl("DiagnosticError", { fg = s.diag.error })
  hl("DiagnosticWarn", { fg = s.diag.warning })
  hl("DiagnosticInfo", { fg = s.diag.info })
  hl("DiagnosticHint", { fg = s.diag.hint })

  hl("DiagnosticUnderlineError", { sp = s.diag.error, undercurl = true })
  hl("DiagnosticUnderlineWarn", { sp = s.diag.warning, undercurl = true })
  hl("DiagnosticUnderlineInfo", { sp = s.diag.info, undercurl = true })
  hl("DiagnosticUnderlineHint", { sp = s.diag.hint, undercurl = true })

  -- ============================================================================
  -- GIT & DIFF
  -- ============================================================================

  hl("DiffAdd", { fg = s.diff.add, bg = s.ui.bg })
  hl("DiffChange", { fg = s.diff.change, bg = s.ui.bg })
  hl("DiffDelete", { fg = s.diff.delete, bg = s.ui.bg })
  hl("DiffText", { fg = s.diff.text, bg = s.ui.bg_dim })

  hl("GitSignsAdd", { fg = s.git.add })
  hl("GitSignsChange", { fg = s.git.change })
  hl("GitSignsDelete", { fg = s.git.delete })

  -- ============================================================================
  -- TREESITTER
  -- ============================================================================

  hl("@variable", vim.tbl_extend("force", { fg = s.syn.variable }, styles.variables))
  hl("@variable.builtin", { fg = s.syn.constant })
  hl("@variable.parameter", { fg = s.syn.variable })
  hl("@variable.member", { fg = s.syn.variable })

  hl("@function", { link = "Function" })
  hl("@function.call", { fg = s.syn.func })
  hl("@function.builtin", { fg = s.syn.func })
  hl("@function.macro", { fg = s.syn.special })

  hl("@keyword", { link = "Keyword" })
  hl("@keyword.return", { fg = s.syn.keyword })
  hl("@keyword.function", { fg = s.syn.keyword })
  hl("@keyword.operator", { fg = s.syn.operator })

  hl("@string", { link = "String" })
  hl("@number", { link = "Number" })
  hl("@boolean", { link = "Boolean" })
  hl("@type", { link = "Type" })
  hl("@operator", { link = "Operator" })
  hl("@comment", { link = "Comment" })

  hl("@constant", { fg = s.syn.constant })
  hl("@constant.builtin", { fg = s.syn.constant })

  hl("@punctuation.delimiter", { fg = s.syn.operator })
  hl("@punctuation.bracket", { fg = s.syn.operator })

  -- ============================================================================
  -- LSP SEMANTIC TOKENS
  -- ============================================================================

  hl("@lsp.type.function", { link = "@function" })
  hl("@lsp.type.method", { link = "@function" })
  hl("@lsp.type.variable", { link = "@variable" })
  hl("@lsp.type.parameter", { link = "@variable.parameter" })
  hl("@lsp.type.type", { link = "@type" })
  hl("@lsp.type.keyword", { link = "@keyword" })

  -- Apply user highlight overrides
  for group, opts in pairs(config.overrides.highlights) do
    hl(group, opts)
  end
end

-- Apply terminal colors
M.apply_terminal = function(theme)
  local c = theme.colors
  vim.g.terminal_color_0 = c.base00
  vim.g.terminal_color_1 = c.base08
  vim.g.terminal_color_2 = c.base0B
  vim.g.terminal_color_3 = c.base0A
  vim.g.terminal_color_4 = c.base0D
  vim.g.terminal_color_5 = c.base0E
  vim.g.terminal_color_6 = c.base0C
  vim.g.terminal_color_7 = c.base05
  vim.g.terminal_color_8 = c.base03
  vim.g.terminal_color_9 = c.base08
  vim.g.terminal_color_10 = c.base0B
  vim.g.terminal_color_11 = c.base0A
  vim.g.terminal_color_12 = c.base0D
  vim.g.terminal_color_13 = c.base0E
  vim.g.terminal_color_14 = c.base0C
  vim.g.terminal_color_15 = c.base07
  vim.g.terminal_color_background = c.base00
  vim.g.terminal_color_foreground = c.base05
end

return M
