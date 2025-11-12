-- lua/prismpunk/utils/base16.lua
local M = {}

--- Generate base16 map from keyed palette.
--- If palette is an ordered list, you can map indices manually.
function M.from_palette(p)
  -- attempt to map semantic keys to base16 defaults if present
  if type(p) ~= "table" then return {} end
  local out = {}
  -- simple mapping guesses (you can customize)
  out.base00 = p.bg_darkest or p[1]
  out.base01 = p.bg_darker or p[2]
  out.base02 = p.bg_dark or p[3]
  out.base03 = p.bg_mid or p[4]
  out.base04 = p.bg_light or p[5]
  out.base05 = p.fg_mid or p[6]
  out.base06 = p.fg_light or p[7]
  out.base07 = p.fg_lightest or p[8]
  out.base08 = p.crystalRage or p[9]
  out.base09 = p.crystalAvarice or p[10]
  out.base0A = p.crystalFear or p[11]
  out.base0B = p.crystalWill or p[12]
  out.base0C = p.harmonicPattern or p[13]
  out.base0D = p.prismaticCore or p[14]
  out.base0E = p.prismaticDeep or p[15]
  out.base0F = p.prismaticBright or p[16]
  return out
end

return M
