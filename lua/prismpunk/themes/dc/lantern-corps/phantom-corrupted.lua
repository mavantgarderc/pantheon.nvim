local palette = {
  cosmicBlack = "#050408",
  voidBlack = "#0c0a11",
  starlightGray = "#14121f",
  nebulaGray = "#1c192a",

  corruptedRed = "#ff4444",
  corruptedOrange = "#ff9933",
  corruptedYellow = "#ffff66",
  corruptedGreen = "#33ff88",
  corruptedBlue = "#33bbff",
  corruptedIndigo = "#9966ff",
  corruptedViolet = "#cc66ff",
  corruptedWhite = "#e0e0ff",
  corruptedBlack = "#111111",

  flickerCyan = "#66ffff",
  flickerRose = "#ff99cc",
  flickerGold = "#ffd966",
  flickerTeal = "#33cccc",

  shadowGray = "#3d384f",
  dimGray = "#59546b",
  stoneGray = "#aaa2c6",
  lightGray = "#d8d4f2",

  dangerRed = "#ff5566",
  warningOrange = "#ffc870",
  infoBlue = "#66b0ff",
}

return {
  name = "Phantom Lantern - Corrupted",
  author = "PrismPunk.nvim",
  description = "Unstable overload of the emotional spectrum — danger lurks in every hue.",

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.corruptedWhite,
    base08 = palette.corruptedRed,
    base09 = palette.corruptedOrange,
    base0A = palette.corruptedYellow,
    base0B = palette.corruptedGreen,
    base0C = palette.flickerTeal,
    base0D = palette.corruptedBlue,
    base0E = palette.corruptedIndigo,
    base0F = palette.corruptedViolet,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.corruptedGreen,
      number = palette.corruptedBlue,
      boolean = palette.corruptedIndigo,
      keyword = palette.corruptedViolet,
      operator = palette.flickerTeal,
      func = palette.corruptedOrange,
      type = palette.flickerGold,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.corruptedRed,
      special = palette.corruptedWhite,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.lightGray,
      border = palette.corruptedBlack,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.corruptedViolet,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.flickerCyan,
    },

    git = {
      add = palette.corruptedGreen,
      change = palette.flickerGold,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.corruptedGreen,
      change = palette.corruptedViolet,
      delete = palette.dangerRed,
      text = palette.flickerTeal,
    },
  },
}
