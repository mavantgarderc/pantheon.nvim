local palette = {
  -- Backgrounds
  cosmicBlack = "#060710",
  voidBlack = "#0b0f18",
  starlightGray = "#141a24",
  nebulaGray = "#1c212b",

  -- Batman colors
  batCape = "#0d0d0d",
  batSuit = "#1a1a1a",
  batEmblem = "#ffd700",
  batGloves = "#1f1f1f",
  batBoots = "#1f1f1f",
  batBelt = "#d4af37",
  batHighlight = "#3a3f4c",

  -- Supporting colors
  shadowGray = "#3e4451",
  dimGray = "#565c64",
  stoneGray = "#abb2bf",
  lightGray = "#c8ccd4",

  -- Accents
  dangerRed = "#e06c75",
  infoBlue = "#61afef",
  tealGlow = "#00ddaa",
}

return {
  name = "Batman Classic",
  author = "PrismPunk.nvim",
  palette = palette,

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.batEmblem,
    base08 = palette.dangerRed,
    base09 = palette.batBelt,
    base0A = palette.batEmblem,
    base0B = palette.tealGlow,
    base0C = palette.tealGlow,
    base0D = palette.infoBlue,
    base0E = palette.batHighlight,
    base0F = palette.batGloves,
  },

  semantic = {
    syn = {
      string = palette.batHighlight,
      number = palette.batBelt,
      boolean = palette.batEmblem,
      keyword = palette.batSuit,
      operator = palette.tealGlow,
      func = palette.infoBlue,
      type = palette.batBelt,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.batEmblem,
      special = palette.batHighlight,
    },
    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.batEmblem,
      border = palette.batSuit,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.batHighlight,
    },
    diag = {
      error = palette.dangerRed,
      warning = palette.batBelt,
      info = palette.infoBlue,
      hint = palette.tealGlow,
    },
    git = {
      add = palette.batEmblem,
      change = palette.batHighlight,
      delete = palette.dangerRed,
    },
    diff = {
      add = palette.batEmblem,
      change = palette.batSuit,
      delete = palette.dangerRed,
      text = palette.infoBlue,
    },
  },
}
