local color = require("prismpunk.utils.color")

local palette = {
  bg_darkest = "#0A0A0A",
  bg_darker = "#1A1A1A",
  bg_dark = "#2A2A2A",
  bg_mid = "#3A3A3A",
  bg_light = "#4A4A4A",
  bg_lighter = "#5A5A5A",
  bg_lightest = "#6A6A6A",

  fg_lightest = "#D8D8D8",
  fg_light = "#B8B8B8",
  fg_mid = "#787878",
  fg_dark = "#585858",

  bg_alt1 = "#151515",
  bg_alt2 = "#050505",
  bg_alt3 = "#252525",
  bg_alt4 = "#0F0F0F",

  voidCore = "#8C8C8C",
  voidGlow = "#6C6C6C",
  voidBright = "#ACACAC",
  voidDeep = "#4C4C4C",
  voidDark = "#2C2C2C",

  corruptedWill = "#8CAC8C",
  corruptedHope = "#8C8CAC",
  corruptedRage = "#AC8C8C",
  corruptedFear = "#ACAC8C",
  corruptedLove = "#AC8CAC",
  corruptedAvarice = "#AC9C8C",
  corruptedCompassion = "#9C8CAC",

  entropyEffect = "#7C7C7C",
  nullField = "#6C8C8C",
  decayPattern = "#8C7C7C",

  accent_red = "#AC8C8C",
  accent_pink = "#AC8C9C",
  accent_yellow = "#ACAC8C",
  accent_orange = "#AC9C8C",
  accent_green = "#8CAC8C",
  accent_blue = "#8C8CAC",
  accent_violet = "#9C8CAC",
  accent_aqua = "#8CACAC",
}

local M = {}

---@param opts table
---@param palette table
---@return table
---@diagnostic disable-next-line: redefined-local
M.get = function(opts, palette)
  return {
    modes = {
      normal = palette.voidCore,
      insert = palette.corruptedWill,
      visual = palette.nullField,
      replace = palette.corruptedRage,
      command = palette.voidBright,
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
      bg_search = palette.voidGlow,
      bg_visual = palette.nullField,
      bg_statusline = palette.entropyEffect,
      border = palette.bg_alt4,
      header1 = palette.voidCore,
      header2 = palette.decayPattern,
      special = palette.entropyEffect,
      nontext = palette.bg_lighter,
      whitespace = palette.bg_lightest,
      win_separator = palette.voidCore,
      indent = palette.bg_lighter,
      indent_scope = palette.voidGlow,
      picker = palette.corruptedRage,
      yank = palette.corruptedWill,
      mark = palette.corruptedHope,
      scrollbar = palette.bg_lighter,
      tabline = {
        bg = palette.bg_darkest,
        fg_selected = palette.fg_lightest,
        bg_selected = palette.bg_dark,
        fg_inactive = palette.fg_mid,
        bg_inactive = palette.bg_darkest,
        fg_alternate = palette.voidBright,
        bg_alternate = palette.bg_darkest,
        indicator = palette.decayPattern,
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
      accent1 = palette.voidCore,
      accent2 = palette.voidBright,
      accent3 = palette.decayPattern,
      accent4 = palette.fg_mid,
      accent5 = palette.corruptedRage,
      invert = palette.bg_light,
    },

    rainbow = {
      rainbow1 = palette.corruptedRage,
      rainbow2 = palette.corruptedAvarice,
      rainbow3 = palette.corruptedFear,
      rainbow4 = palette.corruptedWill,
      rainbow5 = palette.corruptedHope,
      rainbow6 = palette.corruptedCompassion,
      rainbow7 = palette.corruptedLove,
    },

    syn = {
      attribute = palette.accent_yellow,
      comment = palette.fg_dark,
      constant = palette.corruptedAvarice,
      deprecated = palette.fg_mid,
      func = palette.corruptedHope,
      identifier = palette.fg_lightest,
      keyword = palette.voidCore,
      method = palette.corruptedWill,
      number = palette.corruptedAvarice,
      operator = palette.corruptedRage,
      parameter = palette.fg_mid,
      preproc = palette.corruptedLove,
      punct = palette.fg_mid,
      regex = palette.corruptedFear,
      statement = palette.voidCore,
      string = palette.corruptedWill,
      symbol = palette.corruptedRage,
      type = palette.corruptedHope,
      variable = "none",
      special = palette.corruptedFear,
      special2 = palette.corruptedRage,
      special3 = palette.voidDeep,
    },

    vcs = {
      added = palette.corruptedWill,
      removed = palette.corruptedRage,
      changed = palette.corruptedFear,
    },

    diff = {
      add = palette.corruptedWill,
      change = palette.corruptedFear,
      delete = palette.corruptedRage,
      text = palette.corruptedHope,
    },

    diag = {
      ok = palette.corruptedWill,
      error = palette.corruptedRage,
      warning = palette.corruptedFear,
      info = palette.corruptedHope,
      hint = palette.corruptedCompassion,
    },

    term = {
      black = palette.bg_alt3,
      red = palette.corruptedRage,
      green = palette.corruptedWill,
      yellow = palette.corruptedFear,
      blue = palette.corruptedHope,
      magenta = palette.corruptedLove,
      cyan = palette.decayPattern,
      white = palette.fg_light,
      black_bright = color(palette.bg_alt3):brighten(0.6):to_hex(),
      red_bright = color(palette.corruptedRage):brighten(0.2):to_hex(),
      green_bright = color(palette.corruptedWill):brighten(0.1):to_hex(),
      yellow_bright = color(palette.corruptedFear):brighten(0.2):to_hex(),
      blue_bright = color(palette.corruptedHope):brighten(0.3):to_hex(),
      magenta_bright = color(palette.corruptedLove):brighten(0.2):to_hex(),
      cyan_bright = color(palette.decayPattern):brighten(0.1):to_hex(),
      white_bright = color(palette.fg_light):brighten(0.2):to_hex(),
      indexed1 = palette.voidBright,
      indexed2 = palette.corruptedRage,
    },
  }
end

return {
  name = "Lantern Corps - Phantom (Corrupted)",
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
    base08 = palette.corruptedRage,
    base09 = palette.corruptedAvarice,
    base0A = palette.corruptedFear,
    base0B = palette.corruptedWill,
    base0C = palette.decayPattern,
    base0D = palette.voidCore,
    base0E = palette.voidDeep,
    base0F = palette.voidBright,
  },

  palette = palette,

  get = M.get,
}
