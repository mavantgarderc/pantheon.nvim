-- Martian Manhunter: alien green, calm empathy with red eyes
local palette = {
  cosmicBlack = "#04120a",
  voidBlack = "#0b140d",
  starlightGray = "#111a14",
  nebulaGray = "#18221b",

  martianGreen = "#1aa35a",
  emeraldDeep = "#178a4a",
  martianCore = "#0f6b39",
  crimsonEye = "#d63a3a",
  etherBlue = "#66c6ff",

  jade = "#2fb06a",
  paleTeal = "#9fe6d6",
  stoneGray = "#a9bdb4",
  shadowGray = "#2f3834",

  accentGold = "#ffd966",
  accentViolet = "#b39bff",
  lightGray = "#e6f7f2",

  dangerRed = "#ff6666",
  warningOrange = "#ffc870",
  infoBlue = "#61afef",
}

return {
  name = "Justice League - Martian Manhunter",
  author = "PrismPunk.nvim",
  description = "Alien calm — empathy, stealth, and quiet strength.",

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.paleTeal,
    base08 = palette.crimsonEye,
    base09 = palette.etherBlue,
    base0A = palette.accentGold,
    base0B = palette.martianGreen,
    base0C = palette.paleTeal,
    base0D = palette.etherBlue,
    base0E = palette.accentViolet,
    base0F = palette.jade,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.martianGreen,
      number = palette.etherBlue,
      boolean = palette.jade,
      keyword = palette.martianCore,
      operator = palette.paleTeal,
      func = palette.etherBlue,
      type = palette.accentGold,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.crimsonEye,
      special = palette.martianGreen,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.lightGray,
      border = palette.martianCore,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.martianCore,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.paleTeal,
    },

    git = {
      add = palette.martianGreen,
      change = palette.accentGold,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.martianGreen,
      change = palette.martianCore,
      delete = palette.dangerRed,
      text = palette.etherBlue,
    },
  },
}
