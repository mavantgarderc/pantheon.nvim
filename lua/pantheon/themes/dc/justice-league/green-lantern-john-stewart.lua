local colors_util = require("pantheon.utils.colors")

-- John Stewart: military disciplined green, architectural accents
local palette = {
  cosmicBlack = "#050810",
  voidBlack = "#0d1117",
  starlightGray = "#161b22",
  nebulaGray = "#1f242e",

  willBright = "#00ff88",
  willGlow = "#1ee06b",
  willCore = "#00dd99",
  willDeep = "#1ea876",
  willDark = "#0d6b4d",

  olive = "#2f8a4d",
  moss = "#2a6f4a",
  steel = "#7f8c99",
  stoneGray = "#abb2bf",

  oathWhite = "#e6f7f0",
  guardianGold = "#ffcc66",
  accentTeal = "#00ddaa",
  accentBlue = "#4dd4e8",

  shadowGray = "#3e4451",
  dimGray = "#565c64",
  lightGray = "#c8ccd4",

  dangerRed = "#e06c75",
  warningOrange = "#e5c07b",
  infoBlue = "#61afef",
}

return {
  name = "Justice League - Green Lantern (John Stewart)",
  author = "Pantheon.nvim",
  description = "Architect, soldier, willpower — precise and resolute.",

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.oathWhite,
    base08 = palette.willGlow,
    base09 = palette.olive,
    base0A = palette.guardianGold,
    base0B = palette.willBright,
    base0C = palette.accentTeal,
    base0D = palette.accentBlue,
    base0E = palette.willCore,
    base0F = palette.moss,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.willBright,
      number = palette.olive,
      boolean = palette.willCore,
      keyword = palette.willCore,
      operator = palette.accentTeal,
      func = palette.accentBlue,
      type = palette.guardianGold,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.oathWhite,
      special = palette.willGlow,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.oathWhite,
      border = palette.willDark,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.willCore,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.accentTeal,
    },

    git = {
      add = palette.willBright,
      change = palette.guardianGold,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.willBright,
      change = palette.willCore,
      delete = palette.dangerRed,
      text = palette.accentBlue,
    },
  },
}
