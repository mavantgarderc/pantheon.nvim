-- lua/prismpunk/themes/dc/lantern-corps/phantom-balanced.lua
-- Developer-friendly theme that requires a keyed palette and exposes .get(opts, palette)
local palette = require("prismpunk.palettes.dc.lantern-corps.phantom-balanced")

local M = {}

M.name = "Lantern Corps - Phantom (Balanced)"
M.author = "PrismPunk.nvim"
M.description = "Example theme using keyed palette and get()"

M.palette = "dc/lantern-corps/phantom-balanced"

M.get = function(opts, p)
  p = p or palette
  local function color(x) return x end -- stub for chainable color library if you add one
  return {
    modes = {
      normal = p.prismaticCore,
      insert = p.crystalWill,
      visual = p.geometricField,
      replace = p.crystalRage,
      command = p.prismaticBright,
    },
    ui = {
      fg = p.fg_lightest,
      fg_dim = p.fg_dark,
      fg_dimmer = p.bg_alt3,
      fg_dark = p.bg_alt2,
      fg_reverse = p.bg_alt1,
      bg_m4 = p.bg_alt4,
      bg_m3 = p.bg_alt3,
      bg_m2 = p.bg_darkest,
      bg_m1 = p.bg_darker,
      bg_dim = p.bg_darker,
      bg = p.bg_darkest,
      bg_p1 = p.bg_dark,
      bg_p2 = p.bg_mid,
      bg_gutter = (opts and opts.gutter) and p.bg_light or "none",
      bg_cursorline = p.bg_mid,
      bg_cursorline_alt = p.bg_light,
      bg_search = p.prismaticGlow,
      bg_visual = p.geometricField,
      bg_statusline = p.bg_light,
      border = p.bg_alt4,
      header1 = p.prismaticCore,
      header2 = p.harmonicPattern,
      special = p.stableResonance,
      nontext = p.bg_lighter,
      whitespace = p.bg_lightest,
      win_separator = p.prismaticCore,
      indent = p.bg_lighter,
      indent_scope = p.prismaticGlow,
      picker = p.crystalRage,
      yank = p.crystalWill,
      mark = p.crystalHope,
      scrollbar = p.bg_lighter,
      tabline = {
        bg = p.bg_darkest,
        fg_selected = p.fg_lightest,
        bg_selected = p.bg_dark,
        fg_inactive = p.fg_mid,
        bg_inactive = p.bg_darkest,
        fg_alternate = p.prismaticBright,
        bg_alternate = p.bg_darkest,
        indicator = p.harmonicPattern,
      },
      pmenu = {
        fg = p.fg_lightest,
        fg_sel = "none",
        fg_border = p.bg_lighter,
        bg_border = p.bg_light,
        bg = p.bg_light,
        bg_sel = p.bg_lighter,
        bg_sbar = p.bg_light,
        bg_thumb = p.bg_lightest,
      },
      float = {
        fg = p.fg_light,
        bg = p.bg_mid,
        fg_border = p.bg_lighter,
        bg_border = p.bg_mid,
      },
    },

    accent = {
      accent1 = p.prismaticCore,
      accent2 = p.prismaticBright,
      accent3 = p.harmonicPattern,
      accent4 = p.fg_mid,
      accent5 = p.crystalRage,
      invert = p.bg_light,
    },

    rainbow = {
      rainbow1 = p.crystalRage,
      rainbow2 = p.crystalAvarice,
      rainbow3 = p.crystalFear,
      rainbow4 = p.crystalWill,
      rainbow5 = p.crystalHope,
      rainbow6 = p.crystalCompassion,
      rainbow7 = p.crystalLove,
    },

    syn = {
      attribute = p.accent_yellow,
      comment = p.fg_dark,
      constant = p.crystalAvarice,
      deprecated = p.fg_mid,
      func = p.crystalHope,
      identifier = p.fg_lightest,
      keyword = p.prismaticCore,
      method = p.crystalWill,
      number = p.crystalAvarice,
      operator = p.crystalRage,
      parameter = p.fg_mid,
      preproc = p.crystalLove,
      punct = p.fg_mid,
      regex = p.crystalFear,
      statement = p.prismaticCore,
      string = p.crystalWill,
      symbol = p.crystalRage,
      type = p.crystalHope,
      variable = "none",
      special = p.crystalFear,
      special2 = p.crystalRage,
      special3 = p.prismaticDeep,
    },

    vcs = {
      added = p.crystalWill,
      removed = p.crystalRage,
      changed = p.crystalFear,
    },

    diff = {
      add = p.crystalWill,
      change = p.crystalFear,
      delete = p.crystalRage,
      text = p.crystalHope,
    },

    diag = {
      ok = p.crystalWill,
      error = p.crystalRage,
      warning = p.crystalFear,
      info = p.crystalHope,
      hint = p.crystalCompassion,
    },

    term = {
      black = p.bg_alt3,
      red = p.crystalRage,
      green = p.crystalWill,
      yellow = p.crystalFear,
      blue = p.crystalHope,
      magenta = p.crystalLove,
      cyan = p.harmonicPattern,
      white = p.fg_light,
      black_bright = p.bg_alt3,
      red_bright = p.crystalRage,
      green_bright = p.crystalWill,
      yellow_bright = p.crystalFear,
      blue_bright = p.crystalHope,
      magenta_bright = p.crystalLove,
      cyan_bright = p.harmonicPattern,
      white_bright = p.fg_light,
      indexed1 = p.prismaticBright,
      indexed2 = p.crystalRage,
    },
  }
end

return M
