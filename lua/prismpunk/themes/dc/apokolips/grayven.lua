local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.dc.apokolips.grayven")

local M = {}

---@param opts table
---@param plt table
---@return table
M.get = function(opts, plt)
  return {
    modes = {
      normal = plt.grayven_gold,
      insert = plt.cold_revenge,
      visual = plt.molten_rage,
      replace = plt.apokolips_blood,
      command = plt.warlord_amber,
    },

    ui = {
      fg = plt.burning_pride,
      fg_dim = plt.exile_flesh,
      fg_dimmer = plt.battle_scars,
      fg_dark = plt.warrior_skin,
      fg_reverse = plt.exile_void,

      bg_m4 = plt.throne_denied,
      bg_m3 = plt.outcast_shadow,
      bg_m2 = plt.rejected_depth,
      bg_m1 = plt.exile_void,
      bg_dim = plt.exile_void,
      bg = plt.exile_void,
      bg_p1 = plt.rejected_depth,
      bg_p2 = plt.outcast_shadow,
      bg_gutter = opts.gutter and plt.outcast_shadow or "none",
      bg_cursorline = plt.outcast_shadow,
      bg_cursorline_alt = plt.rejected_depth,
      bg_search = plt.grayven_gold,
      bg_visual = plt.molten_rage,
      bg_statusline = plt.outcast_shadow,

      border = plt.grayven_gold,
      header1 = plt.grayven_gold,
      header2 = plt.cold_revenge,
      special = plt.exile_crown,
      nontext = plt.rejected_depth,
      whitespace = plt.throne_denied,
      win_separator = plt.grayven_gold,
      indent = plt.rejected_depth,
      indent_scope = plt.burning_pride,
      picker = plt.warlord_amber,
      yank = plt.grayven_gold,
      mark = plt.fatherless_star,
      scrollbar = plt.outcast_shadow,

      tabline = {
        bg = plt.exile_void,
        fg_selected = plt.grayven_gold,
        bg_selected = plt.outcast_shadow,
        fg_inactive = plt.battle_scars,
        bg_inactive = plt.exile_void,
        fg_alternate = plt.exile_crown,
        bg_alternate = plt.exile_void,
        indicator = plt.molten_rage,
      },

      pmenu = {
        fg = plt.burning_pride,
        fg_sel = "none",
        fg_border = plt.outcast_shadow,
        bg_border = plt.outcast_shadow,
        bg = plt.outcast_shadow,
        bg_sel = plt.rejected_depth,
        bg_sbar = plt.outcast_shadow,
        bg_thumb = plt.grayven_gold,
      },

      float = {
        fg = plt.burning_pride,
        bg = plt.rejected_depth,
        fg_border = plt.outcast_shadow,
        bg_border = plt.rejected_depth,
      },
    },

    accent = {
      accent1 = plt.grayven_gold,
      accent2 = plt.molten_rage,
      accent3 = plt.cold_revenge,
      accent4 = plt.warlord_amber,
      accent5 = plt.apokolips_blood,
      invert = plt.outcast_shadow,
    },

    rainbow = {
      rainbow1 = plt.grayven_gold,
      rainbow2 = plt.molten_rage,
      rainbow3 = plt.warlord_amber,
      rainbow4 = plt.exile_crown,
      rainbow5 = plt.cold_revenge,
      rainbow6 = plt.omega_reject,
      rainbow7 = plt.fatherless_star,
    },

    syn = {
      attribute = plt.burning_pride,
      boolean = plt.cold_revenge,
      comment = plt.battle_scars,
      constant = plt.exile_crown,
      deprecated = plt.throne_denied,
      func = plt.molten_rage,
      identifier = plt.burning_pride,
      keyword = plt.grayven_gold,
      method = plt.apokolips_blood,
      number = plt.warlord_amber,
      operator = plt.cold_revenge,
      parameter = plt.exile_flesh,
      preproc = plt.cold_revenge,
      punct = plt.battle_scars,
      regex = plt.molten_rage,
      statement = plt.grayven_gold,
      string = plt.exile_crown,
      symbol = plt.burning_pride,
      type = plt.warlord_amber,
      variable = plt.burning_pride,
      special = plt.molten_rage,
      special2 = plt.apokolips_blood,
      special3 = plt.cold_revenge,
    },

    vcs = { added = plt.exile_crown, removed = plt.apokolips_blood, changed = plt.warlord_amber },
    diff = { add = plt.exile_crown, change = plt.molten_rage, delete = plt.apokolips_blood, text = plt.cold_revenge },
    diag = {
      ok = plt.exile_crown,
      error = plt.apokolips_blood,
      warning = plt.grayven_gold,
      info = plt.molten_rage,
      hint = plt.warlord_amber,
    },

    term = {
      black = plt.exile_void,
      red = plt.term_red,
      green = plt.term_green,
      yellow = plt.term_yellow,
      blue = plt.term_blue,
      magenta = plt.grayven_gold,
      cyan = plt.cold_revenge,
      white = plt.burning_pride,

      black_bright = color(plt.exile_void):brighten(0.8):to_hex(),
      red_bright = "#ff6699",
      green_bright = "#ffcc66",
      yellow_bright = "#ffee88",
      blue_bright = "#66ccff",
      magenta_bright = "#ffdd88",
      cyan_bright = "#aaffff",
      white_bright = plt.burning_pride,
      indexed1 = plt.grayven_gold,
      indexed2 = plt.exile_crown,
    },

    treesitter = {
      ["@comment"] = plt.battle_scars,
      ["@comment.documentation"] = plt.exile_flesh,
      ["@comment.error"] = plt.apokolips_blood,
      ["@comment.warning"] = plt.grayven_gold,
      ["@comment.todo"] = plt.exile_crown,
      ["@comment.note"] = plt.molten_rage,

      ["@constant"] = plt.exile_crown,
      ["@constant.builtin"] = plt.exile_crown,
      ["@constant.macro"] = plt.warlord_amber,

      ["@string"] = plt.exile_crown,
      ["@string.documentation"] = plt.exile_crown,
      ["@string.regex"] = plt.molten_rage,
      ["@string.escape"] = plt.apokolips_blood,
      ["@string.special"] = plt.cold_revenge,
      ["@string.special.symbol"] = plt.grayven_gold,
      ["@string.special.url"] = plt.molten_rage,
      ["@string.special.path"] = plt.exile_crown,

      ["@character"] = plt.exile_crown,
      ["@character.special"] = plt.apokolips_blood,

      ["@number"] = plt.warlord_amber,
      ["@number.float"] = plt.warlord_amber,

      ["@boolean"] = plt.cold_revenge,

      ["@function"] = plt.molten_rage,
      ["@function.builtin"] = plt.molten_rage,
      ["@function.call"] = plt.molten_rage,
      ["@function.macro"] = plt.cold_revenge,
      ["@function.method"] = plt.apokolips_blood,
      ["@function.method.call"] = plt.apokolips_blood,

      ["@constructor"] = plt.grayven_gold,

      ["@parameter"] = plt.exile_flesh,
      ["@parameter.builtin"] = plt.burning_pride,

      ["@keyword"] = plt.grayven_gold,
      ["@keyword.coroutine"] = plt.cold_revenge,
      ["@keyword.function"] = plt.grayven_gold,
      ["@keyword.operator"] = plt.cold_revenge,
      ["@keyword.return"] = plt.grayven_gold,
      ["@keyword.import"] = plt.molten_rage,
      ["@keyword.storage"] = plt.grayven_gold,
      ["@keyword.repeat"] = plt.grayven_gold,
      ["@keyword.conditional"] = plt.grayven_gold,
      ["@keyword.exception"] = plt.apokolips_blood,
      ["@keyword.directive"] = plt.warlord_amber,
      ["@keyword.directive.define"] = plt.warlord_amber,

      ["@conditional"] = plt.grayven_gold,
      ["@conditional.ternary"] = plt.grayven_gold,

      ["@repeat"] = plt.grayven_gold,

      ["@label"] = plt.molten_rage,

      ["@operator"] = plt.cold_revenge,

      ["@exception"] = plt.apokolips_blood,

      ["@variable"] = plt.burning_pride,
      ["@variable.builtin"] = plt.grayven_gold,
      ["@variable.parameter"] = plt.exile_flesh,
      ["@variable.member"] = plt.burning_pride,

      ["@type"] = plt.warlord_amber,
      ["@type.builtin"] = plt.warlord_amber,
      ["@type.definition"] = plt.warlord_amber,
      ["@type.qualifier"] = plt.grayven_gold,

      ["@attribute"] = plt.burning_pride,
      ["@attribute.builtin"] = plt.warlord_amber,

      ["@property"] = plt.burning_pride,
      ["@field"] = plt.burning_pride,
      ["@module"] = plt.burning_pride,
      ["@module.builtin"] = plt.burning_pride,
      ["@namespace"] = plt.burning_pride,
      ["@namespace.builtin"] = plt.burning_pride,

      ["@punctuation.delimiter"] = plt.battle_scars,
      ["@punctuation.bracket"] = plt.battle_scars,
      ["@punctuation.special"] = plt.cold_revenge,

      ["@tag"] = plt.grayven_gold,
      ["@tag.attribute"] = plt.warlord_amber,
      ["@tag.delimiter"] = plt.battle_scars,
      ["@tag.builtin"] = plt.grayven_gold,

      ["@markup.strong"] = { fg = plt.grayven_gold, bold = true },
      ["@markup.italic"] = { fg = plt.burning_pride, italic = true },
      ["@markup.strikethrough"] = { fg = plt.throne_denied, strikethrough = true },
      ["@markup.underline"] = { fg = plt.apokolips_blood, underline = true },
      ["@markup.heading"] = plt.grayven_gold,
      ["@markup.heading.1"] = plt.grayven_gold,
      ["@markup.heading.2"] = plt.molten_rage,
      ["@markup.heading.3"] = plt.cold_revenge,
      ["@markup.heading.4"] = plt.apokolips_blood,
      ["@markup.heading.5"] = plt.warlord_amber,
      ["@markup.heading.6"] = plt.exile_crown,
      ["@markup.quote"] = plt.battle_scars,
      ["@markup.math"] = plt.molten_rage,
      ["@markup.link"] = plt.cold_revenge,
      ["@markup.link.label"] = plt.warlord_amber,
      ["@markup.link.url"] = plt.exile_crown,
      ["@markup.raw"] = plt.exile_crown,
      ["@markup.raw.block"] = plt.exile_crown,
      ["@markup.list"] = plt.grayven_gold,
      ["@markup.list.checked"] = plt.exile_crown,
      ["@markup.list.unchecked"] = plt.battle_scars,

      ["@diff.plus"] = plt.exile_crown,
      ["@diff.minus"] = plt.apokolips_blood,
      ["@diff.delta"] = plt.molten_rage,

      ["@none"] = "none",
      ["@conceal"] = plt.exile_crown,
      ["@spell"] = plt.burning_pride,
      ["@nospell"] = "none",

      ["@lsp.type.property.lua"] = plt.burning_pride,
      ["@constructor.python"] = plt.grayven_gold,
      ["@constructor.javascript"] = plt.grayven_gold,
      ["@constructor.typescript"] = plt.grayven_gold,
      ["@namespace.rust"] = plt.burning_pride,
      ["@type.qualifier.rust"] = plt.grayven_gold,
      ["@constant.macro.c"] = plt.warlord_amber,
      ["@constant.macro.cpp"] = plt.warlord_amber,
      ["@namespace.go"] = plt.burning_pride,
      ["@property.css"] = plt.molten_rage,
      ["@type.css"] = plt.grayven_gold,
      ["@label.json"] = plt.burning_pride,
      ["@field.yaml"] = plt.exile_flesh,
      ["@property.toml"] = plt.exile_flesh,
      ["@function.builtin.bash"] = plt.molten_rage,
      ["@string.regexp"] = plt.cold_revenge,
      ["@character.special.regex"] = plt.apokolips_blood,
    },

    lsp = {
      ["@lsp.type.class"] = plt.warlord_amber,
      ["@lsp.type.interface"] = plt.warlord_amber,
      ["@lsp.type.struct"] = plt.warlord_amber,
      ["@lsp.type.enum"] = plt.warlord_amber,
      ["@lsp.type.enumMember"] = plt.exile_crown,
      ["@lsp.type.property"] = plt.burning_pride,
      ["@lsp.type.namespace"] = plt.burning_pride,

      ["@lsp.type.macro"] = plt.warlord_amber,
      ["@lsp.type.decorator"] = plt.grayven_gold,

      ["@lsp.type.builtinType"] = plt.warlord_amber,
      ["@lsp.type.selfParameter"] = plt.grayven_gold,
      ["@lsp.type.typeParameter"] = plt.warlord_amber,

      ["@lsp.type.array"] = plt.warlord_amber,
      ["@lsp.type.object"] = plt.warlord_amber,
      ["@lsp.type.key"] = plt.burning_pride,
      ["@lsp.type.null"] = plt.exile_crown,
      ["@lsp.type.enumConstant"] = plt.exile_crown,

      ["@lsp.type.event"] = plt.warlord_amber,
      ["@lsp.type.regexp"] = plt.cold_revenge,
      ["@lsp.type.unresolvedReference"] = plt.apokolips_blood,

      ["@lsp.mod.deprecated"] = { fg = plt.throne_denied, strikethrough = true },
      ["@lsp.mod.readonly"] = plt.exile_crown,
      ["@lsp.mod.async"] = plt.grayven_gold,
      ["@lsp.mod.static"] = plt.warlord_amber,
      ["@lsp.mod.abstract"] = plt.warlord_amber,
      ["@lsp.mod.defaultLibrary"] = plt.warlord_amber,
      ["@lsp.mod.documentation"] = plt.exile_flesh,
    },
  }
end

return {
  name = "Apokolips – Grayven",
  author = "PrismPunk.nvim",
  description = "The son Darkseid erased from history. "
    .. "Molten gold arrogance, frozen starlight vengeance, "
    .. "and the black void of a throne he will burn the universe to claim.",

  base16 = {
    base00 = palette.exile_void,
    base01 = palette.rejected_depth,
    base02 = palette.outcast_shadow,
    base03 = palette.throne_denied,
    base04 = palette.battle_scars,
    base05 = palette.exile_flesh,
    base06 = palette.warrior_skin,
    base07 = palette.burning_pride,
    base08 = palette.apokolips_blood,
    base09 = palette.grayven_gold,
    base0A = palette.warlord_amber,
    base0B = palette.exile_crown,
    base0C = palette.cold_revenge,
    base0D = palette.molten_rage,
    base0E = palette.omega_reject,
    base0F = palette.fatherless_star,
  },

  palette = palette,
  get = M.get,
}
