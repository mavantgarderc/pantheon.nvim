local color = require("prismpunk.utils.color")

-- Define your color palette here
local palette = {
  -- Background shades (dark to light) - Prismatic containment field
  bg_darkest = "#0A0A14",
  bg_darker = "#151428",
  bg_dark = "#201E3C",
  bg_mid = "#2B2850",
  bg_light = "#363264",
  bg_lighter = "#413C78",
  bg_lightest = "#4C468C",

  -- Foreground shades - Crystalline emotional resonance
  fg_lightest = "#E8E6F0",
  fg_light = "#C8C6D8",
  fg_mid = "#787688",
  fg_dark = "#585668",

  -- Additional background variants - Emotional containment layers
  bg_alt1 = "#121220",
  bg_alt2 = "#08080C",
  bg_alt3 = "#1A1A30",
  bg_alt4 = "#0D0D18",

  -- Phantom Ring Prismatic energy colors
  prismaticCore = "#7D7DAA", -- Core balanced energy (neutral)
  prismaticGlow = "#8C8CBB", -- Glowing prismatic energy
  prismaticBright = "#6C6C99", -- Bright prismatic energy
  prismaticDeep = "#5C5C88", -- Deep prismatic energy
  prismaticDark = "#3C3C66", -- Darkest prismatic energy

  -- Crystalline Emotional Spectrum (contained in geometric harmony)
  crystalWill = "#66AA88", -- Crystalline green (will)
  crystalHope = "#6688AA", -- Crystalline blue (hope)
  crystalRage = "#AA8866", -- Crystalline red (rage)
  crystalFear = "#AAAA66", -- Crystalline yellow (fear)
  crystalLove = "#AA66AA", -- Crystalline violet (love)
  crystalAvarice = "#AA9966", -- Crystalline orange (avarice)
  crystalCompassion = "#9966AA", -- Crystalline indigo (compassion)

  -- Geometric Containment
  geometricField = "#5566AA", -- Geometric containment field
  stableResonance = "#66AAAA", -- Stable emotional resonance
  harmonicPattern = "#7788AA", -- Harmonic pattern energy

  -- Accent colors - Geometric emotional spectrum
  accent_red = "#AA8866", -- Geometric red
  accent_pink = "#AA6688", -- Geometric pink
  accent_yellow = "#AAAA66", -- Geometric yellow
  accent_orange = "#AA9966", -- Geometric orange
  accent_green = "#66AA88", -- Geometric green
  accent_blue = "#6688AA", -- Geometric blue
  accent_violet = "#9966AA", -- Geometric violet
  accent_aqua = "#66AAAA", -- Geometric aqua
}

local M = {}

---@param opts table
---@param palette table
---@return table
---@diagnostic disable-next-line: redefined-local
M.get = function(opts, palette)
  return {
    modes = {
      normal = palette.prismaticCore, -- Core balanced energy
      insert = palette.crystalWill, -- Will for focused insertion
      visual = palette.geometricField, -- Geometric field for visual selection
      replace = palette.crystalRage, -- Controlled rage for replacement
      command = palette.prismaticBright, -- Bright energy for commands
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
      bg_search = palette.prismaticGlow, -- Prismatic glow for search
      bg_visual = palette.geometricField, -- Geometric containment
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
      picker = palette.crystalRage, -- Geometric rage for picking
      yank = palette.crystalWill, -- Crystalline will for yank
      mark = palette.crystalHope, -- Crystalline hope for marks
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
      constant = palette.crystalAvarice, -- Orange for constants
      deprecated = palette.fg_mid,
      func = palette.crystalHope, -- Blue for functions
      identifier = palette.fg_lightest,
      keyword = palette.prismaticCore, -- Prismatic for keywords
      method = palette.crystalWill, -- Green for methods
      number = palette.crystalAvarice, -- Orange for numbers
      operator = palette.crystalRage, -- Red for operators
      parameter = palette.fg_mid,
      preproc = palette.crystalLove, -- Violet for preproc
      punct = palette.fg_mid,
      regex = palette.crystalFear, -- Yellow for regex
      statement = palette.prismaticCore, -- Prismatic for statements
      string = palette.crystalWill, -- Green for strings
      symbol = palette.crystalRage, -- Red for symbols
      type = palette.crystalHope, -- Blue for types
      variable = "none",
      special = palette.crystalFear, -- Yellow for special
      special2 = palette.crystalRage, -- Red for special2
      special3 = palette.prismaticDeep, -- Deep prismatic for special3
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
