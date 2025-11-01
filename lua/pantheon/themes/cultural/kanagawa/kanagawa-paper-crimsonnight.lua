-- hachiman-crimson-night variant (reddish version)
local palette = {
  -- Base darks
  sumiInk0       = "#0B0A10",  -- primary background
  sumiInk1       = "#16151E",  -- secondary background
  sumiInk2       = "#22212D",  -- cursorline / float
  sumiInk3       = "#2D2C39",  -- dimmed highlights / selection
  sumiInk4       = "#4F4C5B",  -- line numbers / nontext

  -- Foregrounds
  fujiWhite      = "#DED9C7",  -- main foreground
  oldWhite       = "#CBC3AD",  -- secondary foreground
  softGray       = "#72706D",  -- comments / muted UI

  -- Reds / Crimson
  crimsonRed1    = "#B83238",  -- primary keywords / error / delete (deeper)
  crimsonRed2    = "#C94040",  -- important highlights / warning (more vivid)
  emberRed       = "#FF4C4C",  -- strings / virtual text (bright red)

  -- Oranges / Golds
  emberGold      = "#E6B252",  -- operators / accents
  softAmber      = "#F1C67B",  -- light accents / diff

  -- Greens
  forestGreen    = "#61835B",  -- git add / hint
  lightGreen     = "#7BA278",  -- git inline / ok

  -- Blues
  stormBlue      = "#2C4B6B",  -- functions
  waveAqua1      = "#4C8C8F",  -- booleans / info

  -- Purples
  violet1        = "#8C77B0",  -- types
  violet2        = "#9B88C3",  -- secondary type

  -- Neutrals / Extras
  ashGray        = "#5B5854",  -- subtle background / fold
  darkTeal       = "#204D51",  -- accent / diff
  steelGray      = "#6F6B68",  -- comment alternative / inactive
  emberPink      = "#D16B7C",  -- optional warnings / highlights
}

return {
  name        = "Hachiman – Crimson Night (Reddish)",
  author      = "Pantheon.nvim",
  description = "Dark, blood-red dominant theme with deep shadows and bright crimson accents.",

  base16 = {
    base00 = palette.sumiInk0,
    base01 = palette.sumiInk1,
    base02 = palette.sumiInk2,
    base03 = palette.sumiInk3,
    base04 = palette.sumiInk4,
    base05 = palette.fujiWhite,
    base06 = palette.oldWhite,
    base07 = palette.softGray,
    base08 = palette.crimsonRed1,
    base09 = palette.crimsonRed2,
    base0A = palette.emberGold,
    base0B = palette.forestGreen,
    base0C = palette.waveAqua1,
    base0D = palette.stormBlue,
    base0E = palette.violet1,
    base0F = palette.emberRed,
  },

  palette = palette,

  semantic = {
    syn = {
      string        = palette.emberRed,
      number        = palette.emberGold,
      boolean       = palette.waveAqua1,
      keyword       = palette.crimsonRed1,
      operator      = palette.emberGold,
      func          = palette.stormBlue,
      type          = palette.violet1,
      variable      = palette.fujiWhite,
      comment       = palette.softGray,
      constant      = palette.oldWhite,
      special       = palette.crimsonRed2,
      string_escape = palette.emberGold,
      type_builtin  = palette.violet2,
      method        = palette.stormBlue,
      attribute     = palette.oldWhite,
      punctuation   = palette.sumiInk4,
    },

    ui = {
      bg             = palette.sumiInk0,
      bg_dim         = palette.sumiInk1,
      bg_highlight   = palette.sumiInk2,
      fg             = palette.fujiWhite,
      fg_dim         = palette.oldWhite,
      fg_bright      = palette.softGray,
      border         = palette.emberGold,
      float          = palette.sumiInk2,
      selection      = palette.sumiInk3,
      cursorline     = palette.sumiInk2,
      line_nr        = palette.sumiInk4,
      line_nr_active = palette.stormBlue,
      line_nr_dim    = palette.softGray,
      nontext        = palette.sumiInk3,
      msg_area       = palette.sumiInk4,
      mode_msg       = palette.stormBlue,
      title          = palette.violet2,
      spell_bad      = palette.crimsonRed1,
      spell_cap      = palette.crimsonRed2,
      spell_rare     = palette.waveAqua1,
      spell_local    = palette.forestGreen,
      folded         = palette.softGray,
      fold_column    = palette.sumiInk4,
    },

    diag = {
      error             = palette.crimsonRed1,
      warning           = palette.crimsonRed2,
      info              = palette.waveAqua1,
      hint              = palette.forestGreen,
      ok                = palette.stormBlue,
      virtual_text_error   = palette.crimsonRed1,
      virtual_text_warning = palette.crimsonRed2,
      virtual_text_info    = palette.waveAqua1,
      virtual_text_hint    = palette.forestGreen,
      virtual_text_ok      = palette.stormBlue,
    },

    git = {
      add           = palette.forestGreen,
      change        = palette.emberGold,
      delete        = palette.crimsonRed1,
      add_inline    = palette.lightGreen,
      change_inline = palette.softAmber,
      delete_inline = palette.crimsonRed2,
    },

    diff = {
      add    = palette.forestGreen,
      change = palette.emberGold,
      delete = palette.crimsonRed1,
      text   = palette.waveAqua1,
    },
  },
}
