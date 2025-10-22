local colors_util = require("pantheon.utils.colors")

local palette = {
  cosmicBlack = "#000000",
  voidBlack = "#0a0a0a",
  starlightGray = "#121212",
  nebulaGray = "#1a1a1a",

  deathBright = "#999999",
  deathGlow = "#777777",
  deathCore = "#555555",
  deathDeep = "#333333",
  deathDark = "#1a1a1a",

  boneWhite = "#d9d9d9",
  ashGray = "#bfbfbf",
  tombSilver = "#a6a6a6",
  voidTint = "#808080",

  accentCrimson = "#ff3344",
  accentViolet = "#9933ff",
  accentTeal = "#33cccc",
  accentAmber = "#ffaa33",

  shadowGray = "#3a3a3a",
  dimGray = "#555555",
  stoneGray = "#aaaaaa",
  lightGray = "#e0e0e0",

  dangerRed = "#ff4455",
  warningOrange = "#ffaa55",
  infoBlue = "#66b2ff",
}

return {
  name = "Lantern Corps - Black (Death)",
  author = "Pantheon.nvim",
  description = "All light ends here.",

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.boneWhite,
    base08 = palette.deathGlow,
    base09 = palette.tombSilver,
    base0A = palette.accentAmber,
    base0B = palette.deathBright,
    base0C = palette.accentTeal,
    base0D = palette.accentViolet,
    base0E = palette.deathCore,
    base0F = palette.ashGray,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.deathBright,
      number = palette.ashGray,
      boolean = palette.voidTint,
      keyword = palette.deathCore,
      operator = palette.accentTeal,
      func = palette.accentViolet,
      type = palette.accentAmber,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.deathGlow,
      special = palette.accentCrimson,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.lightGray,
      border = palette.deathDark,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.deathCore,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.accentTeal,
    },

    git = {
      add = palette.deathBright,
      change = palette.accentAmber,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.deathBright,
      change = palette.deathCore,
      delete = palette.dangerRed,
      text = palette.accentViolet,
    },
  },
}
