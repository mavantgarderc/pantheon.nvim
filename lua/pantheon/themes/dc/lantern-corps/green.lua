local colors_util = require("pantheon.utils.colors")

-- GREEN LANTERN RICH COLOR PALETTE
-- Inspired by the emotional spectrum and willpower energy
local palette = {
    -- Background colors (space & darkness)
    cosmicBlack = "#050810",   -- Deep space
    voidBlack = "#0d1117",     -- Darker void
    starlightGray = "#161b22", -- Selection bg
    nebulaGray = "#1f242e",    -- Highlighted areas

    -- Willpower greens (the signature colors)
    willpowerBright = "#00ff88", -- Pure bright willpower
    willpowerGlow = "#1ee06b",   -- Glowing energy
    willpowerCore = "#00dd99",   -- Core energy
    willpowerDeep = "#1ea876",   -- Deep willpower
    willpowerDark = "#0d6b4d",   -- Darkest willpower

    -- Supporting greens (variety)
    emeraldBright = "#3ef785", -- Light emerald
    jadeGreen = "#28ff94",     -- Jade accents
    forestGreen = "#20c070",   -- Forest depth
    tealGlow = "#00ddaa",      -- Teal energy

    -- Accent colors (for variety in syntax)
    ringYellow = "#f0e68c",    -- Power ring glow
    constructBlue = "#4dd4e8", -- Construct energy
    oathWhite = "#e6f7f0",     -- Oath recitation
    guardianGold = "#ffcc66",  -- Guardian symbols

    -- UI grays (subtle)
    shadowGray = "#3e4451", -- Comments
    dimGray = "#565c64",    -- Inactive UI
    stoneGray = "#abb2bf",  -- Active text
    lightGray = "#c8ccd4",  -- Bright text

    -- Status colors
    dangerRed = "#e06c75",     -- Errors
    warningOrange = "#e5c07b", -- Warnings
    infoBlue = "#61afef",      -- Info
}

-- THEME SPECIFICATION
return {
    name = "Lantern Corps - Green (Willpower)",
    author = "Pantheon.nvim",
    description = "In brightest day, in blackest night, no syntax error shall escape my sight!",

    -- Base16 colors (for compatibility & terminal colors)
    base16 = {
        base00 = palette.cosmicBlack,
        base01 = palette.voidBlack,
        base02 = palette.starlightGray,
        base03 = palette.shadowGray,
        base04 = palette.dimGray,
        base05 = palette.stoneGray,
        base06 = palette.lightGray,
        base07 = palette.oathWhite,
        base08 = palette.willpowerGlow,
        base09 = palette.emeraldBright,
        base0A = palette.guardianGold,
        base0B = palette.willpowerBright,
        base0C = palette.tealGlow,
        base0D = palette.constructBlue,
        base0E = palette.willpowerCore,
        base0F = palette.jadeGreen,
    },

    -- Rich palette (all colors available)
    palette = palette,

    -- Semantic color mappings (how colors are used)
    semantic = {
        syn = {
            string = palette.willpowerBright, -- Strings glow with willpower
            number = palette.emeraldBright,   -- Numbers are bright
            boolean = palette.jadeGreen,      -- Booleans are jade
            keyword = palette.willpowerCore,  -- Keywords are core energy
            operator = palette.tealGlow,      -- Operators are teal
            func = palette.constructBlue,     -- Functions are construct energy
            type = palette.guardianGold,      -- Types are guardian gold
            variable = palette.stoneGray,     -- Variables are neutral
            comment = palette.shadowGray,     -- Comments fade to shadow
            constant = palette.ringYellow,    -- Constants glow like the ring
            special = palette.willpowerGlow,  -- Special chars glow
        },

        ui = {
            bg = palette.cosmicBlack,
            bg_dim = palette.voidBlack,
            bg_highlight = palette.starlightGray,

            fg = palette.stoneGray,
            fg_dim = palette.dimGray,
            fg_bright = palette.oathWhite,

            border = palette.willpowerDark, -- Borders have willpower
            float = palette.voidBlack,

            selection = palette.nebulaGray,
            cursorline = palette.voidBlack,

            line_nr = palette.shadowGray,
            line_nr_active = palette.willpowerCore, -- Active line is willpower
        },

        diag = {
            error = palette.dangerRed,
            warning = palette.warningOrange,
            info = palette.infoBlue,
            hint = palette.tealGlow,
        },

        git = {
            add = palette.willpowerBright,
            change = palette.guardianGold,
            delete = palette.dangerRed,
        },

        diff = {
            add = palette.willpowerBright,
            change = palette.willpowerCore,
            delete = palette.dangerRed,
            text = palette.constructBlue,
        },
    },
}
