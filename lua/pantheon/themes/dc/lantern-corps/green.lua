local M = {}

-- Inherit Lantern Corps base
local lantern_base = require('pantheon.themes.dc.lantern-corps')

-- Green Lantern color palette
-- Based on Hal Jordan / John Stewart's Green Lantern Corps
-- Willpower energy colors: bright greens with blue-green accents
M.colors = vim.tbl_extend('force', lantern_base.colors, {
    -- Willpower green accents
    base08 = '#1ee06b', -- Bright willpower green (errors/variables)
    base09 = '#3ef785', -- Light green (numbers/constants)
    base0A = '#20ffaa', -- Cyan-green (warnings/classes)
    base0B = '#00ff88', -- Pure willpower green (strings)
    base0C = '#00ddaa', -- Teal (support/regex)
    base0D = '#00cc99', -- Darker green (functions)
    base0E = '#1ea876', -- Deep green (keywords)
    base0F = '#28ff94', -- Bright accent (special)
})

M.name = 'Lantern Corps - Green (Willpower)'
M.author = 'Pantheon.nvim'
M.description = 'In brightest day, in blackest night, no syntax error shall escape my sight!'

return M
