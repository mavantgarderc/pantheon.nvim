local colors_util = require("pantheon.utils.colors")

local palette = {
    cosmicBlack = "#05040a",
    voidBlack = "#0b0913",
    starlightGray = "#14121f",
    nebulaGray = "#1e1a2a",

    ultraBright = "#b366ff",
    ultraGlow = "#9d4dff",
    ultraCore = "#7a33ff",
    ultraDeep = "#5c22cc",
    ultraDark = "#3d1a99",

    spectralCyan = "#33ffff",
    spectralMagenta = "#ff33ff",
    spectralIndigo = "#6633ff",
    spectralGold = "#ffcc33",

    accentSilver = "#d9ccff",
    accentBlue = "#66ccff",
    accentRose = "#ff99cc",
    accentEmerald = "#66ffcc",

    shadowGray = "#403b4f",
    dimGray = "#5c5770",
    stoneGray = "#b1a7d4",
    lightGray = "#e0d9ff",

    dangerRed = "#ff5577",
    warningOrange = "#ffc870",
    infoBlue = "#66b0ff",
}

return {
    name = "Lantern Corps - Ultraviolet (Spectral)",
    author = "Pantheon.nvim",
    description = "Emotion beyond the visible spectrum — radiant and unseen.",

    base16 = {
        base00 = palette.cosmicBlack,
        base01 = palette.voidBlack,
        base02 = palette.starlightGray,
        base03 = palette.shadowGray,
        base04 = palette.dimGray,
        base05 = palette.stoneGray,
        base06 = palette.lightGray,
        base07 = palette.accentSilver,
        base08 = palette.ultraGlow,
        base09 = palette.spectralCyan,
        base0A = palette.spectralGold,
        base0B = palette.ultraBright,
        base0C = palette.spectralMagenta,
        base0D = palette.accentBlue,
        base0E = palette.ultraCore,
        base0F = palette.spectralIndigo,
    },

    palette = palette,

    semantic = {
        syn = {
            string = palette.ultraBright,
            number = palette.spectralCyan,
            boolean = palette.spectralIndigo,
            keyword = palette.ultraCore,
            operator = palette.spectralMagenta,
            func = palette.accentBlue,
            type = palette.spectralGold,
            variable = palette.stoneGray,
            comment = palette.shadowGray,
            constant = palette.accentRose,
            special = palette.ultraGlow,
        },

        ui = {
            bg = palette.cosmicBlack,
            bg_dim = palette.voidBlack,
            bg_highlight = palette.starlightGray,
            fg = palette.stoneGray,
            fg_dim = palette.dimGray,
            fg_bright = palette.lightGray,
            border = palette.ultraDark,
            float = palette.voidBlack,
            selection = palette.nebulaGray,
            cursorline = palette.voidBlack,
            line_nr = palette.shadowGray,
            line_nr_active = palette.ultraCore,
        },

        diag = {
            error = palette.dangerRed,
            warning = palette.warningOrange,
            info = palette.infoBlue,
            hint = palette.spectralCyan,
        },

        git = {
            add = palette.ultraBright,
            change = palette.spectralGold,
            delete = palette.dangerRed,
        },

        diff = {
            add = palette.ultraBright,
            change = palette.ultraCore,
            delete = palette.dangerRed,
            text = palette.accentBlue,
        },
    },
}
