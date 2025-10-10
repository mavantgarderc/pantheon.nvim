local M = {}
local theme_cache = {}

local function get_theme_path(universe, variant)
    local universe_map = {
        ["lantern-corps"] = "dc.lantern-corps",
        ["justice-league"] = "dc.justice-league",
    }

    local mapped = universe_map[universe]
    if not mapped then
        error("Unknown universe: " .. universe)
    end

    return "pantheon.themes." .. mapped .. "." .. variant
end

local function load_theme_module(universe, variant)
    local cache_key = universe .. "/" .. variant

    if theme_cache[cache_key] then
        return theme_cache[cache_key]
    end

    local theme_path = get_theme_path(universe, variant)
    local ok, theme_spec = pcall(require, theme_path)

    if not ok then
        error("Failed to load theme: " .. cache_key .. "\n" .. theme_spec)
    end

    -- Convert theme spec to full theme using palette system
    local theme = require("pantheon.palette").create_theme(theme_spec)

    theme_cache[cache_key] = theme
    return theme
end

M.load = function(theme_spec)
    local universe, variant = require("pantheon.config").parse_theme(theme_spec)
    local theme = load_theme_module(universe, variant)
    local config = _G.pantheon_config or require("pantheon.config").defaults

    -- Apply color overrides
    if config.overrides.colors then
        theme.colors = vim.tbl_deep_extend("force", theme.colors, config.overrides.colors)
    end

    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.g.colors_name = "pantheon"
    vim.o.termguicolors = true

    require("pantheon.core.highlights").apply(theme, config)

    if config.terminal_colors then
        require("pantheon.core.highlights").apply_terminal(theme)
    end

    vim.notify("Pantheon: Loaded " .. theme.name, vim.log.levels.INFO)
end

M.clear_cache = function()
    theme_cache = {}
    for key in pairs(package.loaded) do
        if key:match("^pantheon%.") then
            package.loaded[key] = nil
        end
    end
end

return M
