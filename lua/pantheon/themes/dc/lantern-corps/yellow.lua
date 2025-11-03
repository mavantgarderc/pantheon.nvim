local colors_util = require("pantheon.utils.colors")

-- YELLOW LANTERN RICH COLOR PALETTE
-- The spectrum of fear — illumination through intimidation

local palette = {
  -- Backgrounds (dark terror)
  voidBlack = "#080700", -- Deep void of fear
  dreadBlack = "#121000", -- Oppressive darkness
  shadowGold = "#1c1800", -- Dim yellowish black
  fearGray = "#2a2500", -- Muted fear glow

  -- Core yellows (fear energy spectrum)
  fearBright = "#fff000", -- Pure fear light
  fearGlow = "#ffcc00", -- Glowing intimidation
  fearCore = "#e6b800", -- Core fear charge
  fearDeep = "#b38f00", -- Deep terror hue
  fearDark = "#665000", -- Darkest dread

  -- Supporting hues (for complexity)
  anxietyAmber = "#ffb700",
  terrorGold = "#ffd700",
  panicOrange = "#ff9900",
  despairBrown = "#332800",

  -- Accent colors
  oathWhite = "#fffbe6",
  constructBlue = "#4dd4e8",
  ringEmerald = "#80ff66",
  sinisterMagenta = "#ff66ff",

  -- UI grays
  shadowGray = "#4a4530",
  dimGray = "#6a654a",
  stoneGray = "#bcb58c",
  lightGray = "#f5f1cc",

  -- Status colors
  dangerRed = "#e06c75",
  warningOrange = "#ffcc00",
  infoBlue = "#61afef",
}

return {
  name = "Lantern Corps - Yellow (Fear)",
  author = "Pantheon.nvim",
  description = "In blackest day, in brightest fright — let fear illuminate the code.",

  base16 = {
    base00 = palette.voidBlack,
    base01 = palette.dreadBlack,
    base02 = palette.shadowGold,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.oathWhite,
    base08 = palette.fearBright,
    base09 = palette.panicOrange,
    base0A = palette.terrorGold,
    base0B = palette.ringEmerald,
    base0C = palette.constructBlue,
    base0D = palette.infoBlue,
    base0E = palette.fearGlow,
    base0F = palette.sinisterMagenta,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.fearBright,
      number = palette.terrorGold,
      boolean = palette.fearCore,
      keyword = palette.fearGlow,
      operator = palette.panicOrange,
      func = palette.constructBlue,
      type = palette.terrorGold,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.ringEmerald,
      special = palette.sinisterMagenta,
    },

    ui = {
      bg = palette.voidBlack,
      bg_dim = palette.dreadBlack,
      bg_highlight = palette.shadowGold,

      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.oathWhite,

      border = palette.fearDark,
      float = palette.dreadBlack,

      selection = palette.fearGray,
      cursorline = palette.dreadBlack,

      line_nr = palette.shadowGray,
      line_nr_active = palette.fearGlow,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.constructBlue,
    },

    git = {
      add = palette.ringEmerald,
      change = palette.terrorGold,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.ringEmerald,
      change = palette.fearCore,
      delete = palette.dangerRed,
      text = palette.terrorGold,
    },
  },
}
