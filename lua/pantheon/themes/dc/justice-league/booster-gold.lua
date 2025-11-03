local colors_util = require("pantheon.utils.colors")

-- Booster Gold: flashy gold + navy, showy optimism
local palette = {
  cosmicBlack = "#050712",
  voidBlack = "#0a0d14",
  starlightGray = "#11151b",
  nebulaGray = "#16202a",

  showGold = "#ffd700",
  boostNavy = "#0f3a6b",
  flashWhite = "#fff7e6",
  accentSilver = "#d9d9e6",
  neonCyan = "#66ffff",

  bannerBlue = "#2f6fbf",
  stoneGray = "#b7c5d6",
  shadowGray = "#2f3840",
  dimGray = "#5a6169",

  accentMagenta = "#ff99cc",
  accentAmber = "#ffcc66",
  lightGray = "#eef7ff",

  dangerRed = "#ff6666",
  warningOrange = "#ffc870",
  infoBlue = "#61afef",
}

return {
  name = "Justice League - Booster Gold",
  author = "Pantheon.nvim",
  description = "Showboat hero — flashy golds and retro-navy polish.",

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.flashWhite,
    base08 = palette.showGold,
    base09 = palette.accentAmber,
    base0A = palette.showGold,
    base0B = palette.bannerBlue,
    base0C = palette.neonCyan,
    base0D = palette.bannerBlue,
    base0E = palette.accentMagenta,
    base0F = palette.accentSilver,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.showGold,
      number = palette.accentAmber,
      boolean = palette.bannerBlue,
      keyword = palette.boostNavy,
      operator = palette.accentSilver,
      func = palette.bannerBlue,
      type = palette.flashWhite,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.neonCyan,
      special = palette.showGold,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.lightGray,
      border = palette.boostNavy,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.showGold,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.neonCyan,
    },

    git = {
      add = palette.neonCyan,
      change = palette.showGold,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.neonCyan,
      change = palette.showGold,
      delete = palette.dangerRed,
      text = palette.bannerBlue,
    },
  },
}
