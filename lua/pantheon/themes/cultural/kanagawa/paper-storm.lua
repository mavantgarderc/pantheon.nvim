-- susanoo-storm variant
local palette = {
  sumiInk0 = "#0D0F18", -- ultra-dark background
  sumiInk1 = "#191D28", -- dark layer
  sumiInk2 = "#242C3B", -- cursorline / float
  sumiInk3 = "#30384A", -- dimmed highlights
  sumiInk4 = "#555F6E", -- line numbers / nontext

  fujiWhite = "#D9D7CD", -- main foreground
  oldWhite = "#C7C3B1", -- secondary foreground

  stormBlue = "#3A5F7A", -- functions / active elements
  waveAqua1 = "#5A9CA0", -- booleans / info
  steelGray = "#6C7580", -- comments / muted UI
  thunderViolet = "#8C7EB1", -- types
  mistCyan = "#7FB4CA", -- method / highlight
  deepTeal = "#266362", -- diff add / ok

  autumnRed = "#B44C4B", -- delete / error
  autumnYellow = "#D9A441", -- warning / change
  autumnGreen = "#6B8850", -- add / ok

  softGray = "#727169", -- dim text
}

return {
  name = "Susanoo – Storm",
  author = "Pantheon.nvim",
  description = "Dark mode – stormy night with deep indigo and steel highlights.",

  base16 = {
    base00 = palette.sumiInk0,
    base01 = palette.sumiInk1,
    base02 = palette.sumiInk2,
    base03 = palette.sumiInk3,
    base04 = palette.sumiInk4,
    base05 = palette.fujiWhite,
    base06 = palette.oldWhite,
    base07 = palette.softGray,
    base08 = palette.autumnRed,
    base09 = palette.autumnYellow,
    base0A = palette.stormBlue,
    base0B = palette.autumnGreen,
    base0C = palette.waveAqua1,
    base0D = palette.stormBlue,
    base0E = palette.thunderViolet,
    base0F = palette.deepTeal,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.stormBlue,
      number = palette.autumnYellow,
      boolean = palette.waveAqua1,
      keyword = palette.autumnRed,
      operator = palette.stormBlue,
      func = palette.stormBlue,
      type = palette.thunderViolet,
      variable = palette.fujiWhite,
      comment = palette.steelGray,
      constant = palette.oldWhite,
      special = palette.autumnRed,
      string_escape = palette.stormBlue,
      type_builtin = palette.thunderViolet,
      method = palette.mistCyan,
      attribute = palette.oldWhite,
      punctuation = palette.sumiInk4,
    },

    ui = {
      bg = palette.sumiInk0,
      bg_dim = palette.sumiInk1,
      bg_highlight = palette.sumiInk2,
      fg = palette.fujiWhite,
      fg_dim = palette.oldWhite,
      fg_bright = palette.softGray,
      border = palette.stormBlue,
      float = palette.sumiInk2,
      selection = palette.sumiInk3,
      cursorline = palette.sumiInk2,
      line_nr = palette.sumiInk4,
      line_nr_active = palette.stormBlue,
      line_nr_dim = palette.softGray,
      nontext = palette.sumiInk3,
      msg_area = palette.sumiInk4,
      mode_msg = palette.stormBlue,
      title = palette.thunderViolet,
      spell_bad = palette.autumnRed,
      spell_cap = palette.autumnYellow,
      spell_rare = palette.waveAqua1,
      spell_local = palette.autumnGreen,
      folded = palette.softGray,
      fold_column = palette.sumiInk4,
    },

    diag = {
      error = palette.autumnRed,
      warning = palette.autumnYellow,
      info = palette.waveAqua1,
      hint = palette.autumnGreen,
      ok = palette.mistCyan,
      virtual_text_error = palette.autumnRed,
      virtual_text_warning = palette.autumnYellow,
      virtual_text_info = palette.waveAqua1,
      virtual_text_hint = palette.autumnGreen,
      virtual_text_ok = palette.mistCyan,
    },

    git = {
      add = palette.autumnGreen,
      change = palette.autumnYellow,
      delete = palette.autumnRed,
      add_inline = palette.autumnGreen,
      change_inline = palette.autumnYellow,
      delete_inline = palette.autumnRed,
    },

    diff = {
      add = palette.autumnGreen,
      change = palette.stormBlue,
      delete = palette.autumnRed,
      text = palette.waveAqua1,
    },
  },
}
