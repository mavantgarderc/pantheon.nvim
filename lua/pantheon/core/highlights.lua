local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

M.apply = function(theme, config)
  local s = theme.semantic -- Semantic colors
  local p = theme.palette -- Rich palette (if available)
  local c = theme.colors -- Base16 colors (fallback)
  local styles = config.styles

  -- ============================================================================
  -- EDITOR UI (Expanded for full coverage)
  -- ============================================================================

  hl("Normal", { fg = s.ui.fg, bg = s.ui.bg, ctermfg = 15, ctermbg = 0 })  -- Added cterm
  hl("NormalFloat", { fg = s.ui.fg, bg = s.ui.float })
  hl("NormalNC", { fg = s.ui.fg_dim, bg = s.ui.bg })
  hl("FloatTitle", { fg = s.ui.fg, bg = s.ui.float, bold = true })  -- New: Float titles
  hl("FloatShadow", { bg = s.ui.bg_dim })  -- New: Shadows for floats

  -- Cursor & Columns
  hl("Cursor", { fg = s.ui.bg, bg = s.ui.fg })
  hl("lCursor", { fg = s.ui.bg, bg = s.ui.fg })  -- New: Language cursor
  hl("CursorIM", { fg = s.ui.bg, bg = s.ui.fg })  -- New: IME cursor
  hl("CursorLine", { bg = s.ui.cursorline })
  hl("CursorColumn", { bg = s.ui.cursorline })
  hl("ColorColumn", { bg = s.ui.bg_dim })

  -- Line numbers & Signs
  hl("LineNr", { fg = s.ui.line_nr })
  hl("LineNrAbove", { fg = s.ui.line_nr_dim })  -- New: Above current
  hl("LineNrBelow", { fg = s.ui.line_nr_dim })  -- New: Below current
  hl("CursorLineNr", { fg = s.ui.line_nr_active, bold = true })
  hl("SignColumn", { fg = s.ui.line_nr, bg = s.ui.bg })
  hl("CursorLineSign", { fg = s.ui.line_nr_active })  -- New: Sign on cursor line
  hl("CursorLineFold", { fg = s.ui.line_nr_active })  -- New: Fold on cursor line

  -- Selection & Matches
  hl("Visual", { bg = s.ui.selection })
  hl("VisualNOS", { bg = s.ui.selection })
  hl("MatchParen", { fg = s.syn.special, bg = s.ui.bg_highlight, bold = true })  -- New: Matching parens

  -- Search
  hl("Search", { fg = s.ui.bg, bg = s.syn.type })
  hl("CurSearch", { fg = s.ui.bg, bg = s.syn.number })  -- New: Current search
  hl("IncSearch", { fg = s.ui.bg, bg = s.syn.number })
  hl("Substitute", { fg = s.ui.bg, bg = s.syn.type })

  -- Splits & Borders
  hl("VertSplit", { fg = s.ui.border })
  hl("WinSeparator", { fg = s.ui.border })
  hl("FloatBorder", { fg = s.ui.border, bg = s.ui.float })
  hl("WinBar", { fg = s.ui.fg, bg = s.ui.bg_dim })  -- New: Window bar
  hl("WinBarNC", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })  -- New: Inactive winbar

  -- Statusline & Modes
  hl("StatusLine", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
  hl("StatusLineNC", { fg = s.ui.line_nr, bg = s.ui.bg_dim })
  hl("ModeMsg", { fg = s.ui.fg })  -- New: -- INSERT -- etc.
  hl("MsgArea", { fg = s.ui.fg_dim })  -- New: Command line msg area
  hl("MsgSeparator", { fg = s.ui.border })  -- New: Msg separator
  hl("MoreMsg", { fg = s.syn.type })  -- New: More prompts
  hl("Question", { fg = s.syn.type })  -- New: Questions

  -- Tabline
  hl("TabLine", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
  hl("TabLineFill", { bg = s.ui.bg_dim })
  hl("TabLineSel", { fg = s.ui.line_nr_active, bg = s.ui.bg_highlight })

  -- Popups & Completion
  hl("Pmenu", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("PmenuSel", { fg = s.ui.bg, bg = s.ui.line_nr_active })
  hl("PmenuSbar", { bg = s.ui.bg_highlight })
  hl("PmenuThumb", { bg = s.ui.fg_dim })
  hl("PmenuKind", { fg = s.syn.type })  -- New: Kind icons in cmp
  hl("PmenuExtra", { fg = s.syn.comment })  -- New: Extra text in cmp
  hl("WildMenu", { fg = s.ui.bg, bg = s.ui.line_nr_active })  -- New: Cmdline completion

  -- Folds
  hl("Folded", { fg = s.syn.comment, bg = s.ui.bg_dim })  -- New: Folded text
  hl("FoldColumn", { fg = s.ui.line_nr })  -- New: Fold column

  -- Misc UI
  hl("NonText", { fg = s.ui.nontext or s.ui.bg_highlight })  -- New: ~ and @ at eol
  hl("SpecialKey", { fg = s.ui.nontext or s.ui.bg_highlight })  -- New: Unprintable chars
  hl("EndOfBuffer", { fg = s.ui.bg })  -- New: Filler lines
  hl("Directory", { fg = s.syn.type })  -- New: Netrw dirs
  hl("ErrorMsg", { fg = s.diag.error })  -- New: Error messages
  hl("WarningMsg", { fg = s.diag.warning })  -- New: Warnings
  hl("Title", { fg = s.syn.keyword, bold = true })  -- New: Titles
  hl("Conceal", { fg = s.syn.comment })  -- New: Concealed text
  hl("SpellBad", { sp = s.diag.error, undercurl = true })  -- New: Spelling
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
  hl("Underlined", { underline = true })  -- New: Underlined text
  hl("Ignore", { fg = s.ui.bg })  -- New: Ignored
  hl("Error", { fg = s.diag.error })  -- New: Errors
  hl("Todo", { fg = s.syn.special, bold = true })  -- New: TODOs

  -- ============================================================================
  -- DIAGNOSTICS (Expanded with virtual text/lines)
  -- ============================================================================

  hl("DiagnosticError", { fg = s.diag.error })
  hl("DiagnosticWarn", { fg = s.diag.warning })
  hl("DiagnosticInfo", { fg = s.diag.info })
  hl("DiagnosticHint", { fg = s.diag.hint })
  hl("DiagnosticOk", { fg = s.syn.type })  -- New: OK diagnostics

  hl("DiagnosticUnderlineError", { sp = s.diag.error, undercurl = true })
  hl("DiagnosticUnderlineWarn", { sp = s.diag.warning, undercurl = true })
  hl("DiagnosticUnderlineInfo", { sp = s.diag.info, undercurl = true })
  hl("DiagnosticUnderlineHint", { sp = s.diag.hint, undercurl = true })
  hl("DiagnosticUnderlineOk", { sp = s.syn.type, undercurl = true })  -- New

  hl("DiagnosticVirtualTextError", { fg = s.diag.error, bg = s.ui.bg_dim })  -- New: Inline virtual text
  hl("DiagnosticVirtualTextWarn", { fg = s.diag.warning, bg = s.ui.bg_dim })
  hl("DiagnosticVirtualTextInfo", { fg = s.diag.info, bg = s.ui.bg_dim })
  hl("DiagnosticVirtualTextHint", { fg = s.diag.hint, bg = s.ui.bg_dim })
  hl("DiagnosticVirtualTextOk", { fg = s.syn.type, bg = s.ui.bg_dim })

  hl("DiagnosticSignError", { fg = s.diag.error })  -- New: Signs
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
  hl("GitSignsAddInline", { fg = s.git.add, reverse = true })  -- New: Inline
  hl("GitSignsChangeInline", { fg = s.git.change, reverse = true })
  hl("GitSignsDeleteInline", { fg = s.git.delete, reverse = true })

  -- ============================================================================
  -- TREESITTER (Expanded with more groups)
  -- ============================================================================

  hl("@variable", vim.tbl_extend("force", { fg = s.syn.variable }, styles.variables))
  hl("@variable.builtin", { fg = s.syn.constant })
  hl("@variable.parameter", { fg = s.syn.variable })
  hl("@variable.member", { fg = s.syn.variable })
  hl("@field", { fg = s.syn.variable })  -- New: Fields
  hl("@property", { fg = s.syn.variable })  -- New: Properties

  hl("@function", { link = "Function" })
  hl("@function.call", { fg = s.syn.func })
  hl("@function.builtin", { fg = s.syn.func })
  hl("@function.macro", { fg = s.syn.special })
  hl("@method", { fg = s.syn.func })  -- New: Methods
  hl("@method.call", { fg = s.syn.func })  -- New: Method calls
  hl("@constructor", { fg = s.syn.type })  -- New: Constructors

  hl("@keyword", { link = "Keyword" })
  hl("@keyword.return", { fg = s.syn.keyword })
  hl("@keyword.function", { fg = s.syn.keyword })
  hl("@keyword.operator", { fg = s.syn.operator })
  hl("@keyword.coroutine", { fg = s.syn.keyword })  -- New: Async/await
  hl("@keyword.conditional", { fg = s.syn.keyword })  -- New: If/else
  hl("@keyword.repeat", { fg = s.syn.keyword })  -- New: Loops

  hl("@string", { link = "String" })
  hl("@string.escape", { fg = s.syn.special })  -- New: Escapes
  hl("@string.special", { fg = s.syn.special })  -- New: Special strings
  hl("@number", { link = "Number" })
  hl("@boolean", { link = "Boolean" })
  hl("@type", { link = "Type" })
  hl("@type.builtin", { fg = s.syn.type })  -- New: Built-in types
  hl("@type.definition", { fg = s.syn.type })  -- New: Type defs
  hl("@type.qualifier", { fg = s.syn.keyword })  -- New: Qualifiers
  hl("@operator", { link = "Operator" })
  hl("@comment", { link = "Comment" })
  hl("@comment.documentation", { fg = s.syn.comment })  -- New: Docs

  hl("@constant", { fg = s.syn.constant })
  hl("@constant.builtin", { fg = s.syn.constant })
  hl("@constant.macro", { fg = s.syn.special })  -- New: Macro consts

  hl("@punctuation.delimiter", { fg = s.syn.operator })
  hl("@punctuation.bracket", { fg = s.syn.operator })
  hl("@punctuation.special", { fg = s.syn.special })  -- New: Special punct
  hl("@attribute", { fg = s.syn.type })  -- New: Attributes/annotations
  hl("@error", { fg = s.diag.error })  -- New: Syntax errors
  hl("@todo", { fg = s.syn.special })  -- New: TODO in comments
  hl("@none", { fg = "NONE" })  -- New: No highlight

  -- ============================================================================
  -- LSP SEMANTIC TOKENS (Expanded)
  -- ============================================================================

  hl("@lsp.type.function", { link = "@function" })
  hl("@lsp.type.method", { link = "@function" })
  hl("@lsp.type.variable", { link = "@variable" })
  hl("@lsp.type.parameter", { link = "@variable.parameter" })
  hl("@lsp.type.type", { link = "@type" })
  hl("@lsp.type.keyword", { link = "@keyword" })
  hl("@lsp.type.class", { fg = s.syn.type })  -- New: Classes
  hl("@lsp.type.interface", { fg = s.syn.type })  -- New: Interfaces
  hl("@lsp.type.struct", { fg = s.syn.type })  -- New: Structs
  hl("@lsp.type.enum", { fg = s.syn.type })  -- New: Enums
  hl("@lsp.type.enumMember", { fg = s.syn.constant })  -- New: Enum members
  hl("@lsp.type.property", { fg = s.syn.variable })  -- New: Properties
  hl("@lsp.type.namespace", { fg = s.syn.type })  -- New: Namespaces/modules
  hl("@lsp.type.macro", { fg = s.syn.special })  -- New: Macros
  hl("@lsp.type.decorator", { fg = s.syn.func })  -- New: Decorators
  hl("@lsp.type.comment", { link = "@comment" })  -- New: Comments
  hl("@lsp.mod.deprecated", { strikethrough = true })  -- New: Deprecated
  hl("@lsp.mod.readonly", { fg = s.syn.constant })  -- New: Readonly
  hl("@lsp.mod.async", { fg = s.syn.keyword })  -- New: Async

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

  -- Apply user highlight overrides
  for group, opts in pairs(config.overrides.highlights) do
    hl(group, opts)
  end
end

return M
