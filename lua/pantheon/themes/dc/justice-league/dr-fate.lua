local colors_util = require("pantheon.utils.colors")

-- Doctor Fate: cosmic mystic, gold + deep blue + arcane white
local palette = {
    cosmicBlack = "#04050a",
    voidBlack = "#0b0d13",
    starlightGray = "#12141b",
    nebulaGray = "#181a24",

    fateGold = "#ffd966",
    fateBlue = "#2f5fa6",
    arcaneWhite = "#f2f7ff",
    helmetBronze = "#b07a2d",
    voidPurple = "#8b66cc",

    runeCyan = "#66e0ff",
    stoneGray = "#b8c7d6",
    shadowGray = "#2b2f36",
    dimGray = "#5b6069",

    accentSilver = "#d9e6ff",
    accentRose = "#ffb8d9",
    lightGray = "#e9f2ff",

    dangerRed = "#ff6666",
    warningOrange = "#ffd280",
    infoBlue = "#61afef",
}

return {
    name = "Justice League - Dr Fate",
    author = "Pantheon.nvim",
    description = "Order of destiny — gold mysticism and cosmic law.",

    base16 = {
        base00 = palette.cosmicBlack,
        base01 = palette.voidBlack,
        base02 = palette.starlightGray,
        base03 = palette.shadowGray,
        base04 = palette.dimGray,
        base05 = palette.stoneGray,
        base06 = palette.lightGray,
        base07 = palette.arcaneWhite,
        base08 = palette.fateGold,
        base09 = palette.runeCyan,
        base0A = palette.fateGold,
        base0B = palette.runeCyan,
        base0C = palette.runeCyan,
        base0D = palette.fateBlue,
        base0E = palette.voidPurple,
        base0F = palette.helmetBronze,
    },

    palette = palette,

    semantic = {
        syn = {
            string = palette.fateGold,
            number = palette.runeCyan,
            boolean = palette.voidPurple,
            keyword = palette.fateBlue,
            operator = palette.runeCyan,
            func = palette.voidPurple,
            type = palette.helmetBronze,
            variable = palette.stoneGray,
            comment = palette.shadowGray,
            constant = palette.arcaneWhite,
            special = palette.fateGold,
        },

        ui = {
            bg = palette.cosmicBlack,
            bg_dim = palette.voidBlack,
            bg_highlight = palette.starlightGray,
            fg = palette.stoneGray,
            fg_dim = palette.dimGray,
            fg_bright = palette.lightGray,
            border = palette.fateBlue,
            float = palette.voidBlack,
            selection = palette.nebulaGray,
            cursorline = palette.voidBlack,
            line_nr = palette.shadowGray,
            line_nr_active = palette.fateGold,
        },

        diag = {
            error = palette.dangerRed,
            warning = palette.warningOrange,
            info = palette.infoBlue,
            hint = palette.runeCyan,
        },

        git = {
            add = palette.fateGold,
            change = palette.helmetBronze,
            delete = palette.dangerRed,
        },

        diff = {
            add = palette.fateGold,
            change = palette.voidPurple,
            delete = palette.dangerRed,
            text = palette.runeCyan,
        },
    },
}
