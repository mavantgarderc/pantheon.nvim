local M = {}

local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

M.apply = function(colors, config)
    local c = colors
    local styles = config.styles

    -- Editor UI
    hl('Normal', { fg = c.base05, bg = c.base00 })
    hl('NormalFloat', { fg = c.base05, bg = c.base01 })
    hl('NormalNC', { fg = c.base05, bg = c.base00 })

    -- Cursor
    hl('Cursor', { fg = c.base00, bg = c.base05 })
    hl('CursorLine', { bg = c.base01 })
    hl('CursorColumn', { bg = c.base01 })
    hl('ColorColumn', { bg = c.base01 })

    -- Line numbers
    hl('LineNr', { fg = c.base03 })
    hl('CursorLineNr', { fg = c.base0B, bold = true })
    hl('SignColumn', { fg = c.base03, bg = c.base00 })

    -- Selection
    hl('Visual', { bg = c.base02 })
    hl('VisualNOS', { bg = c.base02 })

    -- Search
    hl('Search', { fg = c.base00, bg = c.base0A })
    hl('IncSearch', { fg = c.base00, bg = c.base09 })
    hl('Substitute', { fg = c.base00, bg = c.base0A })

    -- Splits & Windows
    hl('VertSplit', { fg = c.base02 })
    hl('WinSeparator', { fg = c.base02 })

    -- Statusline
    hl('StatusLine', { fg = c.base04, bg = c.base01 })
    hl('StatusLineNC', { fg = c.base03, bg = c.base01 })

    -- Tabline
    hl('TabLine', { fg = c.base03, bg = c.base01 })
    hl('TabLineFill', { bg = c.base01 })
    hl('TabLineSel', { fg = c.base0B, bg = c.base02 })

    -- Popups
    hl('Pmenu', { fg = c.base05, bg = c.base01 })
    hl('PmenuSel', { fg = c.base00, bg = c.base0B })
    hl('PmenuSbar', { bg = c.base02 })
    hl('PmenuThumb', { bg = c.base04 })

    -- Syntax (Base16 semantic mapping)
    hl('Comment', vim.tbl_extend('force', { fg = c.base03 }, styles.comments))
    hl('Constant', { fg = c.base09 })
    hl('String', { fg = c.base0B })
    hl('Character', { fg = c.base0B })
    hl('Number', { fg = c.base09 })
    hl('Boolean', { fg = c.base09 })
    hl('Float', { fg = c.base09 })

    hl('Identifier', { fg = c.base08 })
    hl('Function', vim.tbl_extend('force', { fg = c.base0D }, styles.functions))

    hl('Statement', { fg = c.base0E })
    hl('Conditional', { fg = c.base0E })
    hl('Repeat', { fg = c.base0E })
    hl('Label', { fg = c.base0E })
    hl('Operator', { fg = c.base05 })
    hl('Keyword', vim.tbl_extend('force', { fg = c.base0E }, styles.keywords))
    hl('Exception', { fg = c.base0E })

    hl('PreProc', { fg = c.base0A })
    hl('Include', { fg = c.base0D })
    hl('Define', { fg = c.base0E })
    hl('Macro', { fg = c.base08 })
    hl('PreCondit', { fg = c.base0A })

    hl('Type', { fg = c.base0A })
    hl('StorageClass', { fg = c.base0A })
    hl('Structure', { fg = c.base0E })
    hl('Typedef', { fg = c.base0A })

    hl('Special', { fg = c.base0C })
    hl('SpecialChar', { fg = c.base0F })
    hl('Tag', { fg = c.base0A })
    hl('Delimiter', { fg = c.base0F })
    hl('SpecialComment', { fg = c.base08 })
    hl('Debug', { fg = c.base08 })

    -- Diagnostics
    hl('DiagnosticError', { fg = c.base08 })
    hl('DiagnosticWarn', { fg = c.base0E })
    hl('DiagnosticInfo', { fg = c.base0C })
    hl('DiagnosticHint', { fg = c.base0D })

    -- Git
    hl('DiffAdd', { fg = c.base0B, bg = c.base00 })
    hl('DiffChange', { fg = c.base0E, bg = c.base00 })
    hl('DiffDelete', { fg = c.base08, bg = c.base00 })
    hl('DiffText', { fg = c.base0D, bg = c.base01 })

    -- TreeSitter (basic support for now)
    hl('@variable', vim.tbl_extend('force', { fg = c.base05 }, styles.variables))
    hl('@variable.builtin', { fg = c.base09 })
    hl('@variable.parameter', { fg = c.base08 })
    hl('@variable.member', { fg = c.base08 })

    hl('@function', { link = 'Function' })
    hl('@function.call', { fg = c.base0D })
    hl('@function.builtin', { fg = c.base0D })

    hl('@keyword', { link = 'Keyword' })
    hl('@keyword.return', { fg = c.base0E })
    hl('@keyword.function', { fg = c.base0E })

    hl('@string', { link = 'String' })
    hl('@number', { link = 'Number' })
    hl('@boolean', { link = 'Boolean' })
    hl('@type', { link = 'Type' })
    hl('@operator', { link = 'Operator' })

    -- Apply user highlight overrides
    for group, opts in pairs(config.overrides.highlights) do
        hl(group, opts)
    end
end

-- Apply terminal colors
M.apply_terminal = function(colors)
    vim.g.terminal_color_0 = colors.base00
    vim.g.terminal_color_1 = colors.base08
    vim.g.terminal_color_2 = colors.base0B
    vim.g.terminal_color_3 = colors.base0A
    vim.g.terminal_color_4 = colors.base0D
    vim.g.terminal_color_5 = colors.base0E
    vim.g.terminal_color_6 = colors.base0C
    vim.g.terminal_color_7 = colors.base05
    vim.g.terminal_color_8 = colors.base03
    vim.g.terminal_color_9 = colors.base08
    vim.g.terminal_color_10 = colors.base0B
    vim.g.terminal_color_11 = colors.base0A
    vim.g.terminal_color_12 = colors.base0D
    vim.g.terminal_color_13 = colors.base0E
    vim.g.terminal_color_14 = colors.base0C
    vim.g.terminal_color_15 = colors.base07
    vim.g.terminal_color_background = colors.base00
    vim.g.terminal_color_foreground = colors.base05
end

return M
