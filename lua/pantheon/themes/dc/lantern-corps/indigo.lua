local colors_util = require("pantheon.utils.colors")

local palette = {
  cosmicBlack = "#080510",
  voidBlack = "#0e0818",
  starlightGray = "#17122a",
  nebulaGray = "#20183a",

  compassionBright = "#8f66ff",
  compassionGlow = "#7a4dff",
  compassionCore = "#6633ff",
  compassionDeep = "#4d22cc",
  compassionDark = "#321a99",

  indigoLight = "#b099ff",
  violetTint = "#9966ff",
  azureMix = "#6699ff",
  lavenderSoft = "#ccbbff",

  accentCyan = "#66e0ff",
  accentRose = "#ff99cc",
  accentSilver = "#d1ccf0",
  accentGold = "#f4d67a",

  shadowGray = "#4a445a",
  dimGray = "#686080",
  stoneGray = "#b6a9d9",
  lightGray = "#e4dcff",

  dangerRed = "#e06c75",
  warningOrange = "#ffb870",
  infoBlue = "#61afef",
}

return {
  name = "Lantern Corps - Indigo (Compassion)",
  author = "Pantheon.nvim",
  description = "Empathy unites the spectrum in harmony.",

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.accentSilver,
    base08 = palette.compassionGlow,
    base09 = palette.indigoLight,
    base0A = palette.accentGold,
    base0B = palette.compassionBright,
    base0C = palette.accentCyan,
    base0D = palette.azureMix,
    base0E = palette.compassionCore,
    base0F = palette.violetTint,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.compassionBright,
      number = palette.indigoLight,
      boolean = palette.violetTint,
      keyword = palette.compassionCore,
      operator = palette.accentCyan,
      func = palette.azureMix,
      type = palette.accentGold,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.accentRose,
      special = palette.compassionGlow,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.lightGray,
      border = palette.compassionDark,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.compassionCore,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.accentCyan,
    },

    git = {
      add = palette.compassionBright,
      change = palette.accentGold,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.compassionBright,
      change = palette.compassionCore,
      delete = palette.dangerRed,
      text = palette.azureMix,
    },
  },
}
