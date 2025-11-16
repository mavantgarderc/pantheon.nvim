local M = {}

local hl = require("prismpunk.core.highlights").hl

---@diagnostic disable-next-line: unused-local
function M.apply(c, _config)
  local s = c

  hl("RenderMarkdownH1", { fg = s.syn.type, bold = true })
  hl("RenderMarkdownH2", { fg = s.syn.keyword, bold = true })
  hl("RenderMarkdownH3", { fg = s.syn.func, bold = true })
  hl("RenderMarkdownH4", { fg = s.syn.string, bold = true })
  hl("RenderMarkdownH5", { fg = s.syn.number, bold = true })
  hl("RenderMarkdownH6", { fg = s.syn.constant, bold = true })

  hl("RenderMarkdownCode", { bg = s.ui.bg_dim })
  hl("RenderMarkdownCodeInline", { fg = s.syn.func, bg = s.ui.bg_dim })

  hl("RenderMarkdownBullet", { fg = s.syn.operator })
  hl("RenderMarkdownListMarker", { fg = s.syn.operator })

  hl("RenderMarkdownQuote", { fg = s.syn.comment, italic = true })
  hl("RenderMarkdownLink", { fg = s.syn.string, underline = true })
  hl("RenderMarkdownDash", { fg = s.syn.operator })
end

return M
