
-- lua/prismpunk/core/highlights.lua
-- Single apply function that maps theme (complex or simple) to actual nvim highlights.
local M = {}
local notify = vim.notify or print

local function hl(group, opts)
  opts = opts or {}
  -- remove nils to avoid invalid entries
  local sanitized = {}
  for k, v in pairs(opts) do
    if v ~= nil then sanitized[k] = v end
  end
  pcall(vim.api.nvim_set_hl, 0, group, sanitized)
end

-- helper for safe indexing
local function sget(tbl, key)
  if not tbl then return nil end
  return tbl[key]
end

---@param theme table
---@param config table
function M.apply(theme, config)
  config = config or {}
  local opts = config

  -- if theme exposes .get (module that builds final theme), assume loader already called it.
  if type(theme) == "table" and theme.get then
    local ok, got = pcall(theme.get, config, theme.palette)
    if ok then theme = got else notify("prismpunk: theme.get failed: " .. tostring(got), vim.log.levels.ERROR) end
  end

  local s
  local is_complex = false

  if type(theme) == "table" and theme.semantic then
    s = theme.semantic
  else
    s = {
      syn = theme and theme.syn or {},
      ui = theme and theme.ui or {},
      diag = theme and theme.diag or {},
      git = theme and (theme.vcs or theme.git) or {},
      diff = theme and theme.diff or {},
    }
    is_complex = true
  end

  local styles = config.styles or {}

  -- ============================================================================
  -- EDITOR UI
  -- ============================================================================

  hl("Normal", { fg = s.ui.fg, bg = s.ui.bg, ctermfg = 15, ctermbg = 0 })

  local normal_float_fg = s.ui.fg
  local normal_float_bg = s.ui.float
  if is_complex and type(s.ui.float) == "table" then
    normal_float_fg = s.ui.float.fg
    normal_float_bg = s.ui.float.bg
  end
  hl("NormalFloat", { fg = normal_float_fg, bg = normal_float_bg })
  hl("NormalNC", { fg = s.ui.fg_dim, bg = s.ui.bg })

  local float_title_fg = s.ui.fg
  local float_title_bg = s.ui.float
  if is_complex and type(s.ui.float) == "table" then
    float_title_fg = s.ui.float.fg
    float_title_bg = s.ui.float.bg
  end
  hl("FloatTitle", { fg = float_title_fg, bg = float_title_bg, bold = true })
  hl("FloatShadow", { bg = s.ui.bg_dim })

  -- Cursor & Columns
  hl("Cursor", { fg = s.ui.bg, bg = s.ui.fg })
  hl("lCursor", { fg = s.ui.bg, bg = s.ui.fg })
  hl("CursorIM", { fg = s.ui.bg, bg = s.ui.fg })
  local cursorline_bg = s.ui.cursorline
  if is_complex and s.ui.bg_cursorline then cursorline_bg = s.ui.bg_cursorline end
  hl("CursorLine", { bg = cursorline_bg })
  hl("CursorColumn", { bg = cursorline_bg })
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
  hl("MatchParen", { fg = s.syn and s.syn.special or nil, bg = s.ui.bg_highlight, bold = true })

  -- Search
  hl("Search", { fg = s.ui.bg, bg = s.syn and s.syn.type })
  hl("CurSearch", { fg = s.ui.bg, bg = s.syn and s.syn.number })
  hl("IncSearch", { fg = s.ui.bg, bg = s.syn and s.syn.number })
  hl("Substitute", { fg = s.ui.bg, bg = s.syn and s.syn.type })

  -- Splits & Borders
  hl("VertSplit", { fg = s.ui.border })
  local win_sep_fg = s.ui.border
  if is_complex and s.ui.win_separator then win_sep_fg = s.ui.win_separator end
  hl("WinSeparator", { fg = win_sep_fg })
  local float_border_fg = s.ui.border
  local float_border_bg = s.ui.float
  if is_complex and type(s.ui.float) == "table" then
    float_border_fg = s.ui.float.fg_border
    float_border_bg = s.ui.float.bg_border
  end
  hl("FloatBorder", { fg = float_border_fg, bg = float_border_bg })
  hl("WinBar", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("WinBarNC", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })

  -- Statusline & Modes
  hl("StatusLine", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
  hl("StatusLineNC", { fg = s.ui.line_nr, bg = s.ui.bg_dim })
  hl("ModeMsg", { fg = s.ui.fg })
  hl("MsgArea", { fg = s.ui.fg_dim })
  hl("MsgSeparator", { fg = s.ui.border })
  hl("MoreMsg", { fg = s.syn and s.syn.type })
  hl("Question", { fg = s.syn and s.syn.type })

  -- Tabline
  if is_complex and type(s.ui.tabline) == "table" then
    hl("TabLine", { fg = s.ui.tabline.fg_inactive, bg = s.ui.tabline.bg_inactive })
    hl("TabLineFill", { bg = s.ui.tabline.bg })
    hl("TabLineSel", { fg = s.ui.tabline.fg_selected, bg = s.ui.tabline.bg_selected })
  else
    hl("TabLine", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
    hl("TabLineFill", { bg = s.ui.bg_dim })
    hl("TabLineSel", { fg = s.ui.line_nr_active, bg = s.ui.bg_highlight })
  end

  -- Popups & Completion
  if is_complex and type(s.ui.pmenu) == "table" then
    hl("Pmenu", { fg = s.ui.pmenu.fg, bg = s.ui.pmenu.bg })
    hl("PmenuSel", { fg = s.ui.pmenu.fg_sel, bg = s.ui.pmenu.bg_sel })
    hl("PmenuSbar", { bg = s.ui.pmenu.bg_sbar })
    hl("PmenuThumb", { bg = s.ui.pmenu.bg_thumb })
    hl("PmenuKind", { fg = s.syn and s.syn.type })
    hl("PmenuExtra", { fg = s.syn and s.syn.comment })
  else
    hl("Pmenu", { fg = s.ui.fg, bg = s.ui.bg_dim })
    hl("PmenuSel", { fg = s.ui.bg, bg = s.ui.line_nr_active })
    hl("PmenuSbar", { bg = s.ui.bg_highlight })
    hl("PmenuThumb", { bg = s.ui.fg_dim })
    hl("PmenuKind", { fg = s.syn and s.syn.type })
    hl("PmenuExtra", { fg = s.syn and s.syn.comment })
  end
  hl("WildMenu", { fg = s.ui.bg, bg = s.ui.line_nr_active })

  -- Folds
  hl("Folded", { fg = s.syn and s.syn.comment, bg = s.ui.bg_dim })
  hl("FoldColumn", { fg = s.ui.line_nr })

  -- Misc UI
  local nontext_fg = s.ui.nontext or s.ui.bg_highlight
  if is_complex and s.ui.nontext then nontext_fg = s.ui.nontext end
  hl("NonText", { fg = nontext_fg })
  hl("SpecialKey", { fg = s.ui.nontext or s.ui.bg_highlight })
  hl("EndOfBuffer", { fg = s.ui.bg })
  hl("Directory", { fg = s.syn and s.syn.type })
  hl("ErrorMsg", { fg = s.diag and s.diag.error })
  hl("WarningMsg", { fg = s.diag and s.diag.warning })
  hl("Title", { fg = s.syn and s.syn.keyword, bold = true })
  hl("Conceal", { fg = s.syn and s.syn.comment })
  hl("SpellBad", { sp = s.diag and s.diag.error, undercurl = true })
  hl("SpellCap", { sp = s.diag and s.diag.warning, undercurl = true })
  hl("SpellRare", { sp = s.diag and s.diag.info, undercurl = true })
  hl("SpellLocal", { sp = s.diag and s.diag.hint, undercurl = true })

  -- ============================================================================
  -- SYNTAX HIGHLIGHTING
  -- ============================================================================

  hl("Comment", vim.tbl_extend("force", { fg = s.syn and s.syn.comment }, styles.comments or {}))

  hl("Constant", { fg = s.syn and s.syn.constant })
  hl("String", { fg = s.syn and s.syn.string })
  hl("Character", { fg = s.syn and s.syn.string })
  hl("Number", { fg = s.syn and s.syn.number })
  hl("Boolean", { fg = s.syn and s.syn.boolean })
  hl("Float", { fg = s.syn and s.syn.number })

  hl("Identifier", { fg = s.syn and s.syn.variable })
  hl("Function", vim.tbl_extend("force", { fg = s.syn and s.syn.func }, styles.functions or {}))

  hl("Statement", { fg = s.syn and s.syn.keyword })
  hl("Conditional", { fg = s.syn and s.syn.keyword })
  hl("Repeat", { fg = s.syn and s.syn.keyword })
  hl("Label", { fg = s.syn and s.syn.keyword })
  hl("Operator", { fg = s.syn and s.syn.operator })
  hl("Keyword", vim.tbl_extend("force", { fg = s.syn and s.syn.keyword }, styles.keywords or {}))
  hl("Exception", { fg = s.syn and s.syn.keyword })

  hl("PreProc", { fg = s.syn and s.syn.type })
  hl("Include", { fg = s.syn and s.syn.func })
  hl("Define", { fg = s.syn and s.syn.keyword })
  hl("Macro", { fg = s.syn and s.syn.variable })
  hl("PreCondit", { fg = s.syn and s.syn.type })

  hl("Type", { fg = s.syn and s.syn.type })
  hl("StorageClass", { fg = s.syn and s.syn.type })
  hl("Structure", { fg = s.syn and s.syn.keyword })
  hl("Typedef", { fg = s.syn and s.syn.type })

  hl("Special", { fg = s.syn and s.syn.special })
  hl("SpecialChar", { fg = s.syn and s.syn.special })
  hl("Tag", { fg = s.syn and s.syn.type })
  hl("Delimiter", { fg = s.syn and s.syn.operator })
  hl("SpecialComment", { fg = s.syn and s.syn.special })
  hl("Debug", { fg = s.diag and s.diag.error })
  hl("Underlined", { underline = true })
  hl("Ignore", { fg = s.ui and s.ui.bg })
  hl("Error", { fg = s.diag and s.diag.error })
  hl("Todo", { fg = s.syn and s.syn.special, bold = true })

  -- ============================================================================
  -- DIAGNOSTICS
  -- ============================================================================

  hl("DiagnosticError", { fg = s.diag and s.diag.error })
  hl("DiagnosticWarn", { fg = s.diag and s.diag.warning })
  hl("DiagnosticInfo", { fg = s.diag and s.diag.info })
  hl("DiagnosticHint", { fg = s.diag and s.diag.hint })
  hl("DiagnosticOk", { fg = s.syn and s.syn.type })

  hl("DiagnosticUnderlineError", { sp = s.diag and s.diag.error, undercurl = true })
  hl("DiagnosticUnderlineWarn", { sp = s.diag and s.diag.warning, undercurl = true })
  hl("DiagnosticUnderlineInfo", { sp = s.diag and s.diag.info, undercurl = true })
  hl("DiagnosticUnderlineHint", { sp = s.diag and s.diag.hint, undercurl = true })
  hl("DiagnosticUnderlineOk", { sp = s.syn and s.syn.type, undercurl = true })

  local virtual_text_error = (s.diag and s.diag.virtual_text_error) or (s.diag and s.diag.error)
  local virtual_text_warning = (s.diag and s.diag.virtual_text_warning) or (s.diag and s.diag.warning)
  local virtual_text_info = (s.diag and s.diag.virtual_text_info) or (s.diag and s.diag.info)
  local virtual_text_hint = (s.diag and s.diag.virtual_text_hint) or (s.diag and s.diag.hint)
  local virtual_text_ok = (s.diag and s.diag.virtual_text_ok) or (s.diag and s.diag.ok)
  hl("DiagnosticVirtualTextError", { fg = virtual_text_error, bg = s.ui and s.ui.bg_dim })
  hl("DiagnosticVirtualTextWarn", { fg = virtual_text_warning, bg = s.ui and s.ui.bg_dim })
  hl("DiagnosticVirtualTextInfo", { fg = virtual_text_info, bg = s.ui and s.ui.bg_dim })
  hl("DiagnosticVirtualTextHint", { fg = virtual_text_hint, bg = s.ui and s.ui.bg_dim })
  hl("DiagnosticVirtualTextOk", { fg = virtual_text_ok, bg = s.ui and s.ui.bg_dim })

  hl("DiagnosticSignError", { fg = s.diag and s.diag.error })
  hl("DiagnosticSignWarn", { fg = s.diag and s.diag.warning })
  hl("DiagnosticSignInfo", { fg = s.diag and s.diag.info })
  hl("DiagnosticSignHint", { fg = s.diag and s.diag.hint })
  hl("DiagnosticSignOk", { fg = s.syn and s.syn.type })

  -- ============================================================================
  -- GIT & DIFF
  -- ============================================================================

  hl("DiffAdd", { fg = s.diff and s.diff.add, bg = s.ui and s.ui.bg })
  hl("DiffChange", { fg = s.diff and s.diff.change, bg = s.ui and s.ui.bg })
  hl("DiffDelete", { fg = s.diff and s.diff.delete, bg = s.ui and s.ui.bg })
  hl("DiffText", { fg = s.diff and s.diff.text, bg = s.ui and s.ui.bg_dim })

  hl("GitSignsAdd", { fg = s.git and s.git.add })
  hl("GitSignsChange", { fg = s.git and s.git.change })
  hl("GitSignsDelete", { fg = s.git and s.git.delete })
  hl("GitSignsAddInline", { fg = (s.git and s.git.add_inline) or (s.git and s.git.add), reverse = true })
  hl("GitSignsChangeInline", { fg = (s.git and s.git.change_inline) or (s.git and s.git.change), reverse = true })
  hl("GitSignsDeleteInline", { fg = (s.git and s.git.delete_inline) or (s.git and s.git.delete), reverse = true })

  -- ============================================================================
  -- TREESITTER
  -- ============================================================================

  hl("@variable", vim.tbl_extend("force", { fg = s.syn and s.syn.variable }, styles.variables or {}))
  hl("@variable.builtin", { fg = s.syn and s.syn.constant })
  hl("@variable.parameter", { fg = s.syn and s.syn.variable })
  hl("@variable.member", { fg = s.syn and s.syn.variable })
  hl("@field", { fg = s.syn and s.syn.variable })
  hl("@property", { fg = s.syn and s.syn.variable })

  hl("@function", { link = "Function" })
  hl("@function.call", { fg = s.syn and s.syn.func })
  hl("@function.builtin", { fg = s.syn and s.syn.func })
  hl("@function.macro", { fg = s.syn and s.syn.special })
  hl("@method", { fg = s.syn and s.syn.func })
  hl("@method.call", { fg = s.syn and s.syn.func })
  hl("@constructor", { fg = s.syn and s.syn.type })

  hl("@keyword", { link = "Keyword" })
  hl("@keyword.return", { fg = s.syn and s.syn.keyword })
  hl("@keyword.function", { fg = s.syn and s.syn.keyword })
  hl("@keyword.operator", { fg = s.syn and s.syn.operator })
  hl("@keyword.coroutine", { fg = s.syn and s.syn.keyword })
  hl("@keyword.conditional", { fg = s.syn and s.syn.keyword })
  hl("@keyword.repeat", { fg = s.syn and s.syn.keyword })

  hl("@string", { link = "String" })
  hl("@string.escape", { fg = s.syn and s.syn.special })
  hl("@string.special", { fg = s.syn and s.syn.special })
  hl("@number", { link = "Number" })
  hl("@boolean", { link = "Boolean" })
  hl("@type", { link = "Type" })
  hl("@type.builtin", { fg = s.syn and s.syn.type })
  hl("@type.definition", { fg = s.syn and s.syn.type })
  hl("@type.qualifier", { fg = s.syn and s.syn.keyword })
  hl("@operator", { link = "Operator" })
  hl("@comment", { link = "Comment" })
  hl("@comment.documentation", { fg = s.syn and s.syn.comment })

  hl("@constant", { fg = s.syn and s.syn.constant })
  hl("@constant.builtin", { fg = s.syn and s.syn.constant })
  hl("@constant.macro", { fg = s.syn and s.syn.special })

  hl("@punctuation.delimiter", { fg = s.syn and s.syn.operator })
  hl("@punctuation.bracket", { fg = s.syn and s.syn.operator })
  hl("@punctuation.special", { fg = s.syn and s.syn.special })
  hl("@attribute", { fg = s.syn and s.syn.type })
  hl("@error", { fg = s.diag and s.diag.error })
  hl("@todo", { fg = s.syn and s.syn.special })
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
  hl("@lsp.type.class", { fg = s.syn and s.syn.type })
  hl("@lsp.type.interface", { fg = s.syn and s.syn.type })
  hl("@lsp.type.struct", { fg = s.syn and s.syn.type })
  hl("@lsp.type.enum", { fg = s.syn and s.syn.type })
  hl("@lsp.type.enumMember", { fg = s.syn and s.syn.constant })
  hl("@lsp.type.property", { fg = s.syn and s.syn.variable })
  hl("@lsp.type.namespace", { fg = s.syn and s.syn.type })
  hl("@lsp.type.macro", { fg = s.syn and s.syn.special })
  hl("@lsp.type.decorator", { fg = s.syn and s.syn.func })
  hl("@lsp.type.comment", { link = "@comment" })
  hl("@lsp.type.builtinType", { fg = s.syn and s.syn.type })
  hl("@lsp.type.selfParameter", { fg = s.syn and s.syn.variable })
  hl("@lsp.type.typeParameter", { fg = s.syn and s.syn.type })
  hl("@lsp.type.unresolvedReference", { fg = s.diag and s.diag.warning })
  hl("@lsp.type.operator", { link = "@operator" })
  hl("@lsp.type.string", { link = "@string" })
  hl("@lsp.type.number", { link = "@number" })
  hl("@lsp.type.boolean", { link = "@boolean" })
  hl("@lsp.type.array", { fg = s.syn and s.syn.type })
  hl("@lsp.type.object", { fg = s.syn and s.syn.type })
  hl("@lsp.type.key", { fg = s.syn and s.syn.variable })
  hl("@lsp.type.null", { fg = s.syn and s.syn.constant })
  hl("@lsp.type.enumConstant", { fg = s.syn and s.syn.constant })
  hl("@lsp.type.event", { fg = s.syn and s.syn.func })
  hl("@lsp.type.regexp", { fg = s.syn and s.syn.special })
  hl("@lsp.mod.deprecated", { strikethrough = true })
  hl("@lsp.mod.readonly", { fg = s.syn and s.syn.constant })
  hl("@lsp.mod.async", { fg = s.syn and s.syn.keyword })

  -- ============================================================================
  -- COMMON PLUGINS (conditional)
  -- ============================================================================

  if package.loaded["telescope"] then
    hl("TelescopeNormal", { fg = s.ui.fg, bg = s.ui.float })
    hl("TelescopeBorder", { fg = s.ui.border, bg = s.ui.float })
    hl("TelescopePromptNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
    hl("TelescopeResultsNormal", { fg = s.ui.fg_dim, bg = s.ui.float })
    hl("TelescopeSelection", { fg = s.ui.bg, bg = s.ui.line_nr_active })
    hl("TelescopePreviewNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
  end

  if package.loaded["nvim-tree"] then
    hl("NvimTreeNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
    hl("NvimTreeFolderName", { fg = s.syn and s.syn.type })
    hl("NvimTreeOpenedFolderName", { fg = s.syn and s.syn.type, bold = true })
    hl("NvimTreeFileDirty", { fg = s.git and s.git.change })
    hl("NvimTreeGitNew", { fg = s.git and s.git.add })
    hl("NvimTreeGitDeleted", { fg = s.git and s.git.delete })
  end

  if package.loaded["lualine"] then
    hl("lualine_a_normal", { fg = s.ui.bg, bg = s.ui.line_nr_active })
    hl("lualine_b_normal", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
  end

  if package.loaded["cmp"] then
    hl("CmpItemAbbr", { fg = s.ui.fg })
    hl("CmpItemAbbrDeprecated", { fg = s.syn and s.syn.comment, strikethrough = true })
    hl("CmpItemAbbrMatch", { fg = s.syn and s.syn.keyword, bold = true })
    hl("CmpItemAbbrMatchFuzzy", { fg = s.syn and s.syn.keyword })
    hl("CmpItemKind", { fg = s.syn and s.syn.type })
    hl("CmpItemKindFunction", { fg = s.syn and s.syn.func })
    hl("CmpItemKindMethod", { fg = s.syn and s.syn.func })
    hl("CmpItemKindVariable", { fg = s.syn and s.syn.variable })
    hl("CmpItemKindConstant", { fg = s.syn and s.syn.constant })
    hl("CmpItemKindClass", { fg = s.syn and s.syn.type })
    hl("CmpItemKindInterface", { fg = s.syn and s.syn.type })
    hl("CmpItemKindModule", { fg = s.syn and s.syn.keyword })
    hl("CmpItemKindProperty", { fg = s.syn and s.syn.variable })
    hl("CmpItemKindField", { fg = s.syn and s.syn.variable })
    hl("CmpItemKindEnum", { fg = s.syn and s.syn.type })
    hl("CmpItemKindKeyword", { fg = s.syn and s.syn.keyword })
    hl("CmpItemKindSnippet", { fg = s.syn and s.syn.special })
    hl("CmpItemKindText", { fg = s.syn and s.syn.string })
    hl("CmpItemMenu", { fg = s.syn and s.syn.comment })
    hl("CmpItemKindDefault", { fg = s.ui and s.ui.fg_dim })
  end

  if package.loaded["dap"] then
    hl("DapBreakpoint", { fg = s.diag and s.diag.error })
    hl("DapBreakpointCondition", { fg = s.diag and s.diag.warning })
    hl("DapBreakpointRejected", { fg = s.diag and s.diag.hint })
    hl("DapLogPoint", { fg = s.syn and s.syn.special })
    hl("DapStopped", { bg = s.ui and s.ui.bg_highlight })
    if package.loaded["dapui"] then
      hl("DapUIVariable", { fg = s.syn and s.syn.variable })
      hl("DapUIValue", { fg = s.syn and s.syn.constant })
      hl("DapUIFrameName", { fg = s.syn and s.syn.func })
      hl("DapUIThread", { fg = s.syn and s.syn.keyword })
      hl("DapUIWatchesEmpty", { fg = s.syn and s.syn.comment })
      hl("DapUIWatchesValue", { fg = s.syn and s.syn.string })
      hl("DapUIWatchesError", { fg = s.diag and s.diag.error })
    end
  end

  if package.loaded["mini"] then
    hl("MiniDiffSignAdd", { fg = s.git and s.git.add })
    hl("MiniDiffSignChange", { fg = s.git and s.git.change })
    hl("MiniDiffSignDelete", { fg = s.git and s.git.delete })
    hl("MiniDiffOverAdd", { bg = s.git and s.git.add, blend = 20 })
    hl("MiniDiffOverChange", { bg = s.git and s.git.change, blend = 20 })
    hl("MiniDiffOverDelete", { bg = s.git and s.git.delete, blend = 20 })
    hl("MiniHipatternsFixme", { fg = s.diag and s.diag.error, bold = true })
    hl("MiniHipatternsHack", { fg = s.diag and s.diag.warning, bold = true })
    hl("MiniHipatternsTodo", { fg = s.syn and s.syn.special, bold = true })
    hl("MiniHipatternsNote", { fg = s.diag and s.diag.info, bold = true })
    hl("MiniTablineCurrent", { fg = s.ui and s.ui.line_nr_active, bg = s.ui and s.ui.bg_highlight })
    hl("MiniTablineVisible", { fg = s.ui and s.ui.fg, bg = s.ui and s.ui.bg_dim })
    hl("MiniTablineHidden", { fg = s.ui and s.ui.fg_dim, bg = s.ui and s.ui.bg_dim })
    hl("MiniTablineModifiedCurrent", { fg = s.git and s.git.change, bg = s.ui and s.ui.bg_highlight })
    hl("MiniStatuslineModeNormal", { fg = s.ui and s.ui.bg, bg = s.syn and s.syn.type })
    hl("MiniStatuslineModeInsert", { fg = s.ui and s.ui.bg, bg = s.diag and s.diag.info })
  end

  if package.loaded["ibl"] then
    hl("IblIndent", { fg = s.ui and s.ui.line_nr_dim })
    hl("IblWhitespace", { fg = s.ui and s.ui.nontext })
    hl("IblScope", { fg = s.ui and s.ui.line_nr_active })
  end

  if package.loaded["which-key"] then
    hl("WhichKey", { fg = s.syn and s.syn.func })
    hl("WhichKeyGroup", { fg = s.syn and s.syn.keyword })
    hl("WhichKeyDesc", { fg = s.syn and s.syn.variable })
    hl("WhichKeySeparator", { fg = s.syn and s.syn.operator })
    hl("WhichKeyFloat", { bg = s.ui and s.ui.float })
    hl("WhichKeyValue", { fg = s.syn and s.syn.constant })
  end

  if package.loaded["flash"] then
    hl("FlashBackdrop", { fg = s.syn and s.syn.comment })
    hl("FlashMatch", { fg = s.ui and s.ui.fg, bg = s.ui and s.ui.bg_highlight })
    hl("FlashCurrent", { fg = s.ui and s.ui.bg, bg = s.syn and s.syn.type })
    hl("FlashLabel", { fg = s.ui and s.ui.bg, bg = s.syn and s.syn.number, bold = true })
    hl("FlashPrompt", { fg = s.ui and s.ui.fg, bg = s.ui and s.ui.bg_dim })
  end

  if package.loaded["oil"] then
    hl("OilDir", { fg = s.syn and s.syn.type, bold = true })
    hl("OilDirIcon", { fg = s.syn and s.syn.type })
    hl("OilFile", { fg = s.ui and s.ui.fg })
    hl("OilLink", { fg = s.syn and s.syn.string, underline = true })
    hl("OilSocket", { fg = s.syn and s.syn.special })
    hl("OilCreate", { fg = s.git and s.git.add })
    hl("OilDelete", { fg = s.git and s.git.delete })
    hl("OilMove", { fg = s.git and s.git.change })
    hl("OilCopy", { fg = s.syn and s.syn.func })
    hl("OilChange", { fg = s.syn and s.syn.keyword })
    hl("OilRestore", { fg = s.diag and s.diag.hint })
    hl("OilTrash", { fg = s.diag and s.diag.error })
    hl("OilTrashSource", { fg = s.diag and s.diag.warning })
  end

  if package.loaded["fidget"] then
    hl("FidgetTitle", { fg = s.syn and s.syn.keyword, bold = true })
    hl("FidgetTask", { fg = s.diag and s.diag.warning })
    hl("FidgetDone", { fg = s.syn and s.syn.constant })
    hl("FidgetIcon", { fg = s.diag and s.diag.hint })
    hl("FidgetGroupSeparator", { fg = s.syn and s.syn.comment })
    hl("FidgetWindow", { fg = s.ui and s.ui.fg_dim, bg = s.ui and s.ui.float })
  end

  -- user overrides: last write wins
  if config and config.overrides and config.overrides.highlights then
    for group, override_opts in pairs(config.overrides.highlights) do
      hl(group, override_opts)
    end
  end
end

return M
