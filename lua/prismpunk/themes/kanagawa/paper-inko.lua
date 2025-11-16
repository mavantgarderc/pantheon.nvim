local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.kanagawa.paper-inko")

local M = {}

---@param opts table
---@param plt table
---@return table
---@diagnostic disable-next-line: redefined-local
M.get = function(opts, plt)
  return {
    modes = {
      normal = plt.dragonYellow,
      insert = plt.dragonRed,
      visual = plt.springViolet1,
      replace = plt.dragonRed,
      command = plt.dragonYellow,
    },

    ui = {
      fg = plt.fujiWhite,
      fg_dim = plt.dragonGray2,
      fg_dimmer = plt.dragonBlack5,
      fg_dark = plt.dragonBlack3,
      fg_reverse = plt.dragonBlack2,
      fg_bright = plt.dragonWhite,

      bg = plt.sumiInk3,
      bg_m4 = plt.sumiInkn1,
      bg_m3 = plt.sumiInk0,
      bg_m2 = plt.sumiInk1,
      bg_m1 = plt.sumiInk2,
      bg_dim = plt.sumiInk1,
      bg_p1 = plt.sumiInk4,
      bg_p2 = plt.sumiInk5,
      bg_highlight = plt.sumiInk5,

      bg_gutter = opts.gutter and plt.sumiInk4 or "none",
      bg_cursorline = plt.sumiInk4,
      bg_cursorline_alt = plt.sumiInk5,
      bg_search = plt.springViolet1,
      bg_visual = plt.sumiInk5,
      bg_statusline = plt.sumiInk4,

      border = plt.dragonBlack6,
      header1 = plt.dragonViolet,
      header2 = plt.dragonOrange,
      special = plt.dragonAqua,
      nontext = plt.sumiInk6,
      whitespace = plt.sumiInk6,
      win_separator = plt.dragonViolet,
      indent = plt.sumiInk5,
      indent_scope = plt.dragonViolet,
      picker = plt.dragonRed,
      yank = plt.sumiInk6,
      mark = plt.waveAqua2,
      scrollbar = plt.sumiInk5,

      line_nr = plt.sumiInk6,
      line_nr_dim = plt.sumiInk5,
      line_nr_active = plt.dragonYellow,

      selection = plt.sumiInk5,
      cursorline = plt.sumiInk4,

      tabline = {
        bg = plt.sumiInk0,
        fg_selected = plt.dragonWhite,
        bg_selected = plt.sumiInk3,
        fg_inactive = plt.dragonBlack5,
        bg_inactive = plt.sumiInk0,
        fg_alternate = plt.dragonPink,
        bg_alternate = plt.sumiInk0,
        indicator = plt.dragonBlue,
      },
      pmenu = {
        fg = plt.fujiWhite,
        fg_sel = "none",
        fg_border = plt.sumiInk5,
        bg_border = plt.sumiInk4,
        bg = plt.sumiInk4,
        bg_sel = plt.sumiInk5,
        bg_sbar = plt.sumiInk4,
        bg_thumb = plt.sumiInk6,
      },
      float = {
        fg = plt.oldWhite,
        bg = plt.sumiInk4,
        fg_border = plt.sumiInk5,
        bg_border = plt.sumiInk4,
      },
    },

    accent = {
      accent1 = plt.dragonBlue,
      accent2 = plt.dragonOrange,
      accent3 = plt.waveAqua1,
      accent4 = plt.dragonGray3,
      accent5 = plt.dragonRed,
      invert = plt.sumiInk4,
    },

    rainbow = {
      rainbow1 = plt.dragonRed,
      rainbow2 = plt.dragonPink,
      rainbow3 = plt.dragonBlue,
      rainbow4 = plt.dragonOrange2,
      rainbow5 = plt.dragonGreen,
      rainbow6 = plt.dragonAsh,
      rainbow7 = plt.dragonTeal,
    },

    syn = {
      attribute = plt.dragonYellow,
      comment = plt.fujiGray,
      constant = plt.dragonOrange,
      deprecated = plt.katanaGray,
      func = plt.dragonBlue2,
      identifier = plt.dragonYellow,
      keyword = plt.dragonPink,
      member = plt.dragonRed,
      number = plt.dragonPink,
      operator = plt.dragonRed,
      parameter = plt.dragonGray,
      preproc = plt.dragonRed,
      punct = plt.dragonGray2,
      regex = plt.dragonRed,
      statement = plt.dragonViolet,
      string = plt.dragonGreen2,
      symbol = plt.dragonRed,
      type = plt.dragonAqua,
      variable = "none",
      special = plt.dragonYellow,
      special1 = plt.dragonYellow,
      special2 = plt.dragonRed,
      special3 = plt.springViolet1,
      boolean = plt.dragonPink,
    },

    vcs = {
      added = plt.dragonGreen,
      added_light = color(plt.dragonGreen):blend(plt.sumiInk3, 0.9):to_hex(),
      removed = plt.dragonRed,
      removed_light = color(plt.dragonRed):blend(plt.sumiInk3, 0.9):to_hex(),
      changed = plt.dragonYellow,
      changed_light = color(plt.dragonYellow):blend(plt.sumiInk3, 0.9):to_hex(),
    },

    git = {
      add = plt.dragonGreen,
      add_inline = color(plt.dragonGreen):blend(plt.sumiInk3, 0.8):to_hex(),
      delete = plt.dragonRed,
      delete_inline = color(plt.dragonRed):blend(plt.sumiInk3, 0.8):to_hex(),
      change = plt.dragonYellow,
      change_inline = color(plt.dragonYellow):blend(plt.sumiInk3, 0.8):to_hex(),
    },

    diff = {
      add = plt.dragonGreen,
      add_light = color(plt.dragonGreen):blend(plt.sumiInk3, 0.9):to_hex(),
      delete = plt.dragonRed,
      delete_light = color(plt.dragonRed):blend(plt.sumiInk3, 0.9):to_hex(),
      change = plt.dragonYellow,
      change_light = color(plt.dragonYellow):blend(plt.sumiInk3, 0.9):to_hex(),
      text = plt.dragonBlue,
      text_light = color(plt.dragonBlue):blend(plt.sumiInk3, 0.9):to_hex(),
    },

    diag = {
      ok = plt.dragonGreen,
      ok_light = color(plt.dragonGreen):blend(plt.sumiInk3, 0.92):to_hex(),
      error = plt.dragonRed,
      error_light = color(plt.dragonRed):blend(plt.sumiInk3, 0.92):to_hex(),
      warning = plt.dragonYellow,
      warning_light = color(plt.dragonYellow):blend(plt.sumiInk3, 0.92):to_hex(),
      info = plt.dragonBlue,
      info_light = color(plt.dragonBlue):blend(plt.sumiInk3, 0.92):to_hex(),
      hint = plt.dragonAqua,
      hint_light = color(plt.dragonAqua):blend(plt.sumiInk3, 0.92):to_hex(),
    },

    term = {
      black = plt.dragonBlack5,
      red = plt.dragonRed,
      green = plt.dragonGreen,
      yellow = plt.dragonYellow,
      blue = plt.dragonBlue5,
      magenta = plt.dragonPink,
      cyan = plt.dragonAqua,
      white = plt.oldWhite,
      black_bright = color(plt.dragonBlack5):brighten(0.6):to_hex(),
      red_bright = color(plt.dragonRed):brighten(0.2):to_hex(),
      green_bright = color(plt.dragonGreen):brighten(0.1):to_hex(),
      yellow_bright = color(plt.dragonYellow):brighten(0.2):to_hex(),
      blue_bright = color(plt.dragonBlue5):brighten(0.3):to_hex(),
      magenta_bright = color(plt.dragonPink):brighten(0.2):to_hex(),
      cyan_bright = color(plt.dragonAqua):brighten(0.1):to_hex(),
      white_bright = color(plt.oldWhite):brighten(0.2):to_hex(),
      indexed1 = plt.dragonOrange,
      indexed2 = plt.dragonRed,
    },
  }
end

return {
  name = "Kanagawa Paper - Dragon",
  author = "Kanagawa Paper",
  description = "Dark theme inspired by the colors of the dragon",

  base16 = {
    base00 = palette.sumiInk3,
    base01 = palette.sumiInk4,
    base02 = palette.sumiInk5,
    base03 = palette.sumiInk6,
    base04 = palette.dragonGray2,
    base05 = palette.fujiWhite,
    base06 = palette.oldWhite,
    base07 = palette.dragonWhite,
    base08 = palette.dragonRed,
    base09 = palette.dragonOrange,
    base0A = palette.dragonYellow,
    base0B = palette.dragonGreen,
    base0C = palette.dragonAqua,
    base0D = palette.dragonBlue,
    base0E = palette.dragonViolet,
    base0F = palette.dragonPink,
  },

  palette = palette,

  get = M.get,
}
