local colors_util = require("pantheon.utils.colors")

local palette = {
    cosmicBlack = "#050408",
    voidBlack = "#0a0910",
    starlightGray = "#14121f",
    nebulaGray = "#1b1928",

    goldBright = "#ffd700",
    goldGlow = "#ffe066",
    goldCore = "#ffcc33",
    goldDeep = "#cca300",
    goldDark = "#997a00",

    whiteRadiance = "#ffffff",
    warmWhite = "#fff8e6",
    amberAccent = "#ffbb33",

    subtleGreen = "#33ff99",
    subtleBlue = "#66ccff",
    subtleViolet = "#b399ff",

    accentSilver = "#d9ccff",
    accentTeal = "#33cccc",

    shadowGray = "#3e3b4f",
    dimGray = "#5c5770",
    stoneGray = "#b1a7d4",
    lightGray = "#e0d9ff",

    dangerRed = "#ff6677",
    warningOrange = "#ffc870",
    infoBlue = "#66b0ff",
}

return {
    name = "Lantern Corps - Gold (Godlike)",
    author = "Pantheon.nvim",
    description = "Blinding, godlike power — the ultimate authority of the emotional spectrum.",

    base16 = {
        base00 = palette.cosmicBlack,
        base01 = palette.voidBlack,
        base02 = palette.starlightGray,
        base03 = palette.shadowGray,
        base04 = palette.dimGray,
        base05 = palette.stoneGray,
        base06 = palette.lightGray,
        base07 = palette.whiteRadiance,
        base08 = palette.goldGlow,
        base09 = palette.amberAccent,
        base0A = palette.goldBright,
        base0B = palette.goldCore,
        base0C = palette.accentTeal,
        base0D = palette.subtleBlue,
        base0E = palette.subtleViolet,
        base0F = palette.subtleGreen,
    },

    palette = palette,

    semantic = {
        syn = {
            string = palette.goldBright,
            number = palette.amberAccent,
            boolean = palette.goldCore,
            keyword = palette.goldGlow,
            operator = palette.accentTeal,
            func = palette.subtleBlue,
            type = palette.whiteRadiance,
            variable = palette.stoneGray,
            comment = palette.shadowGray,
            constant = palette.goldDeep,
            special = palette.goldGlow,
        },

        ui = {
            bg = palette.cosmicBlack,
            bg_dim = palette.voidBlack,
            bg_highlight = palette.starlightGray,
            fg = palette.stoneGray,
            fg_dim = palette.dimGray,
            fg_bright = palette.lightGray,
            border = palette.goldDark,
            float = palette.voidBlack,
            selection = palette.nebulaGray,
            cursorline = palette.voidBlack,
            line_nr = palette.shadowGray,
            line_nr_active = palette.goldCore,
        },

        diag = {
            error = palette.dangerRed,
            warning = palette.warningOrange,
            info = palette.infoBlue,
            hint = palette.accentTeal,
        },

        git = {
            add = palette.goldBright,
            change = palette.accentSilver,
            delete = palette.dangerRed,
        },

        diff = {
            add = palette.goldBright,
            change = palette.goldCore,
            delete = palette.dangerRed,
            text = palette.subtleBlue,
        },
    },
}
