-- lua/prismpunk/core/lualine.lua
local palette_m = require("prismpunk.palette")

local M = {}

--- Return a lualine theme table based on palette or theme.term
--- @param palette_or_theme table|string
function M.get_theme_for(palette_or_theme)
  local p = palette_or_theme
  if type(p) == "string" then
    p = palette_m.get_palette(p)
  end
  -- try to pick semantic slots; fallback safe indices/keys
  return {
    normal = { a = { fg = p.fg_lightest or p[2], bg = p.bg_darkest or p[1] }, b = { fg = p.fg_mid or p[3], bg = p.bg_dark or p[2] } },
    insert = { a = { fg = p.bg_darkest or p[1], bg = p.crystalWill or p[4] } },
    visual = { a = { fg = p.bg_darkest or p[1], bg = p.crystalRage or p[5] } },
    replace = { a = { fg = p.bg_darkest or p[1], bg = p.crystalRage or p[6] } },
    inactive = { a = { fg = p.fg_mid or p[8], bg = p.bg_darkest or p[1] } },
  }
end

return M
