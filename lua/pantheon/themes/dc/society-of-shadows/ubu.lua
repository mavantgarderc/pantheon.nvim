local colors_util = require("pantheon.utils.colors")

local palette = {
  cosmicBlack = "#050608",
  voidBlack = "#0a0a0e",
  starlightGray = "#111217",
  nebulaGray = "#1a1a22",
  armorBlack = "#0e0e0e",
  accentSteel = "#7f7f7f",
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
  name = "Ubu",
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
    base07 = palette.accentSteel,
    base08 = palette.dangerRed,
    base09 = palette.accentSteel,
    base0A = palette.accentSteel,
    base0B = palette.tealGlow,
    base0C = palette.tealGlow,
    base0D = palette.infoBlue,
    base0E = palette.glovesGray,
    base0F = palette.armorBlack,
  },

  semantic = {
    syn = {
      string = palette.armorBlack,
      number = palette.accentSteel,
      boolean = palette.accentSteel,
      keyword = palette.armorBlack,
      operator = palette.tealGlow,
      func = palette.infoBlue,
      type = palette.accentSteel,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.accentSteel,
      special = palette.armorBlack,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.accentSteel,
      border = palette.armorBlack,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.accentSteel,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.accentSteel,
      info = palette.infoBlue,
      hint = palette.tealGlow,
    },

    git = {
      add = palette.accentSteel,
      change = palette.armorBlack,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.accentSteel,
      change = palette.armorBlack,
      delete = palette.dangerRed,
      text = palette.infoBlue,
    },
  },
}
