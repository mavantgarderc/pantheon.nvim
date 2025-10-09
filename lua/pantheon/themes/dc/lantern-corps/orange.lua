local colors_util = require("pantheon.utils.colors")

local palette = {
    cosmicBlack = "#100a05",
    voidBlack = "#1a0f07",
    starlightGray = "#22150b",
    nebulaGray = "#2a1c0f",

    greedBright = "#ff9900",
    greedGlow = "#ffb84d",
    greedCore = "#ff7f00",
    greedDeep = "#cc6600",
    greedDark = "#993d00",

    amberLight = "#ffcc66",
    moltenGold = "#ffaa33",
    coinBronze = "#cc8844",
    sparkOrange = "#ff9933",

    accentYellow = "#ffe699",
    accentGreen = "#33ff99",
    accentTeal = "#33cccc",
    accentSilver = "#e0e0e0",

    shadowGray = "#4b463d",
    dimGray = "#7a6f64",
    stoneGray = "#c2b8a7",
    lightGray = "#e8dcc5",

    dangerRed = "#e06c75",
    warningOrange = "#e5c07b",
    infoBlue = "#61afef",
}

return {
    name = "Lantern Corps - Orange (Greed)",
    author = "Pantheon.nvim",
    description = "What's mine is mine, and mine alone.",

    base16 = {
        base00 = palette.cosmicBlack,
        base01 = palette.voidBlack,
        base02 = palette.starlightGray,
        base03 = palette.shadowGray,
        base04 = palette.dimGray,
        base05 = palette.stoneGray,
        base06 = palette.lightGray,
        base07 = palette.accentSilver,
        base08 = palette.greedGlow,
        base09 = palette.sparkOrange,
        base0A = palette.accentYellow,
        base0B = palette.greedBright,
        base0C = palette.accentTeal,
        base0D = palette.accentGreen,
        base0E = palette.greedCore,
        base0F = palette.moltenGold,
    },

    palette = palette,

    semantic = {
        syn = {
            string = palette.greedBright,
            number = palette.amberLight,
            boolean = palette.coinBronze,
            keyword = palette.greedCore,
            operator = palette.accentTeal,
            func = palette.accentGreen,
            type = palette.accentYellow,
            variable = palette.stoneGray,
            comment = palette.shadowGray,
            constant = palette.moltenGold,
            special = palette.greedGlow,
        },

        ui = {
            bg = palette.cosmicBlack,
            bg_dim = palette.voidBlack,
            bg_highlight = palette.starlightGray,
            fg = palette.stoneGray,
            fg_dim = palette.dimGray,
            fg_bright = palette.lightGray,
            border = palette.greedDark,
            float = palette.voidBlack,
            selection = palette.nebulaGray,
            cursorline = palette.voidBlack,
            line_nr = palette.shadowGray,
            line_nr_active = palette.greedCore,
        },

        diag = {
            error = palette.dangerRed,
            warning = palette.warningOrange,
            info = palette.infoBlue,
            hint = palette.amberLight,
        },

        git = {
            add = palette.greedBright,
            change = palette.accentYellow,
            delete = palette.dangerRed,
        },

        diff = {
            add = palette.greedBright,
            change = palette.greedCore,
            delete = palette.dangerRed,
            text = palette.accentTeal,
        },
    },
}
