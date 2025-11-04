local palette = {
  cosmicBlack = "#050608",
  voidBlack = "#0a0a0e",
  starlightGray = "#111217",
  nebulaGray = "#1a1a22",
  robeDarkGreen = "#1a451a",
  accentGold = "#d4af37",
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
  name = "Ra's Al Ghul",
  author = "PrismPunk.nvim",
  palette = palette,

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.accentGold,
    base08 = palette.dangerRed,
    base09 = palette.accentGold,
    base0A = palette.accentGold,
    base0B = palette.tealGlow,
    base0C = palette.tealGlow,
    base0D = palette.infoBlue,
    base0E = palette.glovesGray,
    base0F = palette.robeDarkGreen,
  },

  semantic = {
    syn = {
      string = palette.robeDarkGreen,
      number = palette.accentGold,
      boolean = palette.accentGold,
      keyword = palette.robeDarkGreen,
      operator = palette.tealGlow,
      func = palette.infoBlue,
      type = palette.accentGold,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.accentGold,
      special = palette.robeDarkGreen,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.accentGold,
      border = palette.robeDarkGreen,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.accentGold,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.accentGold,
      info = palette.infoBlue,
      hint = palette.tealGlow,
    },

    git = {
      add = palette.accentGold,
      change = palette.robeDarkGreen,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.accentGold,
      change = palette.robeDarkGreen,
      delete = palette.dangerRed,
      text = palette.infoBlue,
    },
  },
}
