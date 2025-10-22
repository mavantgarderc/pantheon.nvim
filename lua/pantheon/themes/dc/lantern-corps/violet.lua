local colors_util = require("pantheon.utils.colors")

local palette = {
  cosmicBlack = "#0a0610",
  voidBlack = "#120a18",
  starlightGray = "#1b1323",
  nebulaGray = "#261b33",

  loveBright = "#ff66ff",
  loveGlow = "#e04ad3",
  loveCore = "#cc33cc",
  loveDeep = "#992299",
  loveDark = "#661966",

  amethystLight = "#d98eff",
  orchidMagenta = "#f09cff",
  lilacSoft = "#c080ff",
  pinkRadiance = "#ff99cc",

  accentRose = "#ff77aa",
  accentPearl = "#ffe6f7",
  accentGold = "#ffd1dc",
  accentAzure = "#66ccff",

  shadowGray = "#4a4451",
  dimGray = "#67617a",
  stoneGray = "#b9a8c6",
  lightGray = "#e2d1ef",

  dangerRed = "#ff5a7a",
  warningOrange = "#ffb070",
  infoBlue = "#66b0ff",
}

return {
  name = "Lantern Corps - Violet (Love)",
  author = "Pantheon.nvim",
  description = "For hearts united by the light of love.",

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.accentPearl,
    base08 = palette.loveGlow,
    base09 = palette.pinkRadiance,
    base0A = palette.accentGold,
    base0B = palette.loveBright,
    base0C = palette.amethystLight,
    base0D = palette.accentAzure,
    base0E = palette.loveCore,
    base0F = palette.orchidMagenta,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.loveBright,
      number = palette.pinkRadiance,
      boolean = palette.lilacSoft,
      keyword = palette.loveCore,
      operator = palette.amethystLight,
      func = palette.accentAzure,
      type = palette.accentGold,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.accentRose,
      special = palette.loveGlow,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.accentPearl,
      border = palette.loveDark,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.loveCore,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.amethystLight,
    },

    git = {
      add = palette.loveBright,
      change = palette.accentGold,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.loveBright,
      change = palette.loveCore,
      delete = palette.dangerRed,
      text = palette.accentAzure,
    },
  },
}
