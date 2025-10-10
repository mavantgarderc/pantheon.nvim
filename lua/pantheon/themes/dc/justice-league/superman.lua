local colors_util = require("pantheon.utils.colors")

-- Superman: true, noble, solar-blue + red + gold
local palette = {
    cosmicBlack = "#041022",
    voidBlack = "#081427",
    starlightGray = "#111827",
    nebulaGray = "#182230",

    skyBlue = "#2f7fbf",
    solarBlue = "#1e6fbf",
    capeRed = "#d73a3a",
    emblemGold = "#ffd35a",
    sunWhite = "#fff7e6",

    azureLight = "#6fbfff",
    steel = "#7fa3b8",
    stoneGray = "#b4c4cf",
    dimGray = "#6b7780",

    accentYellow = "#ffea8a",
    accentSilver = "#d9e6f0",
    accentCrimson = "#ff6666",

    shadowGray = "#28333b",
    lightGray = "#e8f4ff",

    dangerRed = "#ff6666",
    warningOrange = "#ffd28a",
    infoBlue = "#61afef",
}

return {
    name = "Justice League - Superman",
    author = "Pantheon.nvim",
    description = "Hope incarnate — solar-powered clarity and nobility.",

    base16 = {
        base00 = palette.cosmicBlack,
        base01 = palette.voidBlack,
        base02 = palette.starlightGray,
        base03 = palette.shadowGray,
        base04 = palette.dimGray,
        base05 = palette.stoneGray,
        base06 = palette.lightGray,
        base07 = palette.sunWhite,
        base08 = palette.capeRed,
        base09 = palette.accentYellow,
        base0A = palette.emblemGold,
        base0B = palette.skyBlue,
        base0C = palette.azureLight,
        base0D = palette.solarBlue,
        base0E = palette.steel,
        base0F = palette.accentCrimson,
    },

    palette = palette,

    semantic = {
        syn = {
            string = palette.emblemGold,
            number = palette.azureLight,
            boolean = palette.skyBlue,
            keyword = palette.solarBlue,
            operator = palette.steel,
            func = palette.capeRed,
            type = palette.sunWhite,
            variable = palette.stoneGray,
            comment = palette.shadowGray,
            constant = palette.emblemGold,
            special = palette.accentYellow,
        },

        ui = {
            bg = palette.cosmicBlack,
            bg_dim = palette.voidBlack,
            bg_highlight = palette.starlightGray,
            fg = palette.stoneGray,
            fg_dim = palette.dimGray,
            fg_bright = palette.lightGray,
            border = palette.solarBlue,
            float = palette.voidBlack,
            selection = palette.nebulaGray,
            cursorline = palette.voidBlack,
            line_nr = palette.shadowGray,
            line_nr_active = palette.skyBlue,
        },

        diag = {
            error = palette.dangerRed,
            warning = palette.warningOrange,
            info = palette.infoBlue,
            hint = palette.emblemGold,
        },

        git = {
            add = palette.skyBlue,
            change = palette.emblemGold,
            delete = palette.dangerRed,
        },

        diff = {
            add = palette.skyBlue,
            change = palette.solarBlue,
            delete = palette.dangerRed,
            text = palette.capeRed,
        },
    },
}
