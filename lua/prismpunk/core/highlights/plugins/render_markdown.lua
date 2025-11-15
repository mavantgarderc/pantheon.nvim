local M = {}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

---@diagnostic disable-next-line: unused-local
function M.apply(c, config)
  local s = c

  -- Headings
  hl("RenderMarkdownH1", { fg = s.syn.type, bold = true })
  hl("RenderMarkdownH2", { fg = s.syn.keyword, bold = true })
  hl("RenderMarkdownH3", { fg = s.syn.func, bold = true })
  hl("RenderMarkdownH4", { fg = s.syn.string, bold = true })
  hl("RenderMarkdownH5", { fg = s.syn.number, bold = true })
  hl("RenderMarkdownH6", { fg = s.syn.constant, bold = true })

  -- Code
  hl("RenderMarkdownCode", { bg = s.ui.bg_dim })
  hl("RenderMarkdownCodeInline", { fg = s.syn.func, bg = s.ui.bg_dim })

  -- Lists
  hl("RenderMarkdownBullet", { fg = s.syn.operator })
  hl("RenderMarkdownListMarker", { fg = s.syn.operator })

  -- Other elements
  hl("RenderMarkdownQuote", { fg = s.syn.comment, italic = true })
  hl("RenderMarkdownLink", { fg = s.syn.string, underline = true })
  hl("RenderMarkdownDash", { fg = s.syn.operator })
end

return M
