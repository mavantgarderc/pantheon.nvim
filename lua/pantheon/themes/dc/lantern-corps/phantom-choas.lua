local colors_util = require("pantheon.utils.colors")

local palette = {
    cosmicBlack = "#05040a",
    voidBlack = "#0b0913",
    starlightGray = "#14121f",
    nebulaGray = "#1e1a2a",

    chaosRed = "#ff5555",
    chaosOrange = "#ffaa33",
    chaosYellow = "#fff066",
    chaosGreen = "#33ff99",
    chaosBlue = "#33ccff",
    chaosIndigo = "#8f66ff",
    chaosViolet = "#cc66ff",
    chaosWhite = "#ffffff",
    chaosBlack = "#222222",

    accentCyan = "#66ffff",
    accentRose = "#ff99cc",
    accentGold = "#ffd966",
    accentTeal = "#33ccaa",
    accentSilver = "#d9ccff",

    shadowGray = "#3f3b4f",
    dimGray = "#5c5770",
    stoneGray = "#b1a7d4",
    lightGray = "#e0d9ff",

    dangerRed = "#ff6677",
    warningOrange = "#ffc870",
    infoBlue = "#66b0ff",
}

return {
    name = "Phantom Lantern - Chaos",
    author = "Pantheon.nvim",
    description = "Unstable, shifting spectrum — all emotions collide.",

    base16 = {
        base00 = palette.cosmicBlack,
        base01 = palette.voidBlack,
        base02 = palette.starlightGray,
        base03 = palette.shadowGray,
        base04 = palette.dimGray,
        base05 = palette.stoneGray,
        base06 = palette.lightGray,
        base07 = palette.chaosWhite,
        base08 = palette.chaosRed,
        base09 = palette.chaosOrange,
        base0A = palette.chaosYellow,
        base0B = palette.chaosGreen,
        base0C = palette.chaosBlue,
        base0D = palette.chaosIndigo,
        base0E = palette.chaosViolet,
        base0F = palette.accentGold,
    },

    palette = palette,

    semantic = {
        syn = {
            string = palette.chaosGreen,
            number = palette.chaosBlue,
            boolean = palette.chaosIndigo,
            keyword = palette.chaosViolet,
            operator = palette.accentTeal,
            func = palette.chaosOrange,
            type = palette.accentGold,
            variable = palette.stoneGray,
            comment = palette.shadowGray,
            constant = palette.chaosRed,
            special = palette.chaosWhite,
        },

        ui = {
            bg = palette.cosmicBlack,
            bg_dim = palette.voidBlack,
            bg_highlight = palette.starlightGray,
            fg = palette.stoneGray,
            fg_dim = palette.dimGray,
            fg_bright = palette.lightGray,
            border = palette.chaosBlack,
            float = palette.voidBlack,
            selection = palette.nebulaGray,
            cursorline = palette.voidBlack,
            line_nr = palette.shadowGray,
            line_nr_active = palette.chaosViolet,
        },

        diag = {
            error = palette.dangerRed,
            warning = palette.warningOrange,
            info = palette.infoBlue,
            hint = palette.accentCyan,
        },

        git = {
            add = palette.chaosGreen,
            change = palette.accentGold,
            delete = palette.dangerRed,
        },

        diff = {
            add = palette.chaosGreen,
            change = palette.chaosViolet,
            delete = palette.dangerRed,
            text = palette.accentTeal,
        },
    },
}
