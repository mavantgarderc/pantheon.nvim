local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.dc.lantern-corps.phantom-balanced")

local M = {}

---@param opts table
---@param plt table
---@return table
---@diagnostic disable-next-line: redefined-local
M.get = function(opts, plt)
  return {
    modes = {
      normal = plt.prismaticCore,
      insert = plt.crystalWill,
      visual = plt.geometricField,
      replace = plt.crystalRage,
      command = plt.prismaticBright,
    },

    ui = {
      fg = plt.fg_lightest,
      fg_dim = plt.fg_dark,
      fg_dimmer = plt.bg_alt3,
      fg_dark = plt.bg_alt2,
      fg_reverse = plt.bg_alt1,
      bg_m4 = plt.bg_alt4,
      bg_m3 = plt.bg_alt3,
      bg_m2 = plt.bg_darkest,
      bg_m1 = plt.bg_darker,
      bg_dim = plt.bg_darker,
      bg = plt.bg_darkest,
      bg_p1 = plt.bg_dark,
      bg_p2 = plt.bg_mid,
      bg_gutter = opts.gutter and plt.bg_light or "none",
      bg_cursorline = plt.bg_mid,
      bg_cursorline_alt = plt.bg_light,
      bg_search = plt.prismaticGlow,
      bg_visual = plt.geometricField,
      bg_statusline = plt.bg_light,
      border = plt.bg_alt4,
      header1 = plt.prismaticCore,
      header2 = plt.harmonicPattern,
      special = plt.stableResonance,
      nontext = plt.bg_lighter,
      whitespace = plt.bg_lightest,
      win_separator = plt.prismaticCore,
      indent = plt.bg_lighter,
      indent_scope = plt.prismaticGlow,
      picker = plt.crystalRage,
      yank = plt.crystalWill,
      mark = plt.crystalHope,
      scrollbar = plt.bg_lighter,
      tabline = {
        bg = plt.bg_darkest,
        fg_selected = plt.fg_lightest,
        bg_selected = plt.bg_dark,
        fg_inactive = plt.fg_mid,
        bg_inactive = plt.bg_darkest,
        fg_alternate = plt.prismaticBright,
        bg_alternate = plt.bg_darkest,
        indicator = plt.harmonicPattern,
      },
      pmenu = {
        fg = plt.fg_lightest,
        fg_sel = "none",
        fg_border = plt.bg_lighter,
        bg_border = plt.bg_light,
        bg = plt.bg_light,
        bg_sel = plt.bg_lighter,
        bg_sbar = plt.bg_light,
        bg_thumb = plt.bg_lightest,
      },
      float = {
        fg = plt.fg_light,
        bg = plt.bg_mid,
        fg_border = plt.bg_lighter,
        bg_border = plt.bg_mid,
      },
    },

    accent = {
      accent1 = plt.prismaticCore,
      accent2 = plt.prismaticBright,
      accent3 = plt.harmonicPattern,
      accent4 = plt.fg_mid,
      accent5 = plt.crystalRage,
      invert = plt.bg_light,
    },

    rainbow = {
      rainbow1 = plt.crystalRage,
      rainbow2 = plt.crystalAvarice,
      rainbow3 = plt.crystalFear,
      rainbow4 = plt.crystalWill,
      rainbow5 = plt.crystalHope,
      rainbow6 = plt.crystalCompassion,
      rainbow7 = plt.crystalLove,
    },

    syn = {
      attribute = plt.accent_yellow,
      comment = plt.fg_dark,
      constant = plt.crystalAvarice,
      deprecated = plt.fg_mid,
      func = plt.crystalHope,
      identifier = plt.fg_lightest,
      keyword = plt.prismaticCore,
      method = plt.crystalWill,
      number = plt.crystalAvarice,
      operator = plt.crystalRage,
      parameter = plt.fg_mid,
      preproc = plt.crystalLove,
      punct = plt.fg_mid,
      regex = plt.crystalFear,
      statement = plt.prismaticCore,
      string = plt.crystalWill,
      symbol = plt.crystalRage,
      type = plt.crystalHope,
      variable = "none",
      special = plt.crystalFear,
      special2 = plt.crystalRage,
      special3 = plt.prismaticDeep,
    },

    vcs = {
      added = plt.crystalWill,
      removed = plt.crystalRage,
      changed = plt.crystalFear,
    },

    diff = {
      add = plt.crystalWill,
      change = plt.crystalFear,
      delete = plt.crystalRage,
      text = plt.crystalHope,
    },

    diag = {
      ok = plt.crystalWill,
      error = plt.crystalRage,
      warning = plt.crystalFear,
      info = plt.crystalHope,
      hint = plt.crystalCompassion,
    },

    term = {
      black = plt.bg_alt3,
      red = plt.crystalRage,
      green = plt.crystalWill,
      yellow = plt.crystalFear,
      blue = plt.crystalHope,
      magenta = plt.crystalLove,
      cyan = plt.harmonicPattern,
      white = plt.fg_light,
      black_bright = color(plt.bg_alt3):brighten(0.6):to_hex(),
      red_bright = color(plt.crystalRage):brighten(0.2):to_hex(),
      green_bright = color(plt.crystalWill):brighten(0.1):to_hex(),
      yellow_bright = color(plt.crystalFear):brighten(0.2):to_hex(),
      blue_bright = color(plt.crystalHope):brighten(0.3):to_hex(),
      magenta_bright = color(plt.crystalLove):brighten(0.2):to_hex(),
      cyan_bright = color(plt.harmonicPattern):brighten(0.1):to_hex(),
      white_bright = color(plt.fg_light):brighten(0.2):to_hex(),
      indexed1 = plt.prismaticBright,
      indexed2 = plt.crystalRage,
    },
  }
end

return {
  name = "Lantern Corps - Phantom (Balanced)",
  author = "PrismPunk.nvim",
  description = "In Desperate Day, In Hopeless Night,"
    .. "The Phantom Ring is our last light."
    .. "We yearn for power, strength and might, "
    .. "I seize the ring, that is my right!",

  base16 = {
    base00 = palette.bg_darkest,
    base01 = palette.bg_darker,
    base02 = palette.bg_dark,
    base03 = palette.bg_mid,
    base04 = palette.bg_light,
    base05 = palette.fg_mid,
    base06 = palette.fg_lightest,
    base07 = palette.fg_light,
    base08 = palette.crystalRage,
    base09 = palette.crystalAvarice,
    base0A = palette.crystalFear,
    base0B = palette.crystalWill,
    base0C = palette.harmonicPattern,
    base0D = palette.prismaticCore,
    base0E = palette.prismaticDeep,
    base0F = palette.prismaticBright,
  },

  palette = palette,

  get = M.get,
}
