local color = require("prismpunk.utils.color")

local palette = {
  bg_darkest = "#0A0514",
  bg_darker = "#150A28",
  bg_dark = "#200F3C",
  bg_mid = "#2B1450",
  bg_light = "#361964",
  bg_lighter = "#411E78",
  bg_lightest = "#4C238C",

  fg_lightest = "#F0E6FF",
  fg_light = "#D8C6FF",
  fg_mid = "#8878B8",
  fg_dark = "#685890",

  bg_alt1 = "#120825",
  bg_alt2 = "#070312",
  bg_alt3 = "#1A0D32",
  bg_alt4 = "#0D061C",

  ultravioletBright = "#8A2BE2",
  ultravioletGlow = "#9400D3",
  ultravioletCore = "#4B0082",
  ultravioletDeep = "#30005C",
  ultravioletDark = "#1C0036",

  spectralViolet = "#8B00FF",
  electricIndigo = "#6600FF",
  cosmicPurple = "#9932CC",
  quantumMagenta = "#FF00FF",
  photonPink = "#FF00CC",
  gammaBlue = "#6A0DAD",
  xrayCyan = "#00CCFF",

  invisibleLight = "#DA70D6",
  beyondViolet = "#EE82EE",
  spectralGlow = "#E6E6FA",

  accent_red = "#FF00AA",
  accent_pink = "#FF00FF",
  accent_yellow = "#FF00CC",
  accent_orange = "#FF0088",
  accent_green = "#AA00FF",
  accent_blue = "#6600FF",
  accent_violet = "#8B00FF",
  accent_aqua = "#CC00FF",
}

local M = {}

