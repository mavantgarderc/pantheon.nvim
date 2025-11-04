-- amaterasu-eclipse variant
local palette = {
  sumiInk0 = "#0F0E14", -- ultra-dark background
  sumiInk1 = "#191622", -- dark layer
  sumiInk2 = "#242233", -- cursorline / float
  sumiInk3 = "#2F2C44", -- dimmed highlights
  sumiInk4 = "#5A566E", -- line numbers / nontext

  fujiWhite = "#E0DCCF", -- main foreground
  oldWhite = "#CFC7B7", -- secondary foreground

  autumnRed = "#C74C3C", -- delete / keywords
  autumnGreen = "#6B8750", -- git add / ok
  autumnYellow = "#E6B64A", -- change / warning / highlights

  waveBlue1 = "#2A4B6F", -- functions
  waveAqua1 = "#5F9EA0", -- booleans / info
  springViolet1 = "#9B7ECF", -- types
  springViolet2 = "#A88ED1", -- secondary types
  winterYellow = "#4F4530", -- muted background accent

  -- extended warm accents
  divineGold = "#FFD96B", -- operators / highlights
  emberRed = "#E94E3D", -- string / important text
  softGray = "#73716E", -- comments / dimmed UI
  heroicCyan = "#7FB4CA", -- optional highlights / methods
}

return {
  name = "Amaterasu – Eclipse",
  author = "PrismPunk.nvim",
  description = "Dark mode – eclipsed sun with warm divine glow.",

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
    base0A = palette.divineGold,
    base0B = palette.autumnGreen,
    base0C = palette.waveAqua1,
    base0D = palette.waveBlue1,
    base0E = palette.springViolet1,
    base0F = palette.emberRed,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.emberRed,
      number = palette.autumnYellow,
      boolean = palette.waveAqua1,
      keyword = palette.autumnRed,
      operator = palette.divineGold,
      func = palette.waveBlue1,
      type = palette.springViolet1,
      variable = palette.fujiWhite,
      comment = palette.softGray,
      constant = palette.oldWhite,
      special = palette.autumnRed,
      string_escape = palette.divineGold,
      type_builtin = palette.springViolet2,
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
      fg_bright = palette.softGray,
      border = palette.divineGold,
      float = palette.sumiInk1,
      selection = palette.sumiInk3,
      cursorline = palette.sumiInk2,
      line_nr = palette.sumiInk4,
      line_nr_active = palette.waveBlue1,
      line_nr_dim = palette.softGray,
      nontext = palette.sumiInk3,
      msg_area = palette.sumiInk4,
      mode_msg = palette.waveBlue1,
      title = palette.divineGold,
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
      ok = palette.waveBlue1,
      virtual_text_error = palette.autumnRed,
      virtual_text_warning = palette.autumnYellow,
      virtual_text_info = palette.waveAqua1,
      virtual_text_hint = palette.autumnGreen,
      virtual_text_ok = palette.waveBlue1,
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
      change = palette.divineGold,
      delete = palette.autumnRed,
      text = palette.waveAqua1,
    },
  },
}
