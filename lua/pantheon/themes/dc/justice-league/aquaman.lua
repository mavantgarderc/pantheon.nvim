local colors_util = require("pantheon.utils.colors")

-- Aquaman: regal ocean blues, coral accent, gold trident
local palette = {
    cosmicBlack = "#04101a",
    voidBlack = "#091520",
    starlightGray = "#121922",
    nebulaGray = "#16232c",

    deepSea = "#0f5f7a",
    tridentGold = "#ffd05a",
    coral = "#ff7a66",
    kelpGreen = "#228866",
    surfCyan = "#44d9ff",

    aquamarine = "#66d9c8",
    stoneGray = "#a9c3c8",
    shadowGray = "#243033",
    dimGray = "#58646a",

    accentPearl = "#eaf9ff",
    accentBronze = "#b07a3a",
    lightGray = "#e6f7f9",

    dangerRed = "#ff6677",
    warningOrange = "#ffc870",
    infoBlue = "#61afef",
}

return {
    name = "Justice League - Aquaman",
    author = "Pantheon.nvim",
    description = "King of the seas — regal deep blues and coral life.",

    base16 = {
        base00 = palette.cosmicBlack,
        base01 = palette.voidBlack,
        base02 = palette.starlightGray,
        base03 = palette.shadowGray,
        base04 = palette.dimGray,
        base05 = palette.stoneGray,
        base06 = palette.lightGray,
        base07 = palette.accentPearl,
        base08 = palette.coral,
        base09 = palette.aquamarine,
        base0A = palette.tridentGold,
        base0B = palette.kelpGreen,
        base0C = palette.surfCyan,
        base0D = palette.deepSea,
        base0E = palette.accentBronze,
        base0F = palette.accentPearl,
    },

    palette = palette,

    semantic = {
        syn = {
            string = palette.tridentGold,
            number = palette.aquamarine,
            boolean = palette.kelpGreen,
            keyword = palette.deepSea,
            operator = palette.surfCyan,
            func = palette.coral,
            type = palette.accentBronze,
            variable = palette.stoneGray,
            comment = palette.shadowGray,
            constant = palette.accentPearl,
            special = palette.tridentGold,
        },

        ui = {
            bg = palette.cosmicBlack,
            bg_dim = palette.voidBlack,
            bg_highlight = palette.starlightGray,
            fg = palette.stoneGray,
            fg_dim = palette.dimGray,
            fg_bright = palette.lightGray,
            border = palette.deepSea,
            float = palette.voidBlack,
            selection = palette.nebulaGray,
            cursorline = palette.voidBlack,
            line_nr = palette.shadowGray,
            line_nr_active = palette.tridentGold,
        },

        diag = {
            error = palette.dangerRed,
            warning = palette.warningOrange,
            info = palette.infoBlue,
            hint = palette.kelpGreen,
        },

        git = {
            add = palette.kelpGreen,
            change = palette.tridentGold,
            delete = palette.dangerRed,
        },

        diff = {
            add = palette.kelpGreen,
            change = palette.deepSea,
            delete = palette.dangerRed,
            text = palette.surfCyan,
        },
    },
}
