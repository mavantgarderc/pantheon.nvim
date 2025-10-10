local colors_util = require("pantheon.utils.colors")

-- Cyborg: chrome, electric blue, red core
local palette = {
    cosmicBlack = "#030409",
    voidBlack = "#0a0a0f",
    starlightGray = "#121318",
    nebulaGray = "#171723",

    chrome = "#bfc7cf",
    coreRed = "#ff4444",
    electricBlue = "#4dd6ff",
    circuitTeal = "#33cccc",
    panelDark = "#101214",

    slate = "#778188",
    stoneGray = "#b1b8bd",
    shadowGray = "#2f3336",
    dimGray = "#52575b",

    accentLime = "#99ffcc",
    accentGold = "#ffd966",
    lightGray = "#e6eef2",

    dangerRed = "#ff6677",
    warningOrange = "#ffc870",
    infoBlue = "#61afef",
}

return {
    name = "Justice League - Cyborg",
    author = "Pantheon.nvim",
    description = "Human + machine — chrome logic and red heart.",

    base16 = {
        base00 = palette.cosmicBlack,
        base01 = palette.voidBlack,
        base02 = palette.starlightGray,
        base03 = palette.shadowGray,
        base04 = palette.dimGray,
        base05 = palette.stoneGray,
        base06 = palette.lightGray,
        base07 = palette.chrome,
        base08 = palette.coreRed,
        base09 = palette.accentGold,
        base0A = palette.accentLime,
        base0B = palette.electricBlue,
        base0C = palette.circuitTeal,
        base0D = palette.electricBlue,
        base0E = palette.chrome,
        base0F = palette.slate,
    },

    palette = palette,

    semantic = {
        syn = {
            string = palette.electricBlue,
            number = palette.accentLime,
            boolean = palette.circuitTeal,
            keyword = palette.chrome,
            operator = palette.circuitTeal,
            func = palette.electricBlue,
            type = palette.accentGold,
            variable = palette.stoneGray,
            comment = palette.shadowGray,
            constant = palette.coreRed,
            special = palette.chrome,
        },

        ui = {
            bg = palette.cosmicBlack,
            bg_dim = palette.voidBlack,
            bg_highlight = palette.starlightGray,
            fg = palette.stoneGray,
            fg_dim = palette.dimGray,
            fg_bright = palette.lightGray,
            border = palette.panelDark,
            float = palette.voidBlack,
            selection = palette.nebulaGray,
            cursorline = palette.voidBlack,
            line_nr = palette.shadowGray,
            line_nr_active = palette.electricBlue,
        },

        diag = {
            error = palette.dangerRed,
            warning = palette.warningOrange,
            info = palette.infoBlue,
            hint = palette.circuitTeal,
        },

        git = {
            add = palette.accentLime,
            change = palette.accentGold,
            delete = palette.dangerRed,
        },

        diff = {
            add = palette.accentLime,
            change = palette.chrome,
            delete = palette.dangerRed,
            text = palette.electricBlue,
        },
    },
}
