local M = {}

local colors = require("pantheon.utils.colors")

local dc_base = require("pantheon.themes.dc")

M.colors = vim.tbl_extend("force", dc_base.colors, {
    base00 = "#050810", -- Deeper space black
    base01 = "#0d1117", -- Darker sidebars
    base02 = "#161b22", -- Selection
})

M.name = "Lantern Corps Base"
M.author = "Pantheon.nvim"

return M
