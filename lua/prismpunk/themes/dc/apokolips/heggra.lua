local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.dc.apokolips.heggra")

local M = {}

---@param opts table
---@param plt table
---@return table
M.get = function(opts, plt)
  return {
    modes = {
      normal = plt.heggra_crimson,
      insert = plt.venom_amethyst,
      visual = plt.monarch_gold,
      replace = plt.imperial_red,
      command = plt.queen_poison,
    },

    ui = {
      fg = plt.death_pearl,
      fg_dim = plt.empress_flesh,
      fg_dimmer = plt.royal_dusk,
      fg_dark = plt.queen_skin,
      fg_reverse = plt.heggra_void,

      bg_m4 = plt.throne_core,
      bg_m3 = plt.royal_shadow,
      bg_m2 = plt.obsidian_depth,
      bg_m1 = plt.heggra_void,
      bg_dim = plt.heggra_void,
      bg = plt.heggra_void,
      bg_p1 = plt.obsidian_depth,
      bg_p2 = plt.royal_shadow,
      bg_gutter = opts.gutter and plt.royal_shadow or "none",
      bg_cursorline = plt.royal_shadow,
      bg_cursorline_alt = plt.obsidian_depth,
      bg_search = plt.heggra_crimson,
      bg_visual = plt.throne_blood,
      bg_statusline = plt.royal_shadow,

      border = plt.heggra_crimson,
      header1 = plt.heggra_crimson,
      header2 = plt.venom_amethyst,
      special = plt.crown_amber,
      nontext = plt.obsidian_depth,
      whitespace = plt.throne_core,
      win_separator = plt.heggra_crimson,
      indent = plt.obsidian_depth,
      indent_scope = plt.death_pearl,
      picker = plt.imperial_red,
      yank = plt.heggra_crimson,
      mark = plt.royal_amber,
      scrollbar = plt.royal_shadow,

      tabline = {
        bg = plt.heggra_void,
        fg_selected = plt.heggra_crimson,
        bg_selected = plt.royal_shadow,
        fg_inactive = plt.royal_dusk,
        bg_inactive = plt.heggra_void,
        fg_alternate = plt.crown_amber,
        bg_alternate = plt.heggra_void,
        indicator = plt.monarch_gold,
      },

      pmenu = {
        fg = plt.death_pearl,
        fg_sel = "none",
        fg_border = plt.royal_shadow,
        bg_border = plt.royal_shadow,
        bg = plt.royal_shadow,
        bg_sel = plt.obsidian_depth,
        bg_sbar = plt.royal_shadow,
        bg_thumb = plt.heggra_crimson,
      },

      float = {
        fg = plt.death_pearl,
        bg = plt.obsidian_depth,
        fg_border = plt.royal_shadow,
        bg_border = plt.obsidian_depth,
      },
    },

    accent = {
      accent1 = plt.heggra_crimson,
      accent2 = plt.venom_amethyst,
      accent3 = plt.monarch_gold,
      accent4 = plt.imperial_red,
      accent5 = plt.queen_poison,
      invert = plt.royal_shadow,
    },

    rainbow = {
      rainbow1 = plt.heggra_crimson,
      rainbow2 = plt.imperial_red,
      rainbow3 = plt.throne_blood,
      rainbow4 = plt.venom_amethyst,
      rainbow5 = plt.queen_poison,
      rainbow6 = plt.monarch_gold,
      rainbow7 = plt.crown_amber,
    },

    syn = {
      attribute = plt.death_pearl,
      boolean = plt.monarch_gold,
      comment = plt.royal_dusk,
      constant = plt.crown_amber,
      deprecated = plt.throne_core,
      func = plt.queen_poison,
      identifier = plt.death_pearl,
      keyword = plt.heggra_crimson,
      method = plt.imperial_red,
      number = plt.royal_amber,
      operator = plt.venom_amethyst,
      parameter = plt.empress_flesh,
      preproc = plt.venom_amethyst,
      punct = plt.royal_dusk,
      regex = plt.queen_poison,
      statement = plt.heggra_crimson,
      string = plt.crown_amber,
      symbol = plt.death_pearl,
      type = plt.royal_amber,
      variable = plt.death_pearl,
      special = plt.queen_poison,
      special2 = plt.imperial_red,
      special3 = plt.monarch_gold,
    },

    vcs = { added = plt.crown_amber, removed = plt.throne_blood, changed = plt.royal_amber },
    diff = { add = plt.crown_amber, change = plt.queen_poison, delete = plt.throne_blood, text = plt.venom_amethyst },
    diag = {
      ok = plt.crown_amber,
      error = plt.throne_blood,
      warning = plt.heggra_crimson,
      info = plt.queen_poison,
      hint = plt.royal_amber,
    },

    term = {
      black = plt.heggra_void,
      red = plt.term_red,
      green = plt.term_green,
      yellow = plt.term_yellow,
      blue = plt.term_blue,
      magenta = plt.venom_amethyst,
      cyan = plt.term_cyan,
      white = plt.death_pearl,

      black_bright = color(plt.heggra_void):brighten(0.8):to_hex(),
      red_bright = "#ff5588",
      green_bright = "#ffcc66",
      yellow_bright = "#ffee99",
      blue_bright = "#ff88ff",
      magenta_bright = "#ff99ff",
      cyan_bright = "#ffbbee",
      white_bright = plt.death_pearl,
      indexed1 = plt.throne_blood,
      indexed2 = plt.crown_amber,
    },

    treesitter = {
      ["@comment"] = plt.royal_dusk,
      ["@comment.documentation"] = plt.empress_flesh,
      ["@comment.error"] = plt.throne_blood,
      ["@comment.warning"] = plt.heggra_crimson,
      ["@comment.todo"] = plt.crown_amber,
      ["@comment.note"] = plt.queen_poison,

      ["@constant"] = plt.crown_amber,
      ["@constant.builtin"] = plt.crown_amber,
      ["@constant.macro"] = plt.royal_amber,

      ["@string"] = plt.crown_amber,
      ["@string.documentation"] = plt.crown_amber,
      ["@string.regex"] = plt.queen_poison,
      ["@string.escape"] = plt.imperial_red,
      ["@string.special"] = plt.royal_amber,
      ["@string.special.symbol"] = plt.heggra_crimson,
      ["@string.special.url"] = plt.venom_amethyst,
      ["@string.special.path"] = plt.crown_amber,

      ["@character"] = plt.crown_amber,
      ["@character.special"] = plt.imperial_red,

      ["@number"] = plt.royal_amber,
      ["@number.float"] = plt.royal_amber,

      ["@boolean"] = plt.monarch_gold,

      ["@function"] = plt.queen_poison,
      ["@function.builtin"] = plt.queen_poison,
      ["@function.call"] = plt.queen_poison,
      ["@function.macro"] = plt.venom_amethyst,
      ["@function.method"] = plt.imperial_red,
      ["@function.method.call"] = plt.imperial_red,

      ["@constructor"] = plt.heggra_crimson,

      ["@parameter"] = plt.empress_flesh,
      ["@parameter.builtin"] = plt.death_pearl,

      ["@keyword"] = plt.heggra_crimson,
      ["@keyword.coroutine"] = plt.venom_amethyst,
      ["@keyword.function"] = plt.heggra_crimson,
      ["@keyword.operator"] = plt.imperial_red,
      ["@keyword.return"] = plt.heggra_crimson,
      ["@keyword.import"] = plt.queen_poison,
      ["@keyword.storage"] = plt.heggra_crimson,
      ["@keyword.repeat"] = plt.heggra_crimson,
      ["@keyword.conditional"] = plt.heggra_crimson,
      ["@keyword.exception"] = plt.throne_blood,
      ["@keyword.directive"] = plt.royal_amber,
      ["@keyword.directive.define"] = plt.royal_amber,

      ["@conditional"] = plt.heggra_crimson,
      ["@conditional.ternary"] = plt.heggra_crimson,

      ["@repeat"] = plt.heggra_crimson,

      ["@label"] = plt.queen_poison,

      ["@operator"] = plt.imperial_red,

      ["@exception"] = plt.throne_blood,

      ["@variable"] = plt.death_pearl,
      ["@variable.builtin"] = plt.heggra_crimson,
      ["@variable.parameter"] = plt.empress_flesh,
      ["@variable.member"] = plt.death_pearl,

      ["@type"] = plt.royal_amber,
      ["@type.builtin"] = plt.royal_amber,
      ["@type.definition"] = plt.royal_amber,
      ["@type.qualifier"] = plt.heggra_crimson,

      ["@attribute"] = plt.death_pearl,
      ["@attribute.builtin"] = plt.royal_amber,

      ["@property"] = plt.death_pearl,
      ["@field"] = plt.death_pearl,
      ["@module"] = plt.death_pearl,
      ["@module.builtin"] = plt.death_pearl,
      ["@namespace"] = plt.death_pearl,
      ["@namespace.builtin"] = plt.death_pearl,

      ["@punctuation.delimiter"] = plt.royal_dusk,
      ["@punctuation.bracket"] = plt.royal_dusk,
      ["@punctuation.special"] = plt.imperial_red,

      ["@tag"] = plt.heggra_crimson,
      ["@tag.attribute"] = plt.royal_amber,
      ["@tag.delimiter"] = plt.royal_dusk,
      ["@tag.builtin"] = plt.heggra_crimson,

      ["@markup.strong"] = { fg = plt.heggra_crimson, bold = true },
      ["@markup.italic"] = { fg = plt.death_pearl, italic = true },
      ["@markup.strikethrough"] = { fg = plt.throne_core, strikethrough = true },
      ["@markup.underline"] = { fg = plt.imperial_red, underline = true },
      ["@markup.heading"] = plt.heggra_crimson,
      ["@markup.heading.1"] = plt.heggra_crimson,
      ["@markup.heading.2"] = plt.venom_amethyst,
      ["@markup.heading.3"] = plt.monarch_gold,
      ["@markup.heading.4"] = plt.imperial_red,
      ["@markup.heading.5"] = plt.queen_poison,
      ["@markup.heading.6"] = plt.crown_amber,
      ["@markup.quote"] = plt.royal_dusk,
      ["@markup.math"] = plt.queen_poison,
      ["@markup.link"] = plt.venom_amethyst,
      ["@markup.link.label"] = plt.royal_amber,
      ["@markup.link.url"] = plt.monarch_gold,
      ["@markup.raw"] = plt.crown_amber,
      ["@markup.raw.block"] = plt.crown_amber,
      ["@markup.list"] = plt.heggra_crimson,
      ["@markup.list.checked"] = plt.crown_amber,
      ["@markup.list.unchecked"] = plt.royal_dusk,

      ["@diff.plus"] = plt.crown_amber,
      ["@diff.minus"] = plt.throne_blood,
      ["@diff.delta"] = plt.imperial_red,

      ["@none"] = "none",
      ["@conceal"] = plt.queen_poison,
      ["@spell"] = plt.death_pearl,
      ["@nospell"] = "none",

      ["@lsp.type.property.lua"] = plt.death_pearl,
      ["@constructor.python"] = plt.heggra_crimson,
      ["@constructor.javascript"] = plt.heggra_crimson,
      ["@constructor.typescript"] = plt.heggra_crimson,
      ["@namespace.rust"] = plt.death_pearl,
      ["@type.qualifier.rust"] = plt.heggra_crimson,
      ["@constant.macro.c"] = plt.royal_amber,
      ["@constant.macro.cpp"] = plt.royal_amber,
      ["@namespace.go"] = plt.death_pearl,
      ["@property.css"] = plt.venom_amethyst,
      ["@type.css"] = plt.heggra_crimson,
      ["@label.json"] = plt.death_pearl,
      ["@field.yaml"] = plt.empress_flesh,
      ["@property.toml"] = plt.empress_flesh,
      ["@function.builtin.bash"] = plt.queen_poison,
      ["@string.regexp"] = plt.queen_poison,
      ["@character.special.regex"] = plt.imperial_red,
    },

    lsp = {
      ["@lsp.type.class"] = plt.royal_amber,
      ["@lsp.type.interface"] = plt.royal_amber,
      ["@lsp.type.struct"] = plt.royal_amber,
      ["@lsp.type.enum"] = plt.royal_amber,
      ["@lsp.type.enumMember"] = plt.crown_amber,
      ["@lsp.type.property"] = plt.death_pearl,
      ["@lsp.type.namespace"] = plt.death_pearl,

      ["@lsp.type.macro"] = plt.royal_amber,
      ["@lsp.type.decorator"] = plt.heggra_crimson,

      ["@lsp.type.builtinType"] = plt.royal_amber,
      ["@lsp.type.selfParameter"] = plt.heggra_crimson,
      ["@lsp.type.typeParameter"] = plt.royal_amber,

      ["@lsp.type.array"] = plt.royal_amber,
      ["@lsp.type.object"] = plt.royal_amber,
      ["@lsp.type.key"] = plt.death_pearl,
      ["@lsp.type.null"] = plt.crown_amber,
      ["@lsp.type.enumConstant"] = plt.crown_amber,

      ["@lsp.type.event"] = plt.royal_amber,
      ["@lsp.type.regexp"] = plt.queen_poison,
      ["@lsp.type.unresolvedReference"] = plt.throne_blood,

      ["@lsp.mod.deprecated"] = { fg = plt.throne_core, strikethrough = true },
      ["@lsp.mod.readonly"] = plt.crown_amber,
      ["@lsp.mod.async"] = plt.heggra_crimson,
      ["@lsp.mod.static"] = plt.royal_amber,
      ["@lsp.mod.abstract"] = plt.royal_amber,
      ["@lsp.mod.defaultLibrary"] = plt.royal_amber,
      ["@lsp.mod.documentation"] = plt.empress_flesh,
    },
  }
end

return {
  name = "Apokolips – Heggra",
  author = "PrismPunk.nvim",
  description = "The murdered Queen-Mother. "
    .. "Crimson royalty, poisoned gold, "
    .. "and the blackest throne in the multiverse.",

  base16 = {
    base00 = palette.heggra_void,
    base01 = palette.obsidian_depth,
    base02 = palette.royal_shadow,
    base03 = palette.throne_core,
    base04 = palette.royal_dusk,
    base05 = palette.empress_flesh,
    base06 = palette.queen_skin,
    base07 = palette.death_pearl,
    base08 = palette.throne_blood,
    base09 = palette.monarch_gold,
    base0A = palette.crown_amber,
    base0B = palette.heggra_crimson,
    base0C = palette.imperial_purple,
    base0D = palette.venom_amethyst,
    base0E = palette.queen_poison,
    base0F = palette.imperial_red,
  },

  palette = palette,
  get = M.get,
}
