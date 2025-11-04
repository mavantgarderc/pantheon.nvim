-- Green Arrow: forest hunter, urban grit
local palette = {
  cosmicBlack = "#07110b",
  voidBlack = "#0c120b",
  starlightGray = "#121617",
  nebulaGray = "#182220",

  emerald = "#1faa55",
  forest = "#1d7a43",
  quiverBrown = "#6f4a28",
  arrowFeather = "#8fbfb3",
  hoodDark = "#0b2f1c",

  moss = "#2f8a4d",
  stoneGray = "#aeb8b0",
  shadowGray = "#2d312f",
  dimGray = "#565e58",

  accentGold = "#ffd966",
  accentCyan = "#66e0ff",
  lightGray = "#e2eee8",

  dangerRed = "#e05a5a",
  warningOrange = "#e5c07b",
  infoBlue = "#61afef",
}

return {
  name = "Justice League - Green Arrow",
  author = "PrismPunk.nvim",
  description = "Urban archer — precision, craft, and grit.",

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.arrowFeather,
    base08 = palette.emerald,
    base09 = palette.quiverBrown,
    base0A = palette.accentGold,
    base0B = palette.forest,
    base0C = palette.accentCyan,
    base0D = palette.accentCyan,
    base0E = palette.hoodDark,
    base0F = palette.moss,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.emerald,
      number = palette.quiverBrown,
      boolean = palette.forest,
      keyword = palette.hoodDark,
      operator = palette.accentCyan,
      func = palette.accentGold,
      type = palette.arrowFeather,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.moss,
      special = palette.emerald,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.lightGray,
      border = palette.hoodDark,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.emerald,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.accentCyan,
    },

    git = {
      add = palette.emerald,
      change = palette.accentGold,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.emerald,
      change = palette.hoodDark,
      delete = palette.dangerRed,
      text = palette.accentCyan,
    },
  },
}
