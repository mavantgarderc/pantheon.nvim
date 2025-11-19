--- Validation and generation helpers
local M = {}

--- Base16 color definitions (semantic meanings)
M.definitions = {
  base00 = "Default Background",
  base01 = "Lighter Background (status bars)",
  base02 = "Selection Background",
  base03 = "Comments, Invisibles",
  base04 = "Dark Foreground (status bars)",
  base05 = "Default Foreground",
  base06 = "Light Foreground (not often used)",
  base07 = "Light Background (not often used)",
  base08 = "Variables, XML Tags, Markup Link Text",
  base09 = "Integers, Boolean, Constants",
  base0A = "Classes, Markup Bold, Search Text Background",
  base0B = "Strings, Markup Code, Diff Inserted",
  base0C = "Support, Regular Expressions, Escape Characters",
  base0D = "Functions, Methods, Headings",
  base0E = "Keywords, Storage, Selector, Markup Italic",
  base0F = "Deprecated, Opening/Closing Embedded Language Tags",
}

--- Validate base16 color table
--- @param colors table Base16 colors
--- @return boolean valid
--- @return string|nil error_message
function M.validate(colors)
  if type(colors) ~= "table" then return false, "colors must be a table" end

  local required_keys = {
    "base00",
    "base01",
    "base02",
    "base03",
    "base04",
    "base05",
    "base06",
    "base07",
    "base08",
    "base09",
    "base0A",
    "base0B",
    "base0C",
    "base0D",
    "base0E",
    "base0F",
  }

  for _, key in ipairs(required_keys) do
    if not colors[key] then return false, string.format("missing required key: %s", key) end

    if type(colors[key]) ~= "string" then
      return false, string.format("%s must be string, got %s", key, type(colors[key]))
    end

    if not colors[key]:match("^#%x%x%x%x%x%x$") then
      return false, string.format("%s must be valid hex color, got %s", key, colors[key])
    end
  end

  return true
end

--- Generate base16 from simplified palette
--- @param opts table { bg, fg, accent1, accent2, ... }
--- @return table base16
function M.generate(opts)
  opts = opts or {}

  local bg = opts.bg or "#000000"
  local fg = opts.fg or "#ffffff"

  return {
    base00 = bg,
    base01 = opts.base01 or M.lighten(bg, 0.1),
    base02 = opts.base02 or M.lighten(bg, 0.2),
    base03 = opts.base03 or M.lighten(bg, 0.3),
    base04 = opts.base04 or M.darken(fg, 0.3),
    base05 = fg,
    base06 = opts.base06 or M.lighten(fg, 0.1),
    base07 = opts.base07 or M.lighten(fg, 0.2),
    base08 = opts.base08 or opts.red or "#ff0000",
    base09 = opts.base09 or opts.orange or "#ff8800",
    base0A = opts.base0A or opts.yellow or "#ffff00",
    base0B = opts.base0B or opts.green or "#00ff00",
    base0C = opts.base0C or opts.cyan or "#00ffff",
    base0D = opts.base0D or opts.blue or "#0000ff",
    base0E = opts.base0E or opts.magenta or "#ff00ff",
    base0F = opts.base0F or opts.brown or "#884400",
  }
end

--- Helper: lighten color (requires color utils)
--- @param hex string
--- @param factor number
--- @return string
function M.lighten(hex, factor)
  local color_utils = require("prismpunk.utils.color")
  return color_utils.brighten(hex, factor)
end

--- Helper: darken color
--- @param hex string
--- @param factor number
--- @return string
function M.darken(hex, factor)
  local color_utils = require("prismpunk.utils.color")
  return color_utils.darken(hex, factor)
end

--- Print base16 colors (for debugging)
--- @param colors table
--- @param name string|nil
function M.print(colors, name)
  name = name or "Base16 Colors"
  print("\n" .. name .. ":")
  print(string.rep("=", 40))

  for i = 0, 15 do
    local key = string.format("base%02X", i)
    local color = colors[key]
    if color then print(string.format("  %s: %s - %s", key, color, M.definitions[key] or "")) end
  end
  print(string.rep("=", 40) .. "\n")
end

--- Convert base16 to ANSI escape codes (for terminal testing)
--- @param colors table Base16 colors
--- @return table ANSI codes
function M.to_ansi(colors)
  local function hex_to_ansi(hex)
    local r = tonumber(hex:sub(2, 3), 16)
    local g = tonumber(hex:sub(4, 5), 16)
    local b = tonumber(hex:sub(6, 7), 16)
    return string.format("\27[38;2;%d;%d;%dm", r, g, b)
  end

  local ansi = {}
  for i = 0, 15 do
    local key = string.format("base%02X", i)
    ansi[key] = hex_to_ansi(colors[key] or "#000000")
  end
  ansi.reset = "\27[0m"

  return ansi
end

--- Quick theme generator (for testing)
--- @param name string Theme name
--- @param bg string Background color
--- @param fg string Foreground color
--- @param accent string Accent color
--- @return table Theme module
function M.quick_theme(name, bg, fg, accent)
  return {
    name = name,
    base16 = M.generate({ bg = bg, fg = fg, base08 = accent }),
    palette = { bg = bg, fg = fg, accent = accent },
    get = function(_opts, plt)
      return {
        ui = { bg = plt.bg, fg = plt.fg },
        syn = { keyword = plt.accent },
      }
    end,
  }
end

--- Example base16 palettes
M.examples = {
  gruvbox_dark = {
    base00 = "#282828",
    base01 = "#3c3836",
    base02 = "#504945",
    base03 = "#665c54",
    base04 = "#bdae93",
    base05 = "#ebdbb2",
    base06 = "#ebdbb2",
    base07 = "#fbf1c7",
    base08 = "#fb4934",
    base09 = "#fe8019",
    base0A = "#fabd2f",
    base0B = "#b8bb26",
    base0C = "#8ec07c",
    base0D = "#83a598",
    base0E = "#d3869b",
    base0F = "#d65d0e",
  },
}

return M
