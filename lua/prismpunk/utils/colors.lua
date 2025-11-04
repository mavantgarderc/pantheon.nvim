local M = {}

M.hex_to_rgb = function(hex)
  hex = hex:gsub("#", "")
  return {
    r = tonumber(hex:sub(1, 2), 16),
    g = tonumber(hex:sub(3, 4), 16),
    b = tonumber(hex:sub(5, 6), 16),
  }
end

M.rgb_to_hex = function(rgb) return string.format("#%02x%02x%02x", rgb.r, rgb.g, rgb.b) end

M.darken = function(hex, amount)
  local rgb = M.hex_to_rgb(hex)
  rgb.r = math.floor(rgb.r * (1 - amount))
  rgb.g = math.floor(rgb.g * (1 - amount))
  rgb.b = math.floor(rgb.b * (1 - amount))
  return M.rgb_to_hex(rgb)
end

M.lighten = function(hex, amount)
  local rgb = M.hex_to_rgb(hex)
  rgb.r = math.min(255, math.floor(rgb.r + (255 - rgb.r) * amount))
  rgb.g = math.min(255, math.floor(rgb.g + (255 - rgb.g) * amount))
  rgb.b = math.min(255, math.floor(rgb.b + (255 - rgb.b) * amount))
  return M.rgb_to_hex(rgb)
end

M.blend = function(hex1, hex2, amount)
  local rgb1 = M.hex_to_rgb(hex1)
  local rgb2 = M.hex_to_rgb(hex2)

  return M.rgb_to_hex({
    r = math.floor(rgb1.r + (rgb2.r - rgb1.r) * amount),
    g = math.floor(rgb1.g + (rgb2.g - rgb1.g) * amount),
    b = math.floor(rgb1.b + (rgb2.b - rgb1.b) * amount),
  })
end

return M
