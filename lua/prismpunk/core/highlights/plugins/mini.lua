local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  -- mini.diff
  hl("MiniDiffSignAdd", { fg = s.git.add })
  hl("MiniDiffSignChange", { fg = s.git.change })
  hl("MiniDiffSignDelete", { fg = s.git.delete })
  hl("MiniDiffOverAdd", { bg = s.git.add, blend = 20 })
  hl("MiniDiffOverChange", { bg = s.git.change, blend = 20 })
  hl("MiniDiffOverDelete", { bg = s.git.delete, blend = 20 })

  -- mini.hipatterns
  hl("MiniHipatternsFixme", { fg = s.diag.error, bold = true })
  hl("MiniHipatternsHack", { fg = s.diag.warning, bold = true })
  hl("MiniHipatternsTodo", { fg = s.syn.special, bold = true })
  hl("MiniHipatternsNote", { fg = s.diag.info, bold = true })

  -- mini.tabline
  hl("MiniTablineCurrent", { fg = s.ui.line_nr_active, bg = s.ui.bg_highlight })
  hl("MiniTablineVisible", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("MiniTablineHidden", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
  hl("MiniTablineModifiedCurrent", { fg = s.git.change, bg = s.ui.bg_highlight })
  hl("MiniTablineModifiedVisible", { fg = s.git.change, bg = s.ui.bg_dim })
  hl("MiniTablineModifiedHidden", { fg = s.git.change, bg = s.ui.bg_dim })
  hl("MiniTablineFill", { bg = s.ui.bg_dim })
  hl("MiniTablineTabpagesection", { fg = s.ui.bg, bg = s.syn.type })

  -- mini.statusline
  hl("MiniStatuslineModeNormal", { fg = s.ui.bg, bg = s.syn.type })
  hl("MiniStatuslineModeInsert", { fg = s.ui.bg, bg = s.diag.info })
  hl("MiniStatuslineModeVisual", { fg = s.ui.bg, bg = s.syn.keyword })
  hl("MiniStatuslineModeReplace", { fg = s.ui.bg, bg = s.diag.error })
  hl("MiniStatuslineModeCommand", { fg = s.ui.bg, bg = s.syn.number })
  hl("MiniStatuslineModeOther", { fg = s.ui.bg, bg = s.syn.special })
  hl("MiniStatuslineDevinfo", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("MiniStatuslineFilename", { fg = s.ui.fg_dim, bg = s.ui.bg_dim })
  hl("MiniStatuslineFileinfo", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("MiniStatuslineInactive", { fg = s.ui.line_nr, bg = s.ui.bg_dim })

  -- mini.starter
  hl("MiniStarterCurrent", { nocombine = true })
  hl("MiniStarterFooter", { fg = s.syn.comment, italic = true })
  hl("MiniStarterHeader", { fg = s.syn.type })
  hl("MiniStarterInactive", { fg = s.syn.comment })
  hl("MiniStarterItem", { fg = s.ui.fg })
  hl("MiniStarterItemBullet", { fg = s.syn.operator })
  hl("MiniStarterItemPrefix", { fg = s.diag.warning })
  hl("MiniStarterSection", { fg = s.syn.keyword })
  hl("MiniStarterQuery", { fg = s.diag.info })

  -- mini.cursorword
  hl("MiniCursorword", { bg = s.ui.bg_highlight })
  hl("MiniCursorwordCurrent", { bg = s.ui.bg_highlight })

  -- mini.indentscope
  hl("MiniIndentscopeSymbol", { fg = s.ui.line_nr_active })
  hl("MiniIndentscopePrefix", { nocombine = true })

  -- mini.jump
  hl("MiniJump", { fg = s.ui.bg, bg = s.syn.number, bold = true })

  -- mini.map
  hl("MiniMapNormal", { fg = s.ui.fg_dim })
  hl("MiniMapSymbolCount", { fg = s.syn.type })
  hl("MiniMapSymbolLine", { fg = s.syn.keyword })
  hl("MiniMapSymbolView", { fg = s.syn.special })

  -- mini.notify
  hl("MiniNotifyBorder", { fg = s.ui.border })
  hl("MiniNotifyNormal", { fg = s.ui.fg, bg = s.ui.float })
  hl("MiniNotifyTitle", { fg = s.syn.keyword, bold = true })

  -- mini.pick
  hl("MiniPickBorder", { fg = s.ui.border })
  hl("MiniPickBorderBusy", { fg = s.diag.warning })
  hl("MiniPickBorderText", { fg = s.syn.type })
  hl("MiniPickIconDirectory", { fg = s.syn.type })
  hl("MiniPickIconFile", { fg = s.ui.fg })
  hl("MiniPickHeader", { fg = s.syn.keyword })
  hl("MiniPickMatchCurrent", { bg = s.ui.bg_highlight })
  hl("MiniPickMatchMarked", { fg = s.syn.keyword })
  hl("MiniPickMatchRanges", { fg = s.syn.type, bold = true })
  hl("MiniPickNormal", { fg = s.ui.fg })
  hl("MiniPickPreviewLine", { bg = s.ui.bg_highlight })
  hl("MiniPickPreviewRegion", { bg = s.ui.selection })
  hl("MiniPickPrompt", { fg = s.diag.info })

  -- mini.files
  hl("MiniFilesBorder", { fg = s.ui.border })
  hl("MiniFilesBorderModified", { fg = s.git.change })
  hl("MiniFilesCursorLine", { bg = s.ui.bg_highlight })
  hl("MiniFilesDirectory", { fg = s.syn.type })
  hl("MiniFilesFile", { fg = s.ui.fg })
  hl("MiniFilesNormal", { fg = s.ui.fg })
  hl("MiniFilesTitle", { fg = s.syn.keyword, bold = true })
  hl("MiniFilesTitleFocused", { fg = s.syn.type, bold = true })

  -- mini.operators
  hl("MiniOperatorsExchangeFrom", { bg = s.ui.selection })

  -- mini.surround
  hl("MiniSurround", { bg = s.syn.number })

  -- mini.test
  hl("MiniTestEmphasis", { bold = true })
  hl("MiniTestFail", { fg = s.diag.error, bold = true })
  hl("MiniTestPass", { fg = s.diag.info, bold = true })

  -- mini.trailspace
  hl("MiniTrailspace", { bg = s.diag.error })
end

return M
