local M = {}

-- Base16 color definitions and their semantic meanings
M.definitions = {
  base00 = { name = "Default Background", usage = "Main background color" },
  base01 = { name = "Lighter Background", usage = "Statusline, line numbers, selection background" },
  base02 = { name = "Selection Background", usage = "Visual mode selection" },
  base03 = { name = "Comments/Invisibles", usage = "Comments, line highlighting, disabled text" },
  base04 = { name = "Dark Foreground", usage = "Statusline foreground, secondary text" },
  base05 = { name = "Default Foreground", usage = "Main text color, caret, delimiters" },
  base06 = { name = "Light Foreground", usage = "Bright text, unused in most themes" },
  base07 = { name = "Light Background", usage = "Brightest text, rarely used" },

  -- Accent colors (semantic)
  base08 = { name = "Red/Variables", usage = "Variables, XML tags, markup link text, diff deleted" },
  base09 = { name = "Orange/Constants", usage = "Integers, boolean, constants, XML attributes" },
  base0A = { name = "Yellow/Classes", usage = "Classes, markup bold, search background" },
  base0B = { name = "Green/Strings", usage = "Strings, inherited class, markup code, diff inserted" },
  base0C = { name = "Cyan/Support", usage = "Support, regex, escape chars, markup quotes" },
  base0D = { name = "Blue/Functions", usage = "Functions, methods, attribute IDs, headings" },
  base0E = { name = "Magenta/Keywords", usage = "Keywords, storage, selector, diff changed" },
  base0F = { name = "Brown/Deprecated", usage = "Deprecated, embedded language tags" },
}

-- Validate a Base16 color scheme
-- Returns: true/false, error_message
M.validate = function(colors)
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
    if not colors[key] then return false, "Missing required Base16 color: " .. key end

    -- Validate hex format
    if not colors[key]:match("^#%x%x%x%x%x%x$") then return false, "Invalid hex color for " .. key .. ": " .. colors[key] end
  end

  return true, nil
end

-- Generate a Base16 scheme from minimal input
-- Useful for quick theme prototyping
M.generate = function(opts)
  opts = opts or {}

  -- Require at minimum: background, foreground, and one accent
  if not opts.bg or not opts.fg or not opts.accent then error("base16.generate requires: bg, fg, accent") end

  local colors_util = require("pantheon.utils.colors")

  -- Generate background shades
  local base00 = opts.bg
  local base01 = colors_util.lighten(base00, 0.05)
  local base02 = colors_util.lighten(base00, 0.10)
  local base03 = colors_util.lighten(base00, 0.20)

  -- Generate foreground shades
  local base05 = opts.fg
  local base04 = colors_util.darken(base05, 0.20)
  local base06 = colors_util.lighten(base05, 0.10)
  local base07 = colors_util.lighten(base05, 0.20)

  -- Generate accent colors (variations of the main accent)
  local accent = opts.accent

  return {
    base00 = base00,
    base01 = base01,
    base02 = base02,
    base03 = base03,
    base04 = base04,
    base05 = base05,
    base06 = base06,
    base07 = base07,

    -- Accent variations (you may want to customize these)
    base08 = colors_util.blend(accent, "#ff0000", 0.5), -- Reddish
    base09 = colors_util.blend(accent, "#ff8800", 0.5), -- Orange
    base0A = colors_util.blend(accent, "#ffff00", 0.5), -- Yellow
    base0B = accent, -- Main accent
    base0C = colors_util.blend(accent, "#00ffff", 0.5), -- Cyan
    base0D = colors_util.blend(accent, "#0088ff", 0.5), -- Blue
    base0E = colors_util.blend(accent, "#ff00ff", 0.5), -- Magenta
    base0F = colors_util.darken(accent, 0.3), -- Dark accent
  }
end

-- Print Base16 color scheme with descriptions
M.print = function(colors, name)
  name = name or "Base16 Theme"

  print("=== " .. name .. " ===")
  print("")
  print("Backgrounds & Foregrounds:")
  for i = 0, 7 do
    local key = string.format("base%02X", i)
    local def = M.definitions[key]
    print(string.format("  %-8s %s  (%s)", key, colors[key], def.name))
  end

  print("")
  print("Accent Colors:")
  for i = 8, 15 do
    local key = string.format("base%02X", i)
    local def = M.definitions[key]
    print(string.format("  %-8s %s  (%s)", key, colors[key], def.name))
  end
end

-- Convert Base16 to terminal ANSI colors
M.to_ansi = function(colors)
  return {
    -- Normal colors (0-7)
    [0] = colors.base00, -- Black
    [1] = colors.base08, -- Red
    [2] = colors.base0B, -- Green
    [3] = colors.base0A, -- Yellow
    [4] = colors.base0D, -- Blue
    [5] = colors.base0E, -- Magenta
    [6] = colors.base0C, -- Cyan
    [7] = colors.base05, -- White

    -- Bright colors (8-15)
    [8] = colors.base03, -- Bright Black (Gray)
    [9] = colors.base08, -- Bright Red
    [10] = colors.base0B, -- Bright Green
    [11] = colors.base0A, -- Bright Yellow
    [12] = colors.base0D, -- Bright Blue
    [13] = colors.base0E, -- Bright Magenta
    [14] = colors.base0C, -- Bright Cyan
    [15] = colors.base07, -- Bright White
  }
end

-- Quick theme creator using Base16
-- Usage:
--   local theme = base16.quick_theme("My Theme", "#000000", "#ffffff", "#00ff00")
M.quick_theme = function(name, bg, fg, accent)
  local base16 = M.generate({ bg = bg, fg = fg, accent = accent })

  return {
    name = name,
    author = "Base16 Quick Generator",
    description = "Quickly generated theme",

    base16 = base16,

    -- Auto-generate palette from base16
    palette = base16,
  }
end

-- Example usage and templates
M.examples = {
  -- Dark theme example
  dark = function()
    return M.generate({
      bg = "#1a1a1a",
      fg = "#e0e0e0",
      accent = "#00ff88",
    })
  end,

  -- Light theme example
  light = function()
    return M.generate({
      bg = "#f5f5f5",
      fg = "#333333",
      accent = "#0066cc",
    })
  end,

  -- High contrast
  high_contrast = function()
    return M.generate({
      bg = "#000000",
      fg = "#ffffff",
      accent = "#ff0000",
    })
  end,
}

return M

--------------------------------------------------------------------------------
-- USAGE EXAMPLES
--------------------------------------------------------------------------------

--[[

-- 1. Validate a Base16 scheme
local colors = {
  base00 = '#000000',
  base01 = '#111111',
  -- ... rest
}
local valid, err = require('pantheon.utils.base16').validate(colors)
if not valid then
  print("Invalid scheme: " .. err)
end

-- 2. Generate a theme quickly
local base16 = require('pantheon.utils.base16')
local my_colors = base16.generate({
  bg = '#0a0a0a',
  fg = '#e0e0e0',
  accent = '#00ff88'  -- Your character's main color
})

-- 3. Print color scheme for debugging
base16.print(my_colors, "My Theme")

-- 4. Create a quick theme
local theme = base16.quick_theme(
  "Test Theme",
  "#1a1a1a",  -- background
  "#e0e0e0",  -- foreground
  "#ff0000"   -- accent
)

-- 5. Use example templates
local dark_colors = base16.examples.dark()
local light_colors = base16.examples.light()

--]]
