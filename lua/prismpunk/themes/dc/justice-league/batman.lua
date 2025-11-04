-- Batman: shadow, steel, midnight blue
local palette = {
  cosmicBlack = "#030309",
  voidBlack = "#080810",
  starlightGray = "#10121a",
  nebulaGray = "#161821",

  batMidnight = "#0f2750",
  batCowl = "#0a0a0e",
  batLeather = "#1c1c1f",
  batAccent = "#d1c27a",
  batSignal = "#ffd76b",

  slateGray = "#3a3f4a",
  stoneGray = "#9aa3b2",
  smoke = "#5b6169",
  iron = "#6f7580",

  accentAmber = "#ffb86b",
  accentSteel = "#7f8c99",
  accentBlue = "#3b6ea5",

  shadowGray = "#2f3136",
  dimGray = "#585b60",
  lightGray = "#c1c7cf",

  dangerRed = "#c75454",
  warningOrange = "#e5c07b",
  infoBlue = "#61afef",
}

return {
  name = "Justice League - Batman",
  author = "PrismPunk.nvim",
  description = "Detective in the dark — stealth, intellect, and steel.",

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.batSignal,
    base08 = palette.batAccent,
    base09 = palette.accentAmber,
    base0A = palette.batSignal,
    base0B = palette.accentBlue,
    base0C = palette.accentSteel,
    base0D = palette.batMidnight,
    base0E = palette.iron,
    base0F = palette.smoke,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.batSignal,
      number = palette.accentAmber,
      boolean = palette.batAccent,
      keyword = palette.batMidnight,
      operator = palette.iron,
      func = palette.accentBlue,
      type = palette.accentSteel,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.smoke,
      special = palette.batLeather,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.lightGray,
      border = palette.batCowl,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.batMidnight,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.iron,
    },

    git = {
      add = palette.batSignal,
      change = palette.accentSteel,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.batSignal,
      change = palette.batMidnight,
      delete = palette.dangerRed,
      text = palette.accentBlue,
    },
  },
}
