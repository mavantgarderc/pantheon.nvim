local palette = {
  cosmicBlack = "#050608",
  voidBlack = "#0a0a0e",
  starlightGray = "#111217",
  nebulaGray = "#1a1a22",
  suitBlack = "#0e0e0e",
  accentEmerald = "#00ff88",
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
  name = "Talia Al Ghul",
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
    base07 = palette.accentEmerald,
    base08 = palette.dangerRed,
    base09 = palette.accentEmerald,
    base0A = palette.accentEmerald,
    base0B = palette.tealGlow,
    base0C = palette.tealGlow,
    base0D = palette.infoBlue,
    base0E = palette.glovesGray,
    base0F = palette.suitBlack,
  },

  semantic = {
    syn = {
      string = palette.suitBlack,
      number = palette.accentEmerald,
      boolean = palette.accentEmerald,
      keyword = palette.suitBlack,
      operator = palette.tealGlow,
      func = palette.infoBlue,
      type = palette.accentEmerald,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.accentEmerald,
      special = palette.suitBlack,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.accentEmerald,
      border = palette.suitBlack,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.accentEmerald,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.accentEmerald,
      info = palette.infoBlue,
      hint = palette.tealGlow,
    },

    git = {
      add = palette.accentEmerald,
      change = palette.suitBlack,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.accentEmerald,
      change = palette.suitBlack,
      delete = palette.dangerRed,
      text = palette.infoBlue,
    },
  },
}
