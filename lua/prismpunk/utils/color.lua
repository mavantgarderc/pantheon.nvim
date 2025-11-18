--- Color manipulation utilities
--- Pure functions for color transformations
local M = {}

local hsluv = require("prismpunk.utils.hsluv")

--- Create a color object with chainable methods
--- @param hex string Hex color
--- @return table Color object with methods
--- @usage local c = color("#ff0000"):brighten(0.2):to_hex()
function M.new(hex)
  local obj = {
    hex = hex,
    rgb = hsluv.hex_to_rgb(hex),
    hsluv = hsluv.hex_to_hsluv(hex),
  }

  --- Brighten color by factor
  --- @param factor number 0.0 to 1.0 (0 = no change, 1 = max brightness)
  --- @return table self
  function obj:brighten(factor)
    local h = self.hsluv
    h[3] = math.max(0, math.min(100, h[3] + (factor * 100)))
    self.hsluv = h
    self.rgb = hsluv.hsluv_to_rgb(h)
    self.hex = hsluv.hsluv_to_hex(h)
    return self
  end

  --- Darken color by factor
  --- @param factor number 0.0 to 1.0
  --- @return table self
  function obj:darken(factor) return self:brighten(-factor) end

  --- Adjust saturation
  --- @param factor number -1.0 to 1.0
  --- @return table self
  function obj:saturate(factor)
    local h = self.hsluv
    h[2] = math.max(0, math.min(100, h[2] + (factor * 100)))
    self.hsluv = h
    self.rgb = hsluv.hsluv_to_rgb(h)
    self.hex = hsluv.hsluv_to_hex(h)
    return self
  end

  --- Rotate hue
  --- @param degrees number -360 to 360
  --- @return table self
  function obj:rotate(degrees)
    local h = self.hsluv
    h[1] = (h[1] + degrees) % 360
    self.hsluv = h
    self.rgb = hsluv.hsluv_to_rgb(h)
    self.hex = hsluv.hsluv_to_hex(h)
    return self
  end

  --- Get hex representation
  --- @return string
  function obj:to_hex() return self.hex end

  --- Get RGB representation
  --- @return table {r, g, b}
  function obj:to_rgb() return self.rgb end

  --- Get HSLuv representation
  --- @return table {h, s, l}
  function obj:to_hsluv() return self.hsluv end

  return obj
end

-- Make color() callable
setmetatable(M, {
  __call = function(_, hex) return M.new(hex) end,
})

--- Convert hex to RGB
--- @param hex string
--- @return table {r, g, b} (0-1 range)
function M.hex_to_rgb(hex) return hsluv.hex_to_rgb(hex) end

--- Convert RGB to hex
--- @param rgb table {r, g, b} (0-1 range)
--- @return string
function M.rgb_to_hex(rgb) return hsluv.rgb_to_hex(rgb) end

--- Brighten hex color
--- @param hex string
--- @param factor number 0.0 to 1.0
--- @return string
function M.brighten(hex, factor) return M.new(hex):brighten(factor):to_hex() end

--- Darken hex color
--- @param hex string
--- @param factor number 0.0 to 1.0
--- @return string
function M.darken(hex, factor) return M.new(hex):darken(factor):to_hex() end

--- Blend two colors
--- @param hex1 string
--- @param hex2 string
--- @param alpha number 0.0 to 1.0 (0 = hex1, 1 = hex2)
--- @return string
function M.blend(hex1, hex2, alpha)
  local rgb1 = M.hex_to_rgb(hex1)
  local rgb2 = M.hex_to_rgb(hex2)

  local blended = {
    rgb1[1] * (1 - alpha) + rgb2[1] * alpha,
    rgb1[2] * (1 - alpha) + rgb2[2] * alpha,
    rgb1[3] * (1 - alpha) + rgb2[3] * alpha,
  }

  return M.rgb_to_hex(blended)
end

--- Calculate relative luminance (WCAG formula)
--- @param hex string
--- @return number 0.0 to 1.0
function M.get_luminance(hex)
  local rgb = M.hex_to_rgb(hex)

  local function adjust(c)
    if c <= 0.03928 then
      return c / 12.92
    else
      return math.pow((c + 0.055) / 1.055, 2.4)
    end
  end

  local r = adjust(rgb[1])
  local g = adjust(rgb[2])
  local b = adjust(rgb[3])

  return 0.2126 * r + 0.7152 * g + 0.0722 * b
end

--- Calculate contrast ratio between two colors
--- @param lum1 number Luminance of first color
--- @param lum2 number Luminance of second color
--- @return number Contrast ratio (1.0 to 21.0)
function M.calculate_contrast(lum1, lum2)
  local lighter = math.max(lum1, lum2)
  local darker = math.min(lum1, lum2)
  return (lighter + 0.05) / (darker + 0.05)
end

--- Generate terminal color table from palette
--- @param plt table Palette
--- @return table Terminal colors
function M.term_from_palette(plt)
  return {
    black = plt.base00 or plt.bg_darkest or "#000000",
    red = plt.base08 or plt.red or "#ff0000",
    green = plt.base0B or plt.green or "#00ff00",
    yellow = plt.base0A or plt.yellow or "#ffff00",
    blue = plt.base0D or plt.blue or "#0000ff",
    magenta = plt.base0E or plt.magenta or "#ff00ff",
    cyan = plt.base0C or plt.cyan or "#00ffff",
    white = plt.base05 or plt.fg or "#ffffff",
    black_bright = M.brighten(plt.base00 or plt.bg_darkest or "#000000", 0.6),
    red_bright = M.brighten(plt.base08 or plt.red or "#ff0000", 0.15),
    green_bright = M.brighten(plt.base0B or plt.green or "#00ff00", 0.1),
    yellow_bright = M.brighten(plt.base0A or plt.yellow or "#ffff00", 0.15),
    blue_bright = M.brighten(plt.base0D or plt.blue or "#0000ff", 0.2),
    magenta_bright = M.brighten(plt.base0E or plt.magenta or "#ff00ff", 0.15),
    cyan_bright = M.brighten(plt.base0C or plt.cyan or "#00ffff", 0.1),
    white_bright = M.brighten(plt.base05 or plt.fg or "#ffffff", 0.15),
  }
end

return M
