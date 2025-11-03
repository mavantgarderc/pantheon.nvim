local palette = {
  sumiInk0 = "#16161D", -- very dark background
  sumiInk1 = "#1F1F28", -- dark background
  sumiInk2 = "#2A2A37", -- background lighter shift
  sumiInk3 = "#363646", -- cursorline/fold background
  sumiInk4 = "#54546D", -- line numbers / non-text
  fujiWhite = "#DCD7BA", -- default foreground
  oldWhite = "#C8C093", -- dark foreground (statusline)
  winterRed = "#43242B", -- diff deleted (background) – from original palette set :contentReference[oaicite:1]{index=1}
  winterGreen = "#2B3328", -- diff added (background)
  autumnRed = "#C34043", -- git delete
  autumnGreen = "#76946A", -- git add
  autumnYellow = "#DCA561", -- git change
  waveBlue1 = "#465e7f",
  waveBlue2 = "#2D4F67",
  waveAqua1 = "#6A9589",
  springViolet1 = "#938AA9",
  springViolet2 = "#9CABCA",
  winterYellow = "#49443C",
  -- Extended/custom additions:
  heroicCyan = "#7FB4CA", -- custom: highlight/variables
  gentlePink = "#D27E99", -- custom: string literal accent
  calmTeal = "#7AA89F", -- custom: type names
  subtleGold = "#C0A36E", -- custom: operators / punctuation
  softGray = "#727169", -- custom: comments / inactive
}

return {
  name = "Kanagawa Paper – Ink (Extended)",
  author = "Generated for you",
  description = "Dark mode – Ink variant of Kanagawa Paper, extended with extra semantic colour mappings.",

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
    base0A = palette.subtleGold,
    base0B = palette.autumnGreen,
    base0C = palette.waveAqua1,
    base0D = palette.waveBlue2,
    base0E = palette.springViolet1,
    base0F = palette.gentlePink,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.gentlePink,
      number = palette.waveBlue2,
      boolean = palette.waveAqua1,
      keyword = palette.autumnRed,
      operator = palette.subtleGold,
      func = palette.waveBlue1,
      type = palette.calmTeal,
      variable = palette.fujiWhite,
      comment = palette.softGray,
      constant = palette.oldWhite,
      special = palette.waveAqua1,
      string_escape = palette.subtleGold,
      type_builtin = palette.calmTeal,
      method = palette.waveBlue1,
      attribute = palette.oldWhite,
      punctuation = palette.sumiInk4,
    },

    ui = {
      bg = palette.sumiInk0,
      bg_dim = palette.sumiInk1,
      bg_highlight = palette.sumiInk2,
      fg = palette.fujiWhite,
      fg_dim = palette.oldWhite,
      fg_bright = palette.waveBlue1,
      border = palette.subtleGold,
      float = palette.sumiInk1,
      selection = palette.sumiInk3,
      cursorline = palette.sumiInk3,
      line_nr = palette.sumiInk4,
      line_nr_active = palette.waveBlue2,
      line_nr_dim = palette.softGray,
      nontext = palette.sumiInk2,
      msg_area = palette.sumiInk4,
      mode_msg = palette.waveBlue2,
      title = palette.springViolet2,
      spell_bad = palette.autumnRed,
      spell_cap = palette.autumnYellow,
      spell_rare = palette.waveBlue1,
      spell_local = palette.autumnGreen,
      folded = palette.softGray,
      fold_column = palette.sumiInk4,
    },

    diag = {
      error = palette.autumnRed,
      warning = palette.autumnYellow,
      info = palette.waveBlue1,
      hint = palette.autumnGreen,
      ok = palette.waveAqua1,
      virtual_text_error = palette.autumnRed,
      virtual_text_warning = palette.autumnYellow,
      virtual_text_info = palette.waveBlue1,
      virtual_text_hint = palette.autumnGreen,
      virtual_text_ok = palette.waveAqua1,
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
      change = palette.subtleGold,
      delete = palette.autumnRed,
      text = palette.waveAqua1,
    },
  },
}
