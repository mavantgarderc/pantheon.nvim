local colors_util = require("pantheon.utils.colors")

-- Wonder Woman: warrior royalty, red + gold + royal blue
local palette = {
    cosmicBlack = "#0b0810",
    voidBlack = "#110c14",
    starlightGray = "#14131a",
    nebulaGray = "#1b1825",

    warriorRed = "#c73a3a",
    royalBlue = "#274f87",
    goddessGold = "#ffcf4a",
    lassoGlow = "#ffd78a",
    shieldBronze = "#b07a2d",

    sandBeige = "#d9c9b0",
    stoneGray = "#b8bfc9",
    shadowGray = "#3a3740",
    dimGray = "#66646b",

    accentPearl = "#fff5e6",
    accentCrimson = "#ff7a7a",
    accentAzure = "#66a2ff",

    lightGray = "#eadee6",
    dangerRed = "#e05454",
    infoBlue = "#61afef",
}

return {
    name = "Justice League - Wonder Woman",
    author = "Pantheon.nvim",
    description = "Warrior of truth — regal, fierce, and divine.",

    base16 = {
        base00 = palette.cosmicBlack,
        base01 = palette.voidBlack,
        base02 = palette.starlightGray,
        base03 = palette.shadowGray,
        base04 = palette.dimGray,
        base05 = palette.stoneGray,
        base06 = palette.lightGray,
        base07 = palette.accentPearl,
        base08 = palette.warriorRed,
        base09 = palette.lassoGlow,
        base0A = palette.goddessGold,
        base0B = palette.royalBlue,
        base0C = palette.accentAzure,
        base0D = palette.royalBlue,
        base0E = palette.shieldBronze,
        base0F = palette.sandBeige,
    },

    palette = palette,

    semantic = {
        syn = {
            string = palette.goddessGold,
            number = palette.lassoGlow,
            boolean = palette.royalBlue,
            keyword = palette.warriorRed,
            operator = palette.shieldBronze,
            func = palette.accentAzure,
            type = palette.accentPearl,
            variable = palette.stoneGray,
            comment = palette.shadowGray,
            constant = palette.sandBeige,
            special = palette.warriorRed,
        },

        ui = {
            bg = palette.cosmicBlack,
            bg_dim = palette.voidBlack,
            bg_highlight = palette.starlightGray,
            fg = palette.stoneGray,
            fg_dim = palette.dimGray,
            fg_bright = palette.lightGray,
            border = palette.goddessGold,
            float = palette.voidBlack,
            selection = palette.nebulaGray,
            cursorline = palette.voidBlack,
            line_nr = palette.shadowGray,
            line_nr_active = palette.royalBlue,
        },

        diag = {
            error = palette.dangerRed,
            warning = palette.lassoGlow,
            info = palette.infoBlue,
            hint = palette.goddessGold,
        },

        git = {
            add = palette.royalBlue,
            change = palette.goddessGold,
            delete = palette.dangerRed,
        },

        diff = {
            add = palette.royalBlue,
            change = palette.shieldBronze,
            delete = palette.dangerRed,
            text = palette.accentAzure,
        },
    },
}
