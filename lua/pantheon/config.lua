local M = {}

M.defaults = {
    theme = "lantern-corps/green",

    styles = {
        comments = { italic = true },
        keywords = { bold = false },
        functions = { bold = false },
        variables = {},
    },

    overrides = {
        colors = {}, -- e.g., { base0B = "#custom" }
        highlights = {}, -- e.g., { Comment = { fg = "#custom" } }
    },

    integrations = {
        cmp = true,
        telescope = true,
        gitsigns = true,
        lualine = true,
    },

    terminal_colors = true,
}

M.parse_theme = function(theme)
    if type(theme) == 'table' then
        return theme.universe, theme.variant
    end

    local universe, variant = theme:match('([^/]+)/([^/]+)')
    if not universe then
        universe, variant = theme:match('([^.]+)%.([^.]+)')
    end

    if not universe or not variant then
        error('Invalid theme format: ' .. theme ..
            '\nUse: "universe/variant", "universe.variant", or { universe = "...", variant = "..." }')
    end

    return universe, variant
end

M.setup = function(user_config)
    local config = vim.tbl_deep_extend('force', M.defaults, user_config)

    local ok, universe, variant = pcall(M.parse_theme, config.theme)
    if not ok then
        vim.notify('Pantheon: ' .. universe, vim.log.levels.ERROR)
        config.theme = M.defaults.theme
    end

    return config
end

return M
