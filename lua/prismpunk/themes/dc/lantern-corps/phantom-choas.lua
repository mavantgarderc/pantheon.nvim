local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.dc.lantern-corps.phantom-chaos")

local M = {}

---@param opts table
---@param palette table
---@return table
---@diagnostic disable-next-line: redefined-local
M.get = function(opts, palette)
  return {
    modes = {
      normal = palette.chaosCore,
      insert = palette.stormWill,
      visual = palette.emotionalVortex,
      replace = palette.stormRage,
      command = palette.chaosBright,
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
      bg_search = palette.chaosGlow,
      bg_visual = palette.emotionalVortex,
      bg_statusline = palette.unstableEnergy,
      border = palette.bg_alt4,
      header1 = palette.chaosCore,
      header2 = palette.chaoticPattern,
      special = palette.unstableEnergy,
      nontext = palette.bg_lighter,
      whitespace = palette.bg_lightest,
      win_separator = palette.chaosCore,
      indent = palette.bg_lighter,
      indent_scope = palette.chaosGlow,
      picker = palette.stormRage,
      yank = palette.stormWill,
      mark = palette.stormHope,
      scrollbar = palette.bg_lighter,
      tabline = {
        bg = palette.bg_darkest,
        fg_selected = palette.fg_lightest,
        bg_selected = palette.bg_dark,
        fg_inactive = palette.fg_mid,
        bg_inactive = palette.bg_darkest,
        fg_alternate = palette.chaosBright,
        bg_alternate = palette.bg_darkest,
        indicator = palette.chaoticPattern,
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
      accent1 = palette.chaosCore,
      accent2 = palette.chaosBright,
      accent3 = palette.chaoticPattern,
      accent4 = palette.fg_mid,
      accent5 = palette.stormRage,
      invert = palette.bg_light,
    },

    rainbow = {
      rainbow1 = palette.stormRage,
      rainbow2 = palette.stormAvarice,
      rainbow3 = palette.stormFear,
      rainbow4 = palette.stormWill,
      rainbow5 = palette.stormHope,
      rainbow6 = palette.stormCompassion,
      rainbow7 = palette.stormLove,
    },

    syn = {
      attribute = palette.accent_yellow,
      comment = palette.fg_dark,
      constant = palette.stormAvarice,
      deprecated = palette.fg_mid,
      func = palette.stormHope,
      identifier = palette.fg_lightest,
      keyword = palette.chaosCore,
      method = palette.stormWill,
      number = palette.stormAvarice,
      operator = palette.stormRage,
      parameter = palette.fg_mid,
      preproc = palette.stormLove,
      punct = palette.fg_mid,
      regex = palette.stormFear,
      statement = palette.chaosCore,
      string = palette.stormWill,
      symbol = palette.stormRage,
      type = palette.stormHope,
      variable = "none",
      special = palette.stormFear,
      special2 = palette.stormRage,
      special3 = palette.chaosDeep,
    },

    vcs = {
      added = palette.stormWill,
      removed = palette.stormRage,
      changed = palette.stormFear,
    },

    diff = {
      add = palette.stormWill,
      change = palette.stormFear,
      delete = palette.stormRage,
      text = palette.stormHope,
    },

    diag = {
      ok = palette.stormWill,
      error = palette.stormRage,
      warning = palette.stormFear,
      info = palette.stormHope,
      hint = palette.stormCompassion,
    },

    term = {
      black = palette.bg_alt3,
      red = palette.stormRage,
      green = palette.stormWill,
      yellow = palette.stormFear,
      blue = palette.stormHope,
      magenta = palette.stormLove,
      cyan = palette.chaoticPattern,
      white = palette.fg_light,
      black_bright = color(palette.bg_alt3):brighten(0.6):to_hex(),
      red_bright = color(palette.stormRage):brighten(0.2):to_hex(),
      green_bright = color(palette.stormWill):brighten(0.1):to_hex(),
      yellow_bright = color(palette.stormFear):brighten(0.2):to_hex(),
      blue_bright = color(palette.stormHope):brighten(0.3):to_hex(),
      magenta_bright = color(palette.stormLove):brighten(0.2):to_hex(),
      cyan_bright = color(palette.chaoticPattern):brighten(0.1):to_hex(),
      white_bright = color(palette.fg_light):brighten(0.2):to_hex(),
      indexed1 = palette.chaosBright,
      indexed2 = palette.stormRage,
    },
  }
end

return {
  name = "Lantern Corps - Phantom (Choas)",
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
    base08 = palette.stormRage,
    base09 = palette.stormAvarice,
    base0A = palette.stormFear,
    base0B = palette.stormWill,
    base0C = palette.chaoticPattern,
    base0D = palette.chaosCore,
    base0E = palette.chaosDeep,
    base0F = palette.chaosBright,
  },

  palette = palette,

  get = M.get,
}
