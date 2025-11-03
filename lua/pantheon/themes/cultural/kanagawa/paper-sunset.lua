-- kanagawa-paper-sunset variant (extended)
local palette = {
  sumiInk0 = "#1b1a23", -- very dark background
  sumiInk1 = "#22222e",
  sumiInk2 = "#2e2e3b",
  sumiInk3 = "#3a3a4a",
  sumiInk4 = "#4a4a5a",

  fujiWhite = "#E5E0C4", -- main foreground
  oldWhite = "#CFC9A2",
  softPaper = "#D8D3B2",

  -- Core Kanagawa warmth
  autumnRed = "#C34043",
  autumnYellow = "#DCA561",
  autumnGreen = "#76946A",
  springViolet1 = "#938AA9",
  springViolet2 = "#9CABCA",
  waveAqua1 = "#6A9589",
  waveBlue1 = "#223249",
  waveBlue2 = "#2D4F67",

  -- Sunset-specific additions
  duskCoral = "#E07A5F", -- accent red-orange
  sunsetGold = "#E6B450", -- highlight yellow
  twilightPink = "#D68C8C", -- strings
  sandTan = "#C4A484", -- constants
  horizonViolet = "#A98BBF", -- functions/types
  mistGray = "#8E8C9C", -- comments / dim text
  emberOrange = "#FF9E64", -- operators / punctuation
  flareRose = "#D16B7C", -- warnings / errors
  emberYellow = "#F6C177", -- info / bright
}

return {
  name = "Kanagawa Paper – Sunset (Extended)",
  author = "Generated for you",
  description = "Soft dusk variant with warm highlights and muted shadows.",

  base16 = {
    base00 = palette.sumiInk0,
    base01 = palette.sumiInk1,
    base02 = palette.sumiInk2,
    base03 = palette.sumiInk3,
    base04 = palette.sumiInk4,
    base05 = palette.fujiWhite,
    base06 = palette.oldWhite,
    base07 = palette.softPaper,
    base08 = palette.autumnRed,
    base09 = palette.sunsetGold,
    base0A = palette.emberYellow,
    base0B = palette.autumnGreen,
    base0C = palette.waveAqua1,
    base0D = palette.waveBlue2,
    base0E = palette.horizonViolet,
    base0F = palette.sandTan,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.twilightPink,
      number = palette.sunsetGold,
      boolean = palette.waveAqua1,
      keyword = palette.autumnRed,
      operator = palette.emberOrange,
      func = palette.horizonViolet,
      type = palette.horizonViolet,
      variable = palette.fujiWhite,
      comment = palette.mistGray,
      constant = palette.sandTan,
      special = palette.flareRose,
      string_escape = palette.emberOrange,
      type_builtin = palette.waveAqua1,
      method = palette.horizonViolet,
      attribute = palette.sandTan,
      punctuation = palette.emberOrange,
    },

    ui = {
      bg = palette.sumiInk0,
      bg_dim = palette.sumiInk1,
      bg_highlight = palette.sumiInk2,
      fg = palette.fujiWhite,
      fg_dim = palette.oldWhite,
      fg_bright = palette.softPaper,
      border = palette.sunsetGold,
      float = palette.sumiInk1,
      selection = palette.sumiInk3,
      cursorline = palette.sumiInk3,
      line_nr = palette.mistGray,
      line_nr_active = palette.sunsetGold,
      line_nr_dim = palette.sumiInk4,
      nontext = palette.sumiInk3,
      msg_area = palette.sumiInk4,
      mode_msg = palette.sunsetGold,
      title = palette.sunsetGold,
      spell_bad = palette.flareRose,
      spell_cap = palette.emberYellow,
      spell_rare = palette.waveAqua1,
      spell_local = palette.sunsetGold,
      folded = palette.mistGray,
      fold_column = palette.sumiInk4,
    },

    diag = {
      error = palette.flareRose,
      warning = palette.sunsetGold,
      info = palette.waveAqua1,
      hint = palette.autumnGreen,
      ok = palette.waveBlue2,
      virtual_text_error = palette.flareRose,
      virtual_text_warning = palette.sunsetGold,
      virtual_text_info = palette.waveAqua1,
      virtual_text_hint = palette.autumnGreen,
      virtual_text_ok = palette.waveBlue2,
    },

    git = {
      add = palette.autumnGreen,
      change = palette.sunsetGold,
      delete = palette.flareRose,
      add_inline = palette.autumnGreen,
      change_inline = palette.sunsetGold,
      delete_inline = palette.flareRose,
    },

    diff = {
      add = palette.autumnGreen,
      change = palette.sunsetGold,
      delete = palette.flareRose,
      text = palette.waveAqua1,
    },
  },
}
