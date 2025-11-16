local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.dc.lantern-corps.ultraviolet-veiled")

local M = {}

---@param opts table
---@param palette table
---@return table
---@diagnostic disable-next-line: redefined-local
M.get = function(opts, palette)
  return {
    modes = {
      normal = palette.veiledCore,
      insert = palette.shroudedViolet,
      visual = palette.veiledGlow,
      replace = palette.hiddenMagenta,
      command = palette.veiledBright,
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
      bg_search = palette.veiledGlow,
      bg_visual = palette.veiledDark,
      bg_statusline = palette.bg_light,
      border = palette.bg_alt4,
      header1 = palette.veiledCore,
      header2 = palette.shroudedViolet,
      special = palette.mutedIndigo,
      nontext = palette.bg_lighter,
      whitespace = palette.bg_lightest,
      win_separator = palette.veiledCore,
      indent = palette.bg_lighter,
      indent_scope = palette.veiledGlow,
      picker = palette.hiddenMagenta,
      yank = palette.concealedPink,
      mark = palette.shroudedViolet,
      scrollbar = palette.bg_lighter,
      tabline = {
        bg = palette.bg_darkest,
        fg_selected = palette.fg_lightest,
        bg_selected = palette.bg_dark,
        fg_inactive = palette.fg_mid,
        bg_inactive = palette.bg_darkest,
        fg_alternate = palette.veiledBright,
        bg_alternate = palette.bg_darkest,
        indicator = palette.mutedIndigo,
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
      accent1 = palette.veiledCore,
      accent2 = palette.veiledBright,
      accent3 = palette.shroudedViolet,
      accent4 = palette.fg_mid,
      accent5 = palette.hiddenMagenta,
      invert = palette.bg_light,
    },

    rainbow = {
      rainbow1 = palette.veiledCore,
      rainbow2 = palette.veiledBright,
      rainbow3 = palette.shroudedViolet,
      rainbow4 = palette.veiledGlow,
      rainbow5 = palette.mutedIndigo,
      rainbow6 = palette.hiddenMagenta,
      rainbow7 = palette.concealedPink,
    },

    syn = {
      attribute = palette.accent_yellow,
      comment = palette.fg_dark,
      constant = palette.veiledBright,
      deprecated = palette.fg_mid,
      func = palette.shroudedViolet,
      identifier = palette.fg_lightest,
      keyword = palette.veiledCore,
      method = palette.mutedIndigo,
      number = palette.veiledGlow,
      operator = palette.hiddenMagenta,
      parameter = palette.fg_mid,
      preproc = palette.veiledDeep,
      punct = palette.fg_mid,
      regex = palette.accent_yellow,
      statement = palette.veiledCore,
      string = palette.accent_green,
      symbol = palette.hiddenMagenta,
      type = palette.shroudedViolet,
      variable = "none",
      special = palette.accent_yellow,
      special2 = palette.hiddenMagenta,
      special3 = palette.veiledDeep,
    },

    vcs = {
      added = palette.accent_green,
      removed = palette.hiddenMagenta,
      changed = palette.accent_yellow,
    },

    diff = {
      add = palette.accent_green,
      change = palette.accent_yellow,
      delete = palette.hiddenMagenta,
      text = palette.veiledCore,
    },

    diag = {
      ok = palette.accent_green,
      error = palette.hiddenMagenta,
      warning = palette.accent_yellow,
      info = palette.veiledCore,
      hint = palette.shroudedViolet,
    },

    term = {
      black = palette.bg_alt3,
      red = palette.hiddenMagenta,
      green = palette.accent_green,
      yellow = palette.accent_yellow,
      blue = palette.veiledCore,
      magenta = palette.accent_pink,
      cyan = palette.shroudedViolet,
      white = palette.fg_light,
      black_bright = color(palette.bg_alt3):brighten(0.6):to_hex(),
      red_bright = color(palette.hiddenMagenta):brighten(0.2):to_hex(),
      green_bright = color(palette.accent_green):brighten(0.1):to_hex(),
      yellow_bright = color(palette.accent_yellow):brighten(0.2):to_hex(),
      blue_bright = color(palette.veiledCore):brighten(0.3):to_hex(),
      magenta_bright = color(palette.accent_pink):brighten(0.2):to_hex(),
      cyan_bright = color(palette.shroudedViolet):brighten(0.1):to_hex(),
      white_bright = color(palette.fg_light):brighten(0.2):to_hex(),
      indexed1 = palette.veiledBright,
      indexed2 = palette.hiddenMagenta,
    },
  }
end

return {
  name = "Lantern Corps - Ultraviolet (Veiled)",
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
    base08 = palette.hiddenMagenta,
    base09 = palette.accent_orange,
    base0A = palette.accent_yellow,
    base0B = palette.accent_green,
    base0C = palette.shroudedViolet,
    base0D = palette.veiledCore,
    base0E = palette.veiledDeep,
    base0F = palette.veiledBright,
  },

  palette = palette,

  get = M.get,
}
