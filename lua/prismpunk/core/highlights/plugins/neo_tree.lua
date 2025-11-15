local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  -- Window
  hl("NeoTreeNormal", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NeoTreeNormalNC", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("NeoTreeEndOfBuffer", { fg = s.ui.bg_dim })

  -- Files and directories
  hl("NeoTreeDirectoryName", { fg = s.syn.type })
  hl("NeoTreeDirectoryIcon", { fg = s.syn.type })
  hl("NeoTreeFileName", { fg = s.ui.fg })
  hl("NeoTreeFileIcon", { fg = s.ui.fg })
  hl("NeoTreeFileNameOpened", { fg = s.syn.keyword })

  -- Symbols
  hl("NeoTreeSymbolicLinkTarget", { fg = s.syn.string })
  hl("NeoTreeRootName", { fg = s.syn.type, bold = true })
  hl("NeoTreeModified", { fg = s.git.change })

  -- Git status
  hl("NeoTreeGitAdded", { fg = s.git.add })
  hl("NeoTreeGitConflict", { fg = s.diag.error })
  hl("NeoTreeGitDeleted", { fg = s.git.delete })
  hl("NeoTreeGitIgnored", { fg = s.syn.comment })
  hl("NeoTreeGitModified", { fg = s.git.change })
  hl("NeoTreeGitUnstaged", { fg = s.git.change })
  hl("NeoTreeGitUntracked", { fg = s.diag.hint })
  hl("NeoTreeGitStaged", { fg = s.git.add })

  -- UI elements
  hl("NeoTreeIndentMarker", { fg = s.ui.line_nr_dim })
  hl("NeoTreeExpander", { fg = s.ui.line_nr })
  hl("NeoTreeCursorLine", { bg = s.ui.bg_highlight })
  hl("NeoTreeDimText", { fg = s.syn.comment })
  hl("NeoTreeFilterTerm", { fg = s.syn.keyword, bold = true })
  hl("NeoTreeFloatBorder", { fg = s.ui.border })
  hl("NeoTreeFloatTitle", { fg = s.syn.keyword, bold = true })
  hl("NeoTreeTitleBar", { fg = s.ui.bg, bg = s.syn.type })

  -- Window picker
  hl("NeoTreeWindowsHidden", { fg = s.syn.comment })
  hl("NeoTreeWindowsHiddenCurrent", { fg = s.ui.fg, bg = s.ui.bg_highlight })
end

return M
