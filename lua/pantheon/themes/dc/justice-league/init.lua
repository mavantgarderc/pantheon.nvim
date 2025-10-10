local M = {}

local colors = require("pantheon.utils.colors")

local dc_base = require("pantheon.themes.dc")

M.colors = vim.tbl_extend("force", dc_base.colors, {
    -- Cosmic, neutral foundation shared across all Justice League themes
    base00 = "#060710", -- Deep space black (editor background)
    base01 = "#0b0f18", -- Void edge shadow
    base02 = "#141a24", -- Subtle cosmic gray-blue depth
})

M.name = "Justice League Base"
M.author = "Pantheon.nvim"

return M
