-- Hawkman: brass, stone, primal red — ancient warrior
local palette = {
  cosmicBlack = "#090507",
  voidBlack = "#0f0b0b",
  starlightGray = "#141215",
  nebulaGray = "#1b1719",

  brass = "#b07a2d",
  wingBronze = "#8b5f2b",
  primalRed = "#b33a3a",
  stone = "#9e9086",
  leather = "#2f2a26",

  accentFeather = "#ffd9b3",
  skyIndigo = "#5566a3",
  shadowGray = "#342f2f",
  dimGray = "#5a5252",

  lightGray = "#efe7e2",
  accentGold = "#ffd966",
  dangerRed = "#d94f4f",

  warningOrange = "#ffc870",
  infoBlue = "#61afef",
}

return {
  name = "Justice League - Hawkman",
  author = "PrismPunk.nvim",
  description = "Ancient warrior — brass wings and primal force.",

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stone,
    base06 = palette.lightGray,
    base07 = palette.accentFeather,
    base08 = palette.primalRed,
    base09 = palette.accentGold,
    base0A = palette.accentGold,
    base0B = palette.brass,
    base0C = palette.skyIndigo,
    base0D = palette.skyIndigo,
    base0E = palette.wingBronze,
    base0F = palette.leather,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.brass,
      number = palette.accentGold,
      boolean = palette.primalRed,
      keyword = palette.wingBronze,
      operator = palette.skyIndigo,
      func = palette.wingBronze,
      type = palette.accentFeather,
      variable = palette.stone,
      comment = palette.shadowGray,
      constant = palette.leather,
      special = palette.brass,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stone,
      fg_dim = palette.dimGray,
      fg_bright = palette.lightGray,
      border = palette.wingBronze,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.brass,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.skyIndigo,
    },

    git = {
      add = palette.brass,
      change = palette.accentGold,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.brass,
      change = palette.wingBronze,
      delete = palette.dangerRed,
      text = palette.skyIndigo,
    },
  },
}
