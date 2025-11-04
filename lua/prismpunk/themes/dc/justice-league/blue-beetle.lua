-- Blue Beetle: tech-scarab, cobalt, neon cyan, alien armor
local palette = {
  cosmicBlack = "#030814",
  voidBlack = "#071022",
  starlightGray = "#101724",
  nebulaGray = "#14202a",

  cobalt = "#2b5fbf",
  scarabCyan = "#33ffff",
  armorBlue = "#1866cc",
  techSilver = "#a6dfff",
  glowTeal = "#66e6d9",

  accentLime = "#99ffcc",
  stoneGray = "#9fb7c9",
  shadowGray = "#23303a",
  dimGray = "#53656f",

  accentGold = "#ffd966",
  accentMagenta = "#ff99cc",
  lightGray = "#dff7f7",

  dangerRed = "#ff6666",
  warningOrange = "#ffc870",
  infoBlue = "#61afef",
}

return {
  name = "Justice League - Blue Beetle",
  author = "PrismPunk.nvim",
  description = "Alien tech + blue armor — neon cyan scarab energy.",

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.techSilver,
    base08 = palette.cobalt,
    base09 = palette.accentLime,
    base0A = palette.accentGold,
    base0B = palette.scarabCyan,
    base0C = palette.glowTeal,
    base0D = palette.armorBlue,
    base0E = palette.accentMagenta,
    base0F = palette.techSilver,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.scarabCyan,
      number = palette.accentLime,
      boolean = palette.glowTeal,
      keyword = palette.armorBlue,
      operator = palette.glowTeal,
      func = palette.armorBlue,
      type = palette.accentGold,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.techSilver,
      special = palette.scarabCyan,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.lightGray,
      border = palette.armorBlue,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.scarabCyan,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.glowTeal,
    },

    git = {
      add = palette.scarabCyan,
      change = palette.accentGold,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.scarabCyan,
      change = palette.armorBlue,
      delete = palette.dangerRed,
      text = palette.glowTeal,
    },
  },
}
