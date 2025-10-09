local colors_util = require("pantheon.utils.colors")

local palette = {
    cosmicBlack = "#0d0d0f",
    voidBlack = "#151518",
    starlightGray = "#1f2024",
    nebulaGray = "#2b2c31",

    whiteCore = "#ffffff",
    whiteGlow = "#e6f7ff",
    whiteBright = "#ccffff",
    spectralTint = "#b3f0ff",
    pastelFusion = "#99e6ff",

    subtleRed = "#ff9999",
    subtleOrange = "#ffc966",
    subtleYellow = "#fff066",
    subtleGreen = "#99ffcc",
    subtleBlue = "#66ccff",
    subtleIndigo = "#b399ff",
    subtleViolet = "#cc99ff",

    accentSilver = "#e0e0e0",
    accentGold = "#ffd966",
    accentCyan = "#66ffff",

    shadowGray = "#4a4f56",
    dimGray = "#6c727b",
    stoneGray = "#cfd7df",
    lightGray = "#e9f2f7",

    dangerRed = "#e06c75",
    warningOrange = "#e5c07b",
    infoBlue = "#61afef",
}

return {
    name = "Phantom Lantern - Balanced",
    author = "Pantheon.nvim",
    description = "Harmonized fusion of all colors — calm yet complete.",

    base16 = {
        base00 = palette.cosmicBlack,
        base01 = palette.voidBlack,
        base02 = palette.starlightGray,
        base03 = palette.shadowGray,
        base04 = palette.dimGray,
        base05 = palette.stoneGray,
        base06 = palette.lightGray,
        base07 = palette.whiteCore,
        base08 = palette.subtleRed,
        base09 = palette.subtleOrange,
        base0A = palette.subtleYellow,
        base0B = palette.subtleGreen,
        base0C = palette.accentCyan,
        base0D = palette.subtleBlue,
        base0E = palette.subtleIndigo,
        base0F = palette.subtleViolet,
    },

    palette = palette,

    semantic = {
        syn = {
            string = palette.subtleGreen,
            number = palette.subtleBlue,
            boolean = palette.subtleIndigo,
            keyword = palette.subtleViolet,
            operator = palette.accentCyan,
            func = palette.subtleOrange,
            type = palette.accentGold,
            variable = palette.stoneGray,
            comment = palette.shadowGray,
            constant = palette.subtleRed,
            special = palette.whiteGlow,
        },

        ui = {
            bg = palette.cosmicBlack,
            bg_dim = palette.voidBlack,
            bg_highlight = palette.starlightGray,
            fg = palette.stoneGray,
            fg_dim = palette.dimGray,
            fg_bright = palette.lightGray,
            border = palette.whiteBright,
            float = palette.voidBlack,
            selection = palette.nebulaGray,
            cursorline = palette.voidBlack,
            line_nr = palette.shadowGray,
            line_nr_active = palette.subtleViolet,
        },

        diag = {
            error = palette.dangerRed,
            warning = palette.warningOrange,
            info = palette.infoBlue,
            hint = palette.accentCyan,
        },

        git = {
            add = palette.subtleGreen,
            change = palette.accentGold,
            delete = palette.dangerRed,
        },

        diff = {
            add = palette.subtleGreen,
            change = palette.subtleViolet,
            delete = palette.dangerRed,
            text = palette.accentCyan,
        },
    },
}
