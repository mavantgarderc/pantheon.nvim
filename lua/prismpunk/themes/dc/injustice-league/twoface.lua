local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.dc.injustice-league.twoface")

local M = {}

M.get = function(opts, plt)
  return {
    modes = {
      normal = plt.navy,
      insert = plt.acid_orange,
      visual = plt.rage_red,
      replace = plt.burn_orange,
      command = plt.steel,
    },

    ui = {
      fg = plt.fg,
      fg_dim = plt.silver,
      fg_dimmer = plt.steel,
      fg_dark = plt.navy_light,
      fg_reverse = plt.bg_dark,

      bg_m4 = plt.bg_highlight,
      bg_m3 = plt.bg_alt,
      bg_m2 = plt.bg_darker,
      bg_m1 = plt.bg_dark,
      bg_dim = plt.bg_dark,
      bg = plt.bg,
      bg_p1 = plt.bg_alt,
      bg_p2 = plt.bg_highlight,
      bg_gutter = opts.gutter and plt.bg_highlight or "none",
      bg_cursorline = plt.bg_highlight,
      bg_cursorline_alt = plt.bg_alt,
      bg_search = plt.burn_orange,
      bg_visual = plt.scar_brown,
      bg_statusline = plt.bg_highlight,

      border = plt.coin_silver,
      header1 = plt.navy,
      header2 = plt.acid_orange,
      special = plt.purple_scar,
      nontext = plt.bg_alt,
      whitespace = plt.bg_highlight,
      win_separator = plt.coin_silver,
      indent = plt.bg_alt,
      indent_scope = plt.steel,
      picker = plt.steel,
      yank = plt.rage_red,
      mark = plt.violet_chaos,
      scrollbar = plt.bg_highlight,

      tabline = {
        bg = plt.bg,
        fg_selected = plt.fg,
        bg_selected = plt.bg_highlight,
        fg_inactive = plt.silver,
        bg_inactive = plt.bg_dark,
        fg_alternate = plt.navy,
        bg_alternate = plt.bg_dark,
        indicator = plt.acid_orange,
      },

      pmenu = {
        fg = plt.fg,
        fg_sel = "none",
        fg_border = plt.bg_highlight,
        bg_border = plt.bg_highlight,
        bg = plt.bg_highlight,
        bg_sel = plt.bg_alt,
        bg_sbar = plt.bg_highlight,
        bg_thumb = plt.coin_silver,
      },

      float = {
        fg = plt.fg,
        bg = plt.bg_alt,
        fg_border = plt.bg_highlight,
        bg_border = plt.bg_alt,
      },
    },

    accent = {
      accent1 = plt.navy,
      accent2 = plt.acid_orange,
      accent3 = plt.rage_red,
      accent4 = plt.violet_chaos,
      accent5 = plt.purple_scar,
      invert = plt.bg_highlight,
    },

    rainbow = {
      rainbow1 = plt.navy,
      rainbow2 = plt.steel,
      rainbow3 = plt.acid_orange,
      rainbow4 = plt.burn_orange,
      rainbow5 = plt.scar_brown,
      rainbow6 = plt.rage_red,
      rainbow7 = plt.violet_chaos,
    },

    syn = {
      attribute = plt.fg,
      boolean = plt.rage_red,
      comment = plt.silver,
      constant = plt.steel,
      deprecated = plt.bg_highlight,
      func = plt.navy,
      identifier = plt.fg,
      keyword = plt.navy,
      method = plt.steel,
      number = plt.burn_orange,
      operator = plt.acid_orange,
      parameter = plt.silver,
      preproc = plt.purple_scar,
      punct = plt.coin_edge,
      regex = plt.violet_chaos,
      statement = plt.navy,
      string = plt.steel,
      symbol = plt.fg,
      type = plt.scar_brown,
      variable = plt.fg,
      special = plt.violet_chaos,
      special2 = plt.acid_orange,
      special3 = plt.rage_red,
    },

    vcs = { added = plt.steel, removed = plt.rage_red, changed = plt.acid_orange },
    diff = { add = plt.steel, change = plt.violet_chaos, delete = plt.dried_blood, text = plt.burn_orange },
    diag = { ok = plt.steel, error = plt.rage_red, warning = plt.acid_orange, info = plt.navy, hint = plt.purple_scar },

    term = {
      black = plt.bg_dark,
      red = plt.term_red,
      green = plt.term_green,
      yellow = plt.term_orange,
      blue = plt.term_blue,
      magenta = plt.term_purple,
      cyan = plt.term_cyan,
      white = plt.fg,

      black_bright = color(plt.bg_dark):brighten(0.8):to_hex(),
      red_bright = plt.term_red_bright,
      green_bright = plt.term_green_bright,
      yellow_bright = plt.term_orange_bright,
      blue_bright = plt.term_blue_bright,
      magenta_bright = plt.term_purple_bright,
      cyan_bright = plt.term_cyan_bright,
      white_bright = "#ffffff",
      indexed1 = plt.navy,
      indexed2 = plt.acid_orange,
    },

    treesitter = {
      ["@comment"] = plt.silver,
      ["@comment.documentation"] = plt.steel,
      ["@comment.error"] = plt.rage_red,
      ["@comment.warning"] = plt.acid_orange,
      ["@comment.todo"] = plt.violet_chaos,
      ["@comment.note"] = plt.steel,

      ["@constant"] = plt.steel,
      ["@constant.builtin"] = plt.steel,
      ["@constant.macro"] = plt.burn_orange,

      ["@string"] = plt.steel,
      ["@string.regex"] = plt.violet_chaos,
      ["@string.escape"] = plt.acid_orange,
      ["@string.special"] = plt.rage_red,
      ["@string.special.symbol"] = plt.coin_silver,
      ["@string.special.url"] = plt.purple_scar,

      ["@number"] = plt.burn_orange,
      ["@boolean"] = plt.rage_red,

      ["@function"] = plt.navy,
      ["@function.builtin"] = plt.navy,
      ["@function.macro"] = plt.acid_orange,
      ["@function.method"] = plt.steel,

      ["@keyword"] = plt.navy,
      ["@keyword.operator"] = plt.acid_orange,
      ["@keyword.return"] = plt.navy,
      ["@keyword.exception"] = plt.rage_red,

      ["@variable"] = plt.fg,
      ["@variable.builtin"] = plt.coin_silver,
      ["@variable.parameter"] = plt.silver,

      ["@type"] = plt.scar_brown,
      ["@property"] = plt.fg,

      ["@punctuation.delimiter"] = plt.coin_edge,
      ["@punctuation.bracket"] = plt.steel,
      ["@punctuation.special"] = plt.acid_orange,

      ["@tag"] = plt.navy,
      ["@tag.attribute"] = plt.scar_brown,
      ["@tag.delimiter"] = plt.coin_edge,

      ["@markup.heading.1"] = plt.navy,
      ["@markup.heading.2"] = plt.steel,
      ["@markup.heading.3"] = plt.acid_orange,
      ["@markup.heading.4"] = plt.burn_orange,
      ["@markup.heading.5"] = plt.rage_red,
      ["@markup.heading.6"] = plt.violet_chaos,

      ["@diff.plus"] = plt.steel,
      ["@diff.minus"] = plt.dried_blood,
      ["@diff.delta"] = plt.purple_scar,

      ["@lsp.type.property"] = plt.fg,
      ["@lsp.type.class"] = plt.scar_brown,
      ["@lsp.mod.deprecated"] = { fg = plt.bg_highlight, strikethrough = true },
    },

    lsp = {
      ["@lsp.type.class"] = plt.scar_brown,
      ["@lsp.type.interface"] = plt.scar_brown,
      ["@lsp.type.property"] = plt.fg,
      ["@lsp.type.namespace"] = plt.fg,
      ["@lsp.type.macro"] = plt.burn_orange,
      ["@lsp.type.decorator"] = plt.navy,
      ["@lsp.type.unresolvedReference"] = plt.rage_red,
      ["@lsp.mod.deprecated"] = { fg = plt.bg_highlight, strikethrough = true },
      ["@lsp.mod.readonly"] = plt.steel,
    },
  }
end

return {
  name = "Two-Face – Eye-Candy Split",
  author = "PrismPunk.nvim",
  description = "Half immaculate courtroom navy. Half acid-scarred chaos. This is what happens when Harvey Dent loses the coin toss forever.",

  base16 = {
    base00 = palette.bg,
    base01 = palette.bg_dark,
    base02 = palette.bg_alt,
    base03 = palette.bg_highlight,
    base04 = palette.silver,
    base05 = palette.steel,
    base06 = palette.navy_light,
    base07 = palette.fg,
    base08 = palette.rage_red,
    base09 = palette.acid_orange,
    base0A = palette.navy,
    base0B = palette.steel,
    base0C = palette.violet_chaos,
    base0D = palette.purple_scar,
    base0E = palette.burn_orange,
    base0F = palette.coin_silver,
  },

  palette = palette,
  get = M.get,
}
