local colors_util = require("pantheon.utils.colors")

local palette = {
  cosmicBlack = "#050608",
  voidBlack = "#0a0a0e",
  starlightGray = "#111217",
  nebulaGray = "#1a1a22",
  suitBlack = "#0e0e0e",
  accentGreen = "#39ff14",
  beltGold = "#d4af37",
  glovesGray = "#1a1a1a",
  bootsGray = "#1a1a1a",
  shadowGray = "#3a3f4c",
  dimGray = "#565c64",
  stoneGray = "#abb2bf",
  lightGray = "#c8ccd4",
  dangerRed = "#e06c75",
  infoBlue = "#61afef",
  tealGlow = "#00ddaa",
}

return {
  name = "Robin (Damian Wayne)",
  author = "Pantheon.nvim",
  palette = palette,

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.accentGreen,
    base08 = palette.dangerRed,
    base09 = palette.beltGold,
    base0A = palette.accentGreen,
    base0B = palette.tealGlow,
    base0C = palette.tealGlow,
    base0D = palette.infoBlue,
    base0E = palette.glovesGray,
    base0F = palette.suitBlack,
  },

  semantic = {
    syn = {
      string = palette.suitBlack,
      number = palette.beltGold,
      boolean = palette.accentGreen,
      keyword = palette.suitBlack,
      operator = palette.tealGlow,
      func = palette.infoBlue,
      type = palette.beltGold,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.accentGreen,
      special = palette.suitBlack,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.accentGreen,
      border = palette.suitBlack,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.accentGreen,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.beltGold,
      info = palette.infoBlue,
      hint = palette.tealGlow,
    },

    git = {
      add = palette.accentGreen,
      change = palette.suitBlack,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.accentGreen,
      change = palette.suitBlack,
      delete = palette.dangerRed,
      text = palette.infoBlue,
    },
  },
}
