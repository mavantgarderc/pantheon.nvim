local colors_util = require("pantheon.utils.colors")

-- Flash: kinetic red + lightning yellow
local palette = {
    cosmicBlack = "#040308",
    voidBlack = "#0a0610",
    starlightGray = "#14121a",
    nebulaGray = "#1b1820",

    lightningYellow = "#ffd400",
    scarlet = "#ff2f3f",
    speedGlow = "#ffb84d",
    trailCyan = "#66ffff",
    pulseWhite = "#fffbe6",

    emberOrange = "#ff8a33",
    stoneGray = "#b9bfc9",
    shadowGray = "#332f34",
    dimGray = "#5a565b",

    accentRed = "#ff4466",
    accentAmber = "#ffcc66",
    accentBlue = "#66b8ff",
    lightGray = "#f2f0f0",

    dangerRed = "#ff6677",
    warningOrange = "#ffc870",
    infoBlue = "#61afef",
}

return {
    name = "Justice League - Flash",
    author = "Pantheon.nvim",
    description = "Speed incarnate — kinetic streaks of light and heat.",

    base16 = {
        base00 = palette.cosmicBlack,
        base01 = palette.voidBlack,
        base02 = palette.starlightGray,
        base03 = palette.shadowGray,
        base04 = palette.dimGray,
        base05 = palette.stoneGray,
        base06 = palette.lightGray,
        base07 = palette.pulseWhite,
        base08 = palette.scarlet,
        base09 = palette.emberOrange,
        base0A = palette.lightningYellow,
        base0B = palette.trailCyan,
        base0C = palette.trailCyan,
        base0D = palette.accentBlue,
        base0E = palette.speedGlow,
        base0F = palette.accentAmber,
    },

    palette = palette,

    semantic = {
        syn = {
            string = palette.lightningYellow,
            number = palette.emberOrange,
            boolean = palette.trailCyan,
            keyword = palette.scarlet,
            operator = palette.speedGlow,
            func = palette.accentBlue,
            type = palette.pulseWhite,
            variable = palette.stoneGray,
            comment = palette.shadowGray,
            constant = palette.accentAmber,
            special = palette.lightningYellow,
        },

        ui = {
            bg = palette.cosmicBlack,
            bg_dim = palette.voidBlack,
            bg_highlight = palette.starlightGray,
            fg = palette.stoneGray,
            fg_dim = palette.dimGray,
            fg_bright = palette.lightGray,
            border = palette.scarlet,
            float = palette.voidBlack,
            selection = palette.nebulaGray,
            cursorline = palette.voidBlack,
            line_nr = palette.shadowGray,
            line_nr_active = palette.lightningYellow,
        },

        diag = {
            error = palette.dangerRed,
            warning = palette.warningOrange,
            info = palette.infoBlue,
            hint = palette.trailCyan,
        },

        git = {
            add = palette.lightningYellow,
            change = palette.accentAmber,
            delete = palette.dangerRed,
        },

        diff = {
            add = palette.lightningYellow,
            change = palette.speedGlow,
            delete = palette.dangerRed,
            text = palette.accentBlue,
        },
    },
}