---@param opts table
---@param palette table
---@return table
---@diagnostic disable-next-line: redefined-local
M.get = function(opts, palette)
  return {
    modes = {
      normal = palette.ultravioletCore,
      insert = palette.spectralViolet,
      visual = palette.ultravioletGlow,
      replace = palette.quantumMagenta,
      command = palette.ultravioletBright,
    },

    ui = {
      fg = palette.fg_lightest,
      fg_dim = palette.fg_dark,
      fg_dimmer = palette.bg_alt3,
      fg_dark = palette.bg_alt2,
      fg_reverse = palette.bg_alt1,
      bg_m4 = palette.bg_alt4,
      bg_m3 = palette.bg_alt3,
      bg_m2 = palette.bg_darkest,
      bg_m1 = palette.bg_darker,
      bg_dim = palette.bg_darker,
      bg = palette.bg_darkest,
      bg_p1 = palette.bg_dark,
      bg_p2 = palette.bg_mid,
      bg_gutter = opts.gutter and palette.bg_light or "none",
      bg_cursorline = palette.bg_mid,
      bg_cursorline_alt = palette.bg_light,
      bg_search = palette.ultravioletGlow,
      bg_visual = palette.ultravioletDark,
      bg_statusline = palette.bg_light,
      border = palette.bg_alt4,
      header1 = palette.ultravioletCore,
      header2 = palette.spectralViolet,
      special = palette.electricIndigo,
      nontext = palette.bg_lighter,
      whitespace = palette.bg_lightest,
      win_separator = palette.ultravioletCore,
      indent = palette.bg_lighter,
      indent_scope = palette.ultravioletGlow,
      picker = palette.quantumMagenta,
      yank = palette.photonPink,
      mark = palette.spectralViolet,
      scrollbar = palette.bg_lighter,
      tabline = {
        bg = palette.bg_darkest,
        fg_selected = palette.fg_lightest,
        bg_selected = palette.bg_dark,
        fg_inactive = palette.fg_mid,
        bg_inactive = palette.bg_darkest,
        fg_alternate = palette.ultravioletBright,
        bg_alternate = palette.bg_darkest,
        indicator = palette.electricIndigo,
      },
      pmenu = {
        fg = palette.fg_lightest,
        fg_sel = "none",
        fg_border = palette.bg_lighter,
        bg_border = palette.bg_light,
        bg = palette.bg_light,
        bg_sel = palette.bg_lighter,
        bg_sbar = palette.bg_light,
        bg_thumb = palette.bg_lightest,
      },
      float = {
        fg = palette.fg_light,
        bg = palette.bg_mid,
        fg_border = palette.bg_lighter,
        bg_border = palette.bg_mid,
      },
    },

    accent = {
      accent1 = palette.ultravioletCore,
      accent2 = palette.ultravioletBright,
      accent3 = palette.spectralViolet,
      accent4 = palette.fg_mid,
      accent5 = palette.quantumMagenta,
      invert = palette.bg_light,
    },

    rainbow = {
      rainbow1 = palette.ultravioletCore,
      rainbow2 = palette.ultravioletBright,
      rainbow3 = palette.spectralViolet,
      rainbow4 = palette.ultravioletGlow,
      rainbow5 = palette.electricIndigo,
      rainbow6 = palette.quantumMagenta,
      rainbow7 = palette.photonPink,
    },

    syn = {
      attribute = palette.accent_yellow,
      comment = palette.fg_dark,
      constant = palette.ultravioletBright,
      deprecated = palette.fg_mid,
      func = palette.spectralViolet,
      identifier = palette.fg_lightest,
      keyword = palette.ultravioletCore,
      method = palette.electricIndigo,
      number = palette.ultravioletGlow,
      operator = palette.quantumMagenta,
      parameter = palette.fg_mid,
      preproc = palette.ultravioletDeep,
      punct = palette.fg_mid,
      regex = palette.accent_yellow,
      statement = palette.ultravioletCore,
      string = palette.accent_green,
      symbol = palette.quantumMagenta,
      type = palette.spectralViolet,
      variable = "none",
      special = palette.accent_yellow,
      special2 = palette.quantumMagenta,
      special3 = palette.ultravioletDeep,
    },

    vcs = {
      added = palette.accent_green,
      removed = palette.quantumMagenta,
      changed = palette.accent_yellow,
    },

    diff = {
      add = palette.accent_green,
      change = palette.accent_yellow,
      delete = palette.quantumMagenta,
      text = palette.ultravioletCore,
    },

    diag = {
      ok = palette.accent_green,
      error = palette.quantumMagenta,
      warning = palette.accent_yellow,
      info = palette.ultravioletCore,
      hint = palette.spectralViolet,
    },

    term = {
      black = palette.bg_alt3,
      red = palette.quantumMagenta,
      green = palette.accent_green,
      yellow = palette.accent_yellow,
      blue = palette.ultravioletCore,
      magenta = palette.accent_pink,
      cyan = palette.spectralViolet,
      white = palette.fg_light,
      black_bright = color(palette.bg_alt3):brighten(0.6):to_hex(),
      red_bright = color(palette.quantumMagenta):brighten(0.2):to_hex(),
      green_bright = color(palette.accent_green):brighten(0.1):to_hex(),
      yellow_bright = color(palette.accent_yellow):brighten(0.2):to_hex(),
      blue_bright = color(palette.ultravioletCore):brighten(0.3):to_hex(),
      magenta_bright = color(palette.accent_pink):brighten(0.2):to_hex(),
      cyan_bright = color(palette.spectralViolet):brighten(0.1):to_hex(),
      white_bright = color(palette.fg_light):brighten(0.2):to_hex(),
      indexed1 = palette.ultravioletBright,
      indexed2 = palette.quantumMagenta,
    },
  }
end

return {
  name = "Lantern Corps - Ultraviolet (Spectral)",
  author = "PrismPunk.nvim",
  description = "In blackest day, in brightest night, Beware your fears made into light. Let those who try to stop what's right, Burn like my power, Dawnbreaker's might!",

  base16 = {
    base00 = palette.bg_darkest,
    base01 = palette.bg_darker,
    base02 = palette.bg_dark,
    base03 = palette.bg_mid,
    base04 = palette.bg_light,
    base05 = palette.fg_mid,
    base06 = palette.fg_lightest,
    base07 = palette.fg_light,
    base08 = palette.quantumMagenta,
    base09 = palette.accent_orange,
    base0A = palette.accent_yellow,
    base0B = palette.accent_green,
    base0C = palette.spectralViolet,
    base0D = palette.ultravioletCore,
    base0E = palette.ultravioletDeep,
    base0F = palette.ultravioletBright,
  },

  palette = palette,

  get = M.get,
}
