-- izanami-obsidian variant (expanded, ~20 colors)
local palette = {
  -- Base darks
  sumiInk0 = "#0A0A0F", -- primary background
  sumiInk1 = "#14141B", -- secondary background
  sumiInk2 = "#1F1F29", -- cursorline / float
  sumiInk3 = "#2A2A36", -- dim highlight / selection
  sumiInk4 = "#4C4C57", -- line numbers / nontext

  -- Foregrounds
  fujiWhite = "#DAD6C7", -- main foreground
  oldWhite = "#C7C2B0", -- secondary foreground
  softGray = "#6F6C68", -- comments / muted UI

  -- Reds
  obsidianRed1 = "#A1393D", -- errors / delete
  obsidianRed2 = "#B14B4F", -- warnings / important keywords

  -- Yellows / Golds
  obsidianGold1 = "#CFA04A", -- changes / operators
  obsidianGold2 = "#E0B55D", -- highlights / accent

  -- Greens
  obsidianGreen1 = "#5F7A50", -- add / ok
  obsidianGreen2 = "#789262", -- lighter green for diff inline

  -- Blues
  stormBlue = "#273E57", -- functions
  waveBlue1 = "#2C4B6B", -- method / secondary function
  waveAqua1 = "#4D8B8F", -- booleans / info

  -- Purples
  thunderViolet1 = "#8679B0", -- types
  thunderViolet2 = "#978AC4", -- secondary type / annotations

  -- Neutrals / Extras
  ashGray = "#535153", -- subtle backgrounds / folds
  darkTeal = "#224D50", -- accents / git indicators
  emberOrange = "#D76B3D", -- optional highlights / virtual text
}

return {
  name = "Izanami – Obsidian",
  author = "PrismPunk.nvim",
  description = "Ultra-dark minimalist theme with expanded ~20-color palette for full semantic flexibility.",

  base16 = {
    base00 = palette.sumiInk0,
    base01 = palette.sumiInk1,
    base02 = palette.sumiInk2,
    base03 = palette.sumiInk3,
    base04 = palette.sumiInk4,
    base05 = palette.fujiWhite,
    base06 = palette.oldWhite,
    base07 = palette.softGray,
    base08 = palette.obsidianRed1,
    base09 = palette.obsidianRed2,
    base0A = palette.obsidianGold1,
    base0B = palette.obsidianGreen1,
    base0C = palette.waveAqua1,
    base0D = palette.stormBlue,
    base0E = palette.thunderViolet1,
    base0F = palette.obsidianGold2,
  },

  palette = palette,

  semantic = {
    syn = {
      string = palette.stormBlue,
      number = palette.obsidianGold2,
      boolean = palette.waveAqua1,
      keyword = palette.obsidianRed2,
      operator = palette.obsidianGold1,
      func = palette.waveBlue1,
      type = palette.thunderViolet1,
      variable = palette.fujiWhite,
      comment = palette.softGray,
      constant = palette.oldWhite,
      special = palette.obsidianRed1,
      string_escape = palette.obsidianGold1,
      type_builtin = palette.thunderViolet2,
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
      border = palette.obsidianGold1,
      float = palette.sumiInk2,
      selection = palette.sumiInk3,
      cursorline = palette.sumiInk2,
      line_nr = palette.sumiInk4,
      line_nr_active = palette.stormBlue,
      line_nr_dim = palette.softGray,
      nontext = palette.sumiInk3,
      msg_area = palette.sumiInk4,
      mode_msg = palette.stormBlue,
      title = palette.thunderViolet2,
      spell_bad = palette.obsidianRed1,
      spell_cap = palette.obsidianRed2,
      spell_rare = palette.waveAqua1,
      spell_local = palette.obsidianGreen1,
      folded = palette.softGray,
      fold_column = palette.sumiInk4,
    },

    diag = {
      error = palette.obsidianRed1,
      warning = palette.obsidianRed2,
      info = palette.waveAqua1,
      hint = palette.obsidianGreen1,
      ok = palette.stormBlue,
      virtual_text_error = palette.obsidianRed1,
      virtual_text_warning = palette.obsidianRed2,
      virtual_text_info = palette.waveAqua1,
      virtual_text_hint = palette.obsidianGreen1,
      virtual_text_ok = palette.stormBlue,
    },

    git = {
      add = palette.obsidianGreen1,
      change = palette.obsidianGold1,
      delete = palette.obsidianRed1,
      add_inline = palette.obsidianGreen2,
      change_inline = palette.obsidianGold2,
      delete_inline = palette.obsidianRed2,
    },

    diff = {
      add = palette.obsidianGreen1,
      change = palette.obsidianGold1,
      delete = palette.obsidianRed1,
      text = palette.waveAqua1,
    },
  },
}
