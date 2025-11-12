-- lua/prismpunk/utils/color.lua
-- Minimal color utilities (hex <-> rgb, mix, lighten/darken)
local M = {}

local function hex_to_rgb(hex)
  hex = hex:gsub("#", "")
  return {
    r = tonumber(hex:sub(1,2), 16),
    g = tonumber(hex:sub(3,4), 16),
    b = tonumber(hex:sub(5,6), 16),
  }
end

local function rgb_to_hex(rgb)
  local function c(n) return string.format("%02x", math.max(0, math.min(255, math.floor(n + 0.5)))) end
  return ("#%s%s%s"):format(c(rgb.r), c(rgb.g), c(rgb.b))
end

function M.is_hex(s) return type(s) == "string" and s:match("^#%x%x%x%x%x%x$") end

--- Mix two hex colors by t [0..1]
function M.mix(hex1, hex2, t)
  t = t or 0.5
  local a = hex_to_rgb(hex1)
  local b = hex_to_rgb(hex2)
  return rgb_to_hex({
    r = a.r + (b.r - a.r) * t,
    g = a.g + (b.g - a.g) * t,
    b = a.b + (b.b - a.b) * t,
  })
end

function M.lighten(hex, amount)
  amount = amount or 0.1
  return M.mix(hex, "#ffffff", amount)
end

function M.darken(hex, amount)
  amount = amount or 0.1
  return M.mix(hex, "#000000", amount)
end

return M
