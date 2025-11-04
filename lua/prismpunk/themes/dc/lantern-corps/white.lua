local palette = {
  cosmicBlack = "#0d0d0f",
  voidBlack = "#151518",
  starlightGray = "#1f2024",
  nebulaGray = "#2b2c31",

  lifeBright = "#ffffff",
  lifeGlow = "#e0ffff",
  lifeCore = "#b3ffff",
  lifeDeep = "#80ffff",
  lifeDark = "#4dd9cc",

  pearlWhite = "#f7f7f7",
  silverMist = "#d9f2ff",
  auraBlue = "#99ffff",
  dawnYellow = "#fffacc",

  accentEmerald = "#33ff99",
  accentRose = "#ff99cc",
  accentGold = "#ffe680",
  accentSky = "#99ccff",

  shadowGray = "#4a4f56",
  dimGray = "#6c727b",
  stoneGray = "#cfd7df",
  lightGray = "#e9f2f7",

  dangerRed = "#e06c75",
  warningOrange = "#e5c07b",
  infoBlue = "#61afef",
}

return {
  name = "Lantern Corps - White (Life)",
  author = "PrismPunk.nvim",
  description = "In life, all colors shine together.",

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.lifeBright,
    base08 = palette.lifeGlow,
    base09 = palette.auraBlue,
    base0A = palette.accentGold,
    base0B = palette.lifeBright,
    base0C = palette.accentEmerald,
    base0D = palette.accentSky,
    base0E = palette.lifeCore,
    base0F = palette.pearlWhite,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.lifeBright,
      number = palette.auraBlue,
      boolean = palette.lifeCore,
      keyword = palette.accentSky,
      operator = palette.accentEmerald,
      func = palette.accentGold,
      type = palette.dawnYellow,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.lifeGlow,
      special = palette.accentRose,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.lightGray,
      border = palette.lifeDark,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.lifeCore,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.accentEmerald,
    },

    git = {
      add = palette.lifeBright,
      change = palette.accentGold,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.lifeBright,
      change = palette.lifeCore,
      delete = palette.dangerRed,
      text = palette.accentSky,
    },
  },
}
