local colors_util = require("pantheon.utils.colors")

-- RED LANTERN RICH COLOR PALETTE
-- Fueled by rage, blood, and burning plasma
local palette = {
  -- Background colors (dark rage & ash)
  bloodBlack = "#0b0506", -- Deep space in blood haze
  charBlack = "#150808", -- Charred void
  emberGray = "#221010", -- Dim ember highlight
  ashGray = "#2b1616", -- Highlighted background

  -- Core reds (rage energy spectrum)
  rageBright = "#ff2a2a", -- Pure red rage
  rageGlow = "#ff4545", -- Radiant plasma glow
  rageCore = "#e00000", -- Core blood energy
  rageDeep = "#a80000", -- Deep anger tone
  rageDark = "#5c0000", -- Darkest fury

  -- Supporting reds/oranges (for gradients)
  emberOrange = "#ff6600",
  moltenOrange = "#ff8844",
  smolderCrimson = "#cc3333",
  lavaRed = "#ff1e1e",

  -- Accent colors
  oathWhite = "#f2e6e6", -- Raging oath light
  ringYellow = "#ffc933", -- Yellow accent (from fear overlap)
  plasmaMagenta = "#ff4d6d", -- Hot plasma effect
  hellfireGold = "#ff9933", -- Fiery highlight

  -- UI grays
  shadowGray = "#3e3a3a",
  dimGray = "#5e5656",
  stoneGray = "#b0a6a6",
  lightGray = "#d8cccc",

  -- Status colors
  dangerRed = "#ff2a2a",
  warningOrange = "#ff8844",
  infoBlue = "#61afef",
}

return {
  name = "Lantern Corps - Red (Rage)",
  author = "Pantheon.nvim",
  description = "Rage burns eternal — unleash the crimson light of vengeance.",

  base16 = {
    base00 = palette.bloodBlack,
    base01 = palette.charBlack,
    base02 = palette.emberGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.oathWhite,
    base08 = palette.rageBright,
    base09 = palette.moltenOrange,
    base0A = palette.hellfireGold,
    base0B = palette.smolderCrimson,
    base0C = palette.plasmaMagenta,
    base0D = palette.infoBlue,
    base0E = palette.rageGlow,
    base0F = palette.ringYellow,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.rageBright,
      number = palette.moltenOrange,
      boolean = palette.rageCore,
      keyword = palette.rageGlow,
      operator = palette.lavaRed,
      func = palette.infoBlue,
      type = palette.hellfireGold,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.ringYellow,
      special = palette.plasmaMagenta,
    },

    ui = {
      bg = palette.bloodBlack,
      bg_dim = palette.charBlack,
      bg_highlight = palette.emberGray,

      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.oathWhite,

      border = palette.rageDark,
      float = palette.charBlack,

      selection = palette.ashGray,
      cursorline = palette.charBlack,

      line_nr = palette.shadowGray,
      line_nr_active = palette.rageGlow,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.plasmaMagenta,
    },

    git = {
      add = palette.ringYellow,
      change = palette.moltenOrange,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.hellfireGold,
      change = palette.moltenOrange,
      delete = palette.rageCore,
      text = palette.rageGlow,
    },
  },
}
