-- Hawkgirl: bronze + green + fierce red — resilient and fiery
local palette = {
  cosmicBlack = "#070507",
  voidBlack = "#0e0b0b",
  starlightGray = "#131216",
  nebulaGray = "#19171b",

  bronze = "#b06f2d",
  wingGreen = "#2f8a5a",
  flameRed = "#c94a4a",
  leather = "#312a24",
  feather = "#ffd9b3",

  accentTeal = "#66d9cc",
  stoneGray = "#b0a39a",
  shadowGray = "#332f30",
  dimGray = "#5a5354",

  lightGray = "#efe7e6",
  accentGold = "#ffd966",
  dangerRed = "#d94f4f",

  warningOrange = "#ffc870",
  infoBlue = "#61afef",
}

return {
  name = "Justice League - Hawkgirl",
  author = "PrismPunk.nvim",
  description = "Resilient warrior — bronze wings and fierce heart.",

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.feather,
    base08 = palette.flameRed,
    base09 = palette.accentGold,
    base0A = palette.accentGold,
    base0B = palette.wingGreen,
    base0C = palette.accentTeal,
    base0D = palette.wingGreen,
    base0E = palette.bronze,
    base0F = palette.leather,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.bronze,
      number = palette.accentGold,
      boolean = palette.wingGreen,
      keyword = palette.bronze,
      operator = palette.accentTeal,
      func = palette.wingGreen,
      type = palette.feather,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.leather,
      special = palette.flameRed,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.lightGray,
      border = palette.bronze,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.wingGreen,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.accentTeal,
    },

    git = {
      add = palette.wingGreen,
      change = palette.accentGold,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.wingGreen,
      change = palette.bronze,
      delete = palette.dangerRed,
      text = palette.accentTeal,
    },
  },
}
