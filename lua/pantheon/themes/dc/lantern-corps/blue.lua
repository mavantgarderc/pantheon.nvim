local colors_util = require("pantheon.utils.colors")

local palette = {
    cosmicBlack = "#050810",
    voidBlack = "#0b101a",
    starlightGray = "#141c2a",
    nebulaGray = "#1b2538",

    hopeBright = "#66ccff",
    hopeGlow = "#4db8ff",
    hopeCore = "#3399ff",
    hopeDeep = "#2673cc",
    hopeDark = "#1a4d99",

    skyLight = "#80d4ff",
    azureBeam = "#33ccff",
    polarBlue = "#99e6ff",
    frostTeal = "#66ffff",

    accentSilver = "#e0f7ff",
    accentGold = "#ffe066",
    accentCoral = "#ff9980",
    accentWhite = "#e6f7ff",

    shadowGray = "#39424e",
    dimGray = "#566070",
    stoneGray = "#b0c0d4",
    lightGray = "#d7e7ff",

    dangerRed = "#ff6677",
    warningOrange = "#ffd280",
    infoBlue = "#61afef",
}

return {
    name = "Lantern Corps - Blue (Hope)",
    author = "Pantheon.nvim",
    description = "All will be well.",

    base16 = {
        base00 = palette.cosmicBlack,
        base01 = palette.voidBlack,
        base02 = palette.starlightGray,
        base03 = palette.shadowGray,
        base04 = palette.dimGray,
        base05 = palette.stoneGray,
        base06 = palette.lightGray,
        base07 = palette.accentWhite,
        base08 = palette.hopeGlow,
        base09 = palette.skyLight,
        base0A = palette.accentGold,
        base0B = palette.hopeBright,
        base0C = palette.frostTeal,
        base0D = palette.azureBeam,
        base0E = palette.hopeCore,
        base0F = palette.polarBlue,
    },

    palette = palette,

    semantic = {
        syn = {
            string = palette.hopeBright,
            number = palette.skyLight,
            boolean = palette.polarBlue,
            keyword = palette.hopeCore,
            operator = palette.frostTeal,
            func = palette.azureBeam,
            type = palette.accentGold,
            variable = palette.stoneGray,
            comment = palette.shadowGray,
            constant = palette.accentCoral,
            special = palette.hopeGlow,
        },

        ui = {
            bg = palette.cosmicBlack,
            bg_dim = palette.voidBlack,
            bg_highlight = palette.starlightGray,
            fg = palette.stoneGray,
            fg_dim = palette.dimGray,
            fg_bright = palette.accentWhite,
            border = palette.hopeDark,
            float = palette.voidBlack,
            selection = palette.nebulaGray,
            cursorline = palette.voidBlack,
            line_nr = palette.shadowGray,
            line_nr_active = palette.hopeCore,
        },

        diag = {
            error = palette.dangerRed,
            warning = palette.warningOrange,
            info = palette.infoBlue,
            hint = palette.frostTeal,
        },

        git = {
            add = palette.hopeBright,
            change = palette.accentGold,
            delete = palette.dangerRed,
        },

        diff = {
            add = palette.hopeBright,
            change = palette.hopeCore,
            delete = palette.dangerRed,
            text = palette.azureBeam,
        },
    },
}
