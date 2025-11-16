local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c
  local is_complex = c.is_complex

  hl("Normal", { fg = s.ui.fg, bg = s.ui.bg, ctermfg = 15, ctermbg = 0 })

  local float_fg = s.ui.fg
  local float_bg = s.ui.float
  if is_complex and type(s.ui.float) == "table" then
    float_fg = s.ui.float.fg
    float_bg = s.ui.float.bg
  end
  hl("NormalFloat", { fg = float_fg, bg = float_bg })
  hl("NormalNC", { fg = s.ui.fg_dim, bg = s.ui.bg })
  hl("FloatTitle", { fg = float_fg, bg = float_bg, bold = true })
  hl("FloatShadow", { bg = s.ui.bg_dim })

  hl("Cursor", { fg = s.ui.bg, bg = s.ui.fg })
  hl("lCursor", { fg = s.ui.bg, bg = s.ui.fg })
  hl("CursorIM", { fg = s.ui.bg, bg = s.ui.fg })

  local cursorline_bg = is_complex and s.ui.bg_cursorline or s.ui.cursorline
  hl("CursorLine", { bg = cursorline_bg })
  hl("CursorColumn", { bg = cursorline_bg })
  hl("ColorColumn", { bg = s.ui.bg_dim })

  hl("LineNr", { fg = s.ui.line_nr })
  hl("LineNrAbove", { fg = s.ui.line_nr_dim })
  hl("LineNrBelow", { fg = s.ui.line_nr_dim })
  hl("CursorLineNr", { fg = s.ui.line_nr_active, bold = true })
  hl("SignColumn", { fg = s.ui.line_nr, bg = s.ui.bg })
  hl("CursorLineSign", { fg = s.ui.line_nr_active })
  hl("CursorLineFold", { fg = s.ui.line_nr_active })

  hl("Visual", { bg = s.ui.selection })
  hl("VisualNOS", { bg = s.ui.selection })
  hl("MatchParen", { fg = s.syn.special, bg = s.ui.bg_highlight, bold = true })

  hl("Search", { fg = s.ui.bg, bg = s.syn.type })
  hl("CurSearch", { fg = s.ui.bg, bg = s.syn.number })
  hl("IncSearch", { fg = s.ui.bg, bg = s.syn.number })
  hl("Substitute", { fg = s.ui.bg, bg = s.syn.type })

  hl("VertSplit", { fg = s.ui.border })
  local win_sep = (is_complex and s.ui.win_separator) or s.ui.border
  hl("WinSeparator", { fg = win_sep })

  local float_border_fg = s.ui.border
  local float_border_bg = s.ui.float
  if is_complex and type(s.ui.float) == "table" then
    float_border_fg = s.ui.float.fg_border
    float_border_bg = s.ui.float.bg_border
  end
  hl("FloatBorder", { fg = float_border_fg, bg = float_border_bg })

  hl("WinBar", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("WinBarNC", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })

  hl("StatusLine", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
  hl("StatusLineNC", { fg = s.ui.line_nr, bg = s.ui.bg_dim })
  hl("ModeMsg", { fg = s.ui.fg })
  hl("MsgArea", { fg = s.ui.fg_dim })
  hl("MsgSeparator", { fg = s.ui.border })
  hl("MoreMsg", { fg = s.syn.type })
  hl("Question", { fg = s.syn.type })

  if is_complex and type(s.ui.tabline) == "table" then
    hl("TabLine", { fg = s.ui.tabline.fg_inactive, bg = s.ui.tabline.bg_inactive })
    hl("TabLineFill", { bg = s.ui.tabline.bg })
    hl("TabLineSel", { fg = s.ui.tabline.fg_selected, bg = s.ui.tabline.bg_selected })
  else
    hl("TabLine", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
    hl("TabLineFill", { bg = s.ui.bg_dim })
    hl("TabLineSel", { fg = s.ui.line_nr_active, bg = s.ui.bg_highlight })
  end

  if is_complex and type(s.ui.pmenu) == "table" then
    hl("Pmenu", { fg = s.ui.pmenu.fg, bg = s.ui.pmenu.bg })
    hl("PmenuSel", { fg = s.ui.pmenu.fg_sel, bg = s.ui.pmenu.bg_sel })
    hl("PmenuSbar", { bg = s.ui.pmenu.bg_sbar })
    hl("PmenuThumb", { bg = s.ui.pmenu.bg_thumb })
  else
    hl("Pmenu", { fg = s.ui.fg, bg = s.ui.bg_dim })
    hl("PmenuSel", { fg = s.ui.bg, bg = s.ui.line_nr_active })
    hl("PmenuSbar", { bg = s.ui.bg_highlight })
    hl("PmenuThumb", { bg = s.ui.fg_dim })
  end
  hl("PmenuKind", { fg = s.syn.type })
  hl("PmenuExtra", { fg = s.syn.comment })
  hl("WildMenu", { fg = s.ui.bg, bg = s.ui.line_nr_active })

  hl("Folded", { fg = s.syn.comment, bg = s.ui.bg_dim })
  hl("FoldColumn", { fg = s.ui.line_nr })

  local nontext = (is_complex and s.ui.nontext) or s.ui.bg_highlight
  hl("NonText", { fg = nontext })
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
end

return M
