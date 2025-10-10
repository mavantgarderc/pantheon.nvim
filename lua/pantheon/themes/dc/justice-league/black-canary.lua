local colors_util = require("pantheon.utils.colors")

-- Black Canary: noir + stage light, sharp white vocal energy
local palette = {
    cosmicBlack = "#050407",
    voidBlack = "#0a0a0d",
    starlightGray = "#12121a",
    nebulaGray = "#17171f",

    stageBlack = "#0b0b0f",
    canaryWhite = "#ffffff",
    vocalGlow = "#d1f7ff",
    leatherBlack = "#141414",
    accentGold = "#ffd966",

    stoneGray = "#afb6bb",
    shadowGray = "#2c2f33",
    dimGray = "#56585b",
    lightGray = "#eef6f7",

    accentRose = "#ff99cc",
    accentBlue = "#66b0ff",
    dangerRed = "#ff6666",

    warningOrange = "#ffc870",
    infoBlue = "#61afef",
}

return {
    name = "Justice League - Black Canary",
    author = "Pantheon.nvim",
    description = "Voice as weapon — noir, sharp, and piercing.",

    base16 = {
        base00 = palette.cosmicBlack,
        base01 = palette.voidBlack,
        base02 = palette.starlightGray,
        base03 = palette.shadowGray,
        base04 = palette.dimGray,
        base05 = palette.stoneGray,
        base06 = palette.lightGray,
        base07 = palette.canaryWhite,
        base08 = palette.accentRose,
        base09 = palette.vocalGlow,
        base0A = palette.accentGold,
        base0B = palette.canaryWhite,
        base0C = palette.accentBlue,
        base0D = palette.accentBlue,
        base0E = palette.stageBlack,
        base0F = palette.leatherBlack,
    },

    palette = palette,

    semantic = {
        syn = {
            string = palette.canaryWhite,
            number = palette.vocalGlow,
            boolean = palette.accentBlue,
            keyword = palette.stageBlack,
            operator = palette.leatherBlack,
            func = palette.accentBlue,
            type = palette.accentGold,
            variable = palette.stoneGray,
            comment = palette.shadowGray,
            constant = palette.accentRose,
            special = palette.canaryWhite,
        },

        ui = {
            bg = palette.cosmicBlack,
            bg_dim = palette.voidBlack,
            bg_highlight = palette.starlightGray,
            fg = palette.stoneGray,
            fg_dim = palette.dimGray,
            fg_bright = palette.lightGray,
            border = palette.leatherBlack,
            float = palette.voidBlack,
            selection = palette.nebulaGray,
            cursorline = palette.voidBlack,
            line_nr = palette.shadowGray,
            line_nr_active = palette.canaryWhite,
        },

        diag = {
            error = palette.dangerRed,
            warning = palette.warningOrange,
            info = palette.infoBlue,
            hint = palette.vocalGlow,
        },

        git = {
            add = palette.canaryWhite,
            change = palette.accentGold,
            delete = palette.dangerRed,
        },

        diff = {
            add = palette.canaryWhite,
            change = palette.stageBlack,
            delete = palette.dangerRed,
            text = palette.accentBlue,
        },
    },
}
