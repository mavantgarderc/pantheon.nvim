local palette = {
  cosmicBlack = "#07060b",
  voidBlack = "#0e0d14",
  starlightGray = "#181621",
  nebulaGray = "#201d2c",

  ultraBright = "#a88cff",
  ultraGlow = "#8b6cff",
  ultraCore = "#6e4dff",
  ultraDeep = "#5133cc",
  ultraDark = "#352299",

  veilMist = "#666699",
  echoViolet = "#9999cc",
  ghostBlue = "#99bbee",
  phantasmRose = "#cc99cc",

  accentFog = "#d9d9ff",
  accentMoon = "#b3b3cc",
  accentDusk = "#8080aa",
  accentEthereal = "#ccccff",

  shadowGray = "#3f3b4a",
  dimGray = "#59546b",
  stoneGray = "#a9a2c6",
  lightGray = "#d8d4f2",

  dangerRed = "#ff6677",
  warningOrange = "#ffc780",
  infoBlue = "#7fbfff",
}

return {
  name = "Lantern Corps - Ultraviolet (Veiled)",
  author = "PrismPunk.nvim",
  description = "A whisper of unseen emotion, faint but infinite.",

  base16 = {
    base00 = palette.cosmicBlack,
    base01 = palette.voidBlack,
    base02 = palette.starlightGray,
    base03 = palette.shadowGray,
    base04 = palette.dimGray,
    base05 = palette.stoneGray,
    base06 = palette.lightGray,
    base07 = palette.accentEthereal,
    base08 = palette.ultraGlow,
    base09 = palette.ghostBlue,
    base0A = palette.veilMist,
    base0B = palette.ultraBright,
    base0C = palette.phantasmRose,
    base0D = palette.accentFog,
    base0E = palette.ultraCore,
    base0F = palette.echoViolet,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.ultraBright,
      number = palette.ghostBlue,
      boolean = palette.veilMist,
      keyword = palette.ultraCore,
      operator = palette.phantasmRose,
      func = palette.accentFog,
      type = palette.echoViolet,
      variable = palette.stoneGray,
      comment = palette.shadowGray,
      constant = palette.accentMoon,
      special = palette.ultraGlow,
    },

    ui = {
      bg = palette.cosmicBlack,
      bg_dim = palette.voidBlack,
      bg_highlight = palette.starlightGray,
      fg = palette.stoneGray,
      fg_dim = palette.dimGray,
      fg_bright = palette.lightGray,
      border = palette.ultraDark,
      float = palette.voidBlack,
      selection = palette.nebulaGray,
      cursorline = palette.voidBlack,
      line_nr = palette.shadowGray,
      line_nr_active = palette.ultraCore,
    },

    diag = {
      error = palette.dangerRed,
      warning = palette.warningOrange,
      info = palette.infoBlue,
      hint = palette.veilMist,
    },

    git = {
      add = palette.ultraBright,
      change = palette.echoViolet,
      delete = palette.dangerRed,
    },

    diff = {
      add = palette.ultraBright,
      change = palette.ultraCore,
      delete = palette.dangerRed,
      text = palette.accentFog,
    },
  },
}
