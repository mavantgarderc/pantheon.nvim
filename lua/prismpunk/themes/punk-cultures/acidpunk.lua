local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.punk-cultures.acidpunk")

local M = {}

M.get = function(opts, plt)
  plt = plt or palette

  return {
    modes = {
      normal = plt.acidGreenCore,
      insert = plt.neonPinkCore,
      visual = plt.toxicCyanCore,
      replace = plt.dripMagentaCore,
      command = plt.radioactiveLimeCore,
    },

    accent = {
      accent1 = plt.acidGreenCore,
      accent2 = plt.toxicCyanCore,
      accent3 = plt.neonPinkCore,
      accent4 = plt.radioactiveLimeCore,
      accent5 = plt.electricPurpleCore,
      invert = plt.bg_light,
    },

    rainbow = {
      rainbow1 = plt.acidGreenBright,
      rainbow2 = plt.neonPinkBright,
      rainbow3 = plt.toxicCyanBright,
      rainbow4 = plt.radioactiveLimeBright,
      rainbow5 = plt.electricPurpleBright,
      rainbow6 = plt.chemicalYellowBright,
      rainbow7 = plt.bioOrangeBright,
    },

    ui = {
      bg = plt.bg_darkest,
      bg_cursorline = plt.bg_dark,
      bg_dim = plt.bg_darkest,
      bg_gutter = opts.gutter and plt.bg_light or "none",
      bg_highlight = plt.bg_mid,
      bg_m1 = plt.bg_darker,
      bg_m2 = plt.bg_dark,
      bg_m3 = plt.bg_mid,
      bg_m4 = plt.bg_light,
      bg_p1 = plt.bg_dark,
      bg_p2 = plt.bg_mid,
      bg_statusline = plt.bg_light,
      bg_visual = plt.bg_mid,
      border = plt.neonGray,
      cursorline = plt.bg_dark,
      fg = plt.fg_lightest,
      fg_dim = plt.fg_light,
      fg_reverse = plt.bg_alt1,
      indent = plt.bg_lighter,
      indent_scope = plt.acidGreenCore,
      line_nr = plt.bg_lightest,
      line_nr_active = plt.fg_lightest,
      line_nr_dim = plt.bg_lighter,
      nontext = plt.bg_lightest,
      selection = plt.bg_mid,
      win_separator = plt.neonGray,

      float = {
        bg = plt.bg_darker,
        bg_border = plt.bg_darker,
        fg = plt.fg_light,
        fg_border = plt.neonGray,
      },

      pmenu = {
        bg = plt.bg_light,
        bg_border = plt.bg_light,
        bg_sbar = plt.bg_light,
        bg_sel = plt.bg_lighter,
        bg_thumb = plt.neonGrayLight,
        fg = plt.fg_light,
        fg_sel = plt.fg_lightest,
      },

      tabline = {
        bg = plt.bg_darkest,
        bg_inactive = plt.bg_darkest,
        bg_selected = plt.bg_dark,
        fg_inactive = plt.fg_dark,
        fg_selected = plt.fg_lightest,
      },
    },

    syn = {
      attribute = plt.radioactiveLimeCore,
      boolean = plt.toxicCyanCore,
      comment = plt.neonGray,
      constant = plt.labWhiteCore,
      deprecated = plt.voidBlack,
      func = plt.neonPinkCore,
      identifier = plt.fg_lightest,
      keyword = plt.acidGreenCore,
      method = plt.neonPinkBright,
      number = plt.labWhiteCore,
      operator = plt.radioactiveLimeCore,
      parameter = plt.fg_mid,
      preproc = plt.electricPurpleCore,
      punct = plt.fg_dark,
      regex = plt.spillVioletCore,
      special = plt.electricPurpleCore,
      statement = plt.acidGreenCore,
      string = plt.neonPinkCore,
      symbol = plt.radioactiveLimeCore,
      type = plt.toxicCyanCore,
      variable = plt.fg_lightest,
    },

    diag = {
      error = plt.errorRed,
      warning = plt.warningAmber,
      info = plt.infoBlue,
      ok = plt.successGreen,
      hint = plt.electricPurpleCore,
    },

    diff = {
      add = plt.biohazardGreenCore,
      change = plt.chemicalYellowCore,
      delete = plt.dripMagentaCore,
      text = plt.electricPurpleCore,
    },

    vcs = {
      added = plt.biohazardGreenCore,
      changed = plt.chemicalYellowCore,
      removed = plt.dripMagentaCore,
    },

    term = {
      black = plt.bg_darkest,
      red = plt.dripMagentaCore,
      green = plt.acidGreenCore,
      yellow = plt.chemicalYellowCore,
      blue = plt.toxicCyanCore,
      magenta = plt.neonPinkCore,
      cyan = plt.glowBlueCore,
      white = plt.labWhiteCore,

      black_bright = color(plt.bg_darker):brighten(0.5):to_hex(),
      red_bright = color(plt.dripMagentaBright):brighten(0.15):to_hex(),
      green_bright = color(plt.acidGreenBright):brighten(0.15):to_hex(),
      yellow_bright = color(plt.chemicalYellowBright):brighten(0.15):to_hex(),
      blue_bright = color(plt.toxicCyanBright):brighten(0.18):to_hex(),
      magenta_bright = color(plt.neonPinkBright):brighten(0.15):to_hex(),
      cyan_bright = color(plt.glowBlueBright):brighten(0.15):to_hex(),
      white_bright = plt.labWhiteBright,
    },
  }
end

return {
  name = "Punk – Acidpunk",
  author = "PrismPunk.nvim",
  description = "Neon chemical reactions — toxic green, electric pink, radioactive lime, glowing cyan.",

  base16 = {
    base00 = palette.bg_darkest,
    base01 = palette.bg_darker,
    base02 = palette.bg_dark,
    base03 = palette.neonGray,
    base04 = palette.neonGrayLight,
    base05 = palette.fg_mid,
    base06 = palette.fg_light,
    base07 = palette.fg_lightest,
    base08 = palette.dripMagentaCore,
    base09 = palette.bioOrangeCore,
    base0A = palette.chemicalYellowCore,
    base0B = palette.neonPinkCore,
    base0C = palette.toxicCyanCore,
    base0D = palette.acidGreenCore,
    base0E = palette.electricPurpleCore,
    base0F = palette.spillVioletCore,
  },

  palette = palette,
  get = M.get,
}
