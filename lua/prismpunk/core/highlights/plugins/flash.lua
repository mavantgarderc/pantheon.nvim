local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  hl("FlashBackdrop", { fg = s.syn.comment })
  hl("FlashMatch", { fg = s.ui.fg, bg = s.ui.bg_highlight })
  hl("FlashCurrent", { fg = s.ui.bg, bg = s.syn.type })
  hl("FlashLabel", { fg = s.ui.bg, bg = s.syn.number, bold = true })
  hl("FlashPrompt", { fg = s.ui.fg, bg = s.ui.bg_dim })
  hl("FlashPromptIcon", { fg = s.syn.type })
  hl("FlashCursor", { reverse = true })
end

return M
