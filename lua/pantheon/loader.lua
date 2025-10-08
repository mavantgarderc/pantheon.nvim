local M = {}

local theme_cache = {}

local function get_theme_path(universe, variant)
    local universe_map = {
        ["lantern-corps"] = "dc.lantern-corps",
        ["batman"] = "dc.batman",
        ["superman"] = "dc.superman",
        ["spider-verse"] = "marvel.spider-verse",
        -- Add more as you create them
    }

    local mapped = universe_map[universe]
    if not mapped then
        error("Unknown universe: " .. universe .. "\nAvailable: " .. vim.inspect(vim.tbl_keys(universe_map)))
    end

    return "pantheon.themes." .. mapped .. "." .. variant
end

local function load_theme_module(universe, variant)
    local cache_key = universe .. "/" .. variant

    if theme_cache[cache_key] then
        return theme_cache[cache_key]
    end

    local theme_path = get_theme_path(universe, variant)
    local ok, theme = pcall(require, theme_path)

    if not ok then
        error("Failed to load theme: " .. cache_key .. "\n" .. theme)
    end

    if not theme.colors or not theme.name then
        error("Invalid theme module: " .. theme_path .. "\nMissing colors or name")
    end

    theme_cache[cache_key] = theme
    return theme
end

M.load = function(theme_spec)
    local universe, variant = require("pantheon.config").parse_theme(theme_spec)

    local theme = load_theme_module(universe, variant)

    local config = _G.pantheon_config or require("pantheon.config").defaults

    local colors = vim.tbl_deep_extend("force", theme.colors, config.overrides.colors)

    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.g.colors_name = "pantheon"
    vim.o.termguicolors = true

    require("pantheon.core.highlights").apply(colors, config)

    if config.terminal_colors then
        require("pantheon.core.highlights").apply_terminal(colors)
    end

    vim.notify("Pantheon: Loaded " .. theme.name, vim.log.levels.INFO)
end

M.clear_cache = function()
    theme_cache = {}
    for key in pairs(package.loaded) do
        if key:match("^pantheon%.themes%.") then
            package.loaded[key] = nil
        end
    end
end

return M
