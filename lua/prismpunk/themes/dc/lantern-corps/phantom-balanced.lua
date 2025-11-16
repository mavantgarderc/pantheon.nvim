local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.dc.lantern-corps.phantom-balanced")

local M = {}

---@param opts table
---@param palette table
---@return table
---@diagnostic disable-next-line: redefined-local
M.get = function(opts, palette)
  return {
    modes = {
      normal = palette.prismaticCore,
      insert = palette.crystalWill,
      visual = palette.geometricField,
      replace = palette.crystalRage,
      command = palette.prismaticBright,
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
      bg_search = palette.prismaticGlow,
      bg_visual = palette.geometricField,
      bg_statusline = palette.bg_light,
      border = palette.bg_alt4,
      header1 = palette.prismaticCore,
      header2 = palette.harmonicPattern,
      special = palette.stableResonance,
      nontext = palette.bg_lighter,
      whitespace = palette.bg_lightest,
      win_separator = palette.prismaticCore,
      indent = palette.bg_lighter,
      indent_scope = palette.prismaticGlow,
      picker = palette.crystalRage,
      yank = palette.crystalWill,
      mark = palette.crystalHope,
      scrollbar = palette.bg_lighter,
      tabline = {
        bg = palette.bg_darkest,
        fg_selected = palette.fg_lightest,
        bg_selected = palette.bg_dark,
        fg_inactive = palette.fg_mid,
        bg_inactive = palette.bg_darkest,
        fg_alternate = palette.prismaticBright,
        bg_alternate = palette.bg_darkest,
        indicator = palette.harmonicPattern,
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
      accent1 = palette.prismaticCore,
      accent2 = palette.prismaticBright,
      accent3 = palette.harmonicPattern,
      accent4 = palette.fg_mid,
      accent5 = palette.crystalRage,
      invert = palette.bg_light,
    },

    rainbow = {
      rainbow1 = palette.crystalRage,
      rainbow2 = palette.crystalAvarice,
      rainbow3 = palette.crystalFear,
      rainbow4 = palette.crystalWill,
      rainbow5 = palette.crystalHope,
      rainbow6 = palette.crystalCompassion,
      rainbow7 = palette.crystalLove,
    },

    syn = {
      attribute = palette.accent_yellow,
      comment = palette.fg_dark,
      constant = palette.crystalAvarice,
      deprecated = palette.fg_mid,
      func = palette.crystalHope,
      identifier = palette.fg_lightest,
      keyword = palette.prismaticCore,
      method = palette.crystalWill,
      number = palette.crystalAvarice,
      operator = palette.crystalRage,
      parameter = palette.fg_mid,
      preproc = palette.crystalLove,
      punct = palette.fg_mid,
      regex = palette.crystalFear,
      statement = palette.prismaticCore,
      string = palette.crystalWill,
      symbol = palette.crystalRage,
      type = palette.crystalHope,
      variable = "none",
      special = palette.crystalFear,
      special2 = palette.crystalRage,
      special3 = palette.prismaticDeep,
    },

    vcs = {
      added = palette.crystalWill,
      removed = palette.crystalRage,
      changed = palette.crystalFear,
    },

    diff = {
      add = palette.crystalWill,
      change = palette.crystalFear,
      delete = palette.crystalRage,
      text = palette.crystalHope,
    },

    diag = {
      ok = palette.crystalWill,
      error = palette.crystalRage,
      warning = palette.crystalFear,
      info = palette.crystalHope,
      hint = palette.crystalCompassion,
    },

    term = {
      black = palette.bg_alt3,
      red = palette.crystalRage,
      green = palette.crystalWill,
      yellow = palette.crystalFear,
      blue = palette.crystalHope,
      magenta = palette.crystalLove,
      cyan = palette.harmonicPattern,
      white = palette.fg_light,
      black_bright = color(palette.bg_alt3):brighten(0.6):to_hex(),
      red_bright = color(palette.crystalRage):brighten(0.2):to_hex(),
      green_bright = color(palette.crystalWill):brighten(0.1):to_hex(),
      yellow_bright = color(palette.crystalFear):brighten(0.2):to_hex(),
      blue_bright = color(palette.crystalHope):brighten(0.3):to_hex(),
      magenta_bright = color(palette.crystalLove):brighten(0.2):to_hex(),
      cyan_bright = color(palette.harmonicPattern):brighten(0.1):to_hex(),
      white_bright = color(palette.fg_light):brighten(0.2):to_hex(),
      indexed1 = palette.prismaticBright,
      indexed2 = palette.crystalRage,
    },
  }
end

return {
  name = "Lantern Corps - Phantom (Balanced)",
  author = "PrismPunk.nvim",
  description = "In Desperate Day, In Hopeless Night, The Phantom Ring is our last light. We yearn for power, strength and might I seize the ring, that is my right!",

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
