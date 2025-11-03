local M = {}

-- DC Universe shared background colors
-- All DC themes will inherit these, ensuring visual consistency
M.colors = {
  -- Background shades (dark to light)
  base00 = "#0a0e14", -- Default background (deep space black)
  base01 = "#131720", -- Lighter background (status lines, sidebars)
  base02 = "#1f242e", -- Selection background
  base03 = "#3e4451", -- Comments, line highlighting

  -- Foreground shades (dark to light)
  base04 = "#565c64", -- Dark foreground (status bars)
  base05 = "#abb2bf", -- Default foreground
  base06 = "#b6bdca", -- Light foreground
  base07 = "#c8ccd4", -- Lightest foreground

  -- Accent colors will be overridden by specific themes
  -- These are just placeholders
  base08 = "#e06c75", -- Red
  base09 = "#d19a66", -- Orange
  base0A = "#e5c07b", -- Yellow
  base0B = "#98c379", -- Green
  base0C = "#56b6c2", -- Cyan
  base0D = "#61afef", -- Blue
  base0E = "#c678dd", -- Purple
  base0F = "#be5046", -- Brown
}

M.name = "DC Universe Base"
M.author = "Pantheon.nvim"

return M
