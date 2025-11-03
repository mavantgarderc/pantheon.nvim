local colors_util = require("pantheon.utils.colors")

-- Captain Atom: atomic silver + plasma blue + red core
local palette = {
  cosmicBlack = "#04040a",
  voidBlack = "#0a0a11",
  starlightGray = "#12121a",
  nebulaGray = "#181822",

  atomSilver = "#cfe7ff",
  plasmaBlue = "#66b8ff",
  reactorRed = "#ff5555",
  coreWhite = "#f2fbff",
  metalGray = "#8896a3",

  accentElectric = "#99ffff",
  stoneGray = "#b1bac3",
  shadowGray = "#2f3336",
  dimGray = "#575f66",

  accentGold = "#ffd966",
  accentIndigo = "#8f66ff",
  lightGray = "#eaf5ff",

  dangerRed = "#ff6677",
  warningOrange = "#ffc870",
  infoBlue = "#61afef",
}

return {
  name = "Justice League - Captain Atom",
  author = "Pantheon.nvim",
  description = "Nuclear containment — silver plasma and quiet menace.",

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.coreWhite,
    base08 = palette.reactorRed,
    base09 = palette.accentGold,
    base0A = palette.atomSilver,
    base0B = palette.plasmaBlue,
    base0C = palette.accentElectric,
    base0D = palette.plasmaBlue,
    base0E = palette.accentIndigo,
    base0F = palette.metalGray,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.plasmaBlue,
      number = palette.accentElectric,
      boolean = palette.atomSilver,
      keyword = palette.plasmaBlue,
      operator = palette.accentElectric,
      func = palette.accentIndigo,
      type = palette.coreWhite,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.reactorRed,
      special = palette.atomSilver,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.lightGray,
      border = palette.metalGray,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.plasmaBlue,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.accentElectric,
    },

    git = {
      add = palette.accentElectric,
      change = palette.accentGold,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.accentElectric,
      change = palette.plasmaBlue,
      delete = palette.dangerRed,
      text = palette.accentIndigo,
    },
  },
}
