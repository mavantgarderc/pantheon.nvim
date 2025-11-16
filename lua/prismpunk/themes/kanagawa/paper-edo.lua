local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.kanagawa.paper-edo")

local M = {}

---@param opts table
---@param theme_palette table
---@return table
M.get = function(opts, theme_palette)
  local pal = theme_palette or palette

  return {
    modes = {
      normal = pal.dragonYellow,
      insert = pal.dragonRed,
      visual = pal.dragonViolet,
      replace = pal.dragonRed,
      command = pal.dragonYellow,
    },

    ui = {
      fg = pal.fujiWhite,
      fg_dim = pal.dragonGray2,
      fg_dimmer = pal.dragonBlack5,
      fg_dark = pal.dragonBlack3,
      fg_reverse = pal.dragonBlack2,
      bg_m4 = pal.dragonBlack6,
      bg_m3 = pal.dragonBlack5,
      bg_m2 = pal.sumiInk0,
      bg_m1 = pal.sumiInk1,
      bg_dim = pal.sumiInk1,
      bg = pal.sumiInk0,
      bg_p1 = pal.sumiInk2,
      bg_p2 = pal.sumiInk3,
      bg_gutter = opts.gutter and pal.sumiInk4 or "none",
      bg_cursorline = pal.sumiInk3,
      bg_cursorline_alt = pal.sumiInk4,
      bg_search = pal.dragonViolet,
      bg_visual = pal.sumiInk4,
      bg_statusline = pal.sumiInk4,
      border = pal.dragonBlack6,
      header1 = pal.dragonViolet,
      header2 = pal.dragonOrange,
      special = pal.dragonAqua,
      nontext = pal.sumiInk5,
      whitespace = pal.sumiInk6,
      win_separator = pal.dragonViolet,
      indent = pal.sumiInk5,
      indent_scope = pal.dragonViolet,
      picker = pal.dragonRed,
      yank = pal.sumiInk6,
      mark = pal.dragonAqua,
      scrollbar = pal.sumiInk5,
      tabline = {
        bg = pal.sumiInk0,
        fg_selected = pal.fujiWhite,
        bg_selected = pal.sumiInk2,
        fg_inactive = pal.dragonGray,
        bg_inactive = pal.sumiInk0,
        fg_alternate = pal.dragonPink,
        bg_alternate = pal.sumiInk0,
        indicator = pal.dragonBlue,
      },
      pmenu = {
        fg = pal.fujiWhite,
        fg_sel = "none",
        fg_border = pal.sumiInk5,
        bg_border = pal.sumiInk4,
        bg = pal.sumiInk4,
        bg_sel = pal.sumiInk5,
        bg_sbar = pal.sumiInk4,
        bg_thumb = pal.sumiInk6,
      },
      float = {
        fg = pal.oldWhite,
        bg = pal.sumiInk3,
        fg_border = pal.sumiInk5,
        bg_border = pal.sumiInk3,
      },
    },

    accent = {
      accent1 = pal.dragonBlue,
      accent2 = pal.dragonOrange,
      accent3 = pal.dragonAqua,
      accent4 = pal.dragonGray,
      accent5 = pal.dragonRed,
      invert = pal.sumiInk4,
    },

    rainbow = {
      rainbow1 = pal.dragonRed,
      rainbow2 = pal.dragonPink,
      rainbow3 = pal.dragonBlue,
      rainbow4 = pal.dragonOrange,
      rainbow5 = pal.dragonGreen,
      rainbow6 = pal.dragonGray,
      rainbow7 = pal.dragonAqua,
    },

    syn = {
      attribute = pal.dragonYellow,
      comment = pal.dragonGray2,
      constant = pal.dragonOrange,
      deprecated = pal.dragonGray,
      func = pal.dragonBlue,
      identifier = pal.fujiWhite,
      keyword = pal.dragonPink,
      method = pal.dragonBlue,
      number = pal.dragonPink,
      operator = pal.dragonRed,
      parameter = pal.dragonGray,
      preproc = pal.dragonViolet,
      punct = pal.dragonGray,
      regex = pal.dragonYellow,
      statement = pal.dragonViolet,
      string = pal.dragonGreen,
      symbol = pal.dragonRed,
      type = pal.dragonAqua,
      variable = "none",
      special = pal.dragonYellow,
      special2 = pal.dragonRed,
      special3 = pal.dragonViolet,
    },

    vcs = {
      added = pal.dragonGreen,
      removed = pal.dragonRed,
      changed = pal.dragonYellow,
    },

    diff = {
      add = pal.dragonGreen,
      change = pal.dragonYellow,
      delete = pal.dragonRed,
      text = pal.dragonBlue,
    },

    diag = {
      ok = pal.dragonGreen,
      error = pal.dragonRed,
      warning = pal.dragonYellow,
      info = pal.dragonBlue,
      hint = pal.dragonAqua,
    },

    term = {
      black = pal.dragonBlack5,
      red = pal.dragonRed,
      green = pal.dragonGreen,
      yellow = pal.dragonYellow,
      blue = pal.dragonBlue,
      magenta = pal.dragonPink,
      cyan = pal.dragonAqua,
      white = pal.oldWhite,
      black_bright = color(pal.dragonBlack5):brighten(0.6):to_hex(),
      red_bright = color(pal.dragonRed):brighten(0.2):to_hex(),
      green_bright = color(pal.dragonGreen):brighten(0.1):to_hex(),
      yellow_bright = color(pal.dragonYellow):brighten(0.2):to_hex(),
      blue_bright = color(pal.dragonBlue):brighten(0.3):to_hex(),
      magenta_bright = color(pal.dragonPink):brighten(0.2):to_hex(),
      cyan_bright = color(pal.dragonAqua):brighten(0.1):to_hex(),
      white_bright = color(pal.oldWhite):brighten(0.2):to_hex(),
      indexed1 = pal.dragonOrange,
      indexed2 = pal.dragonRed,
    },
  }
end

return {
  name = "Kanagawa Paper – Edo",
  author = "PrismPunk.nvim",
  description = "Dark ink and soft paper tones inspired by Kanagawa-Paper, translated into PrismPunk format.",

  base16 = {
    base00 = palette.sumiInk0,
    base01 = palette.sumiInk1,
    base02 = palette.sumiInk2,
    base03 = palette.sumiInk3,
    base04 = palette.sumiInk4,
    base05 = palette.dragonGray,
    base06 = palette.fujiWhite,
    base07 = palette.oldWhite,
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
