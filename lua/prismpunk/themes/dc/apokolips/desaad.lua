local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.dc.apokolips.desaad")

local M = {}

---@param opts table
---@param plt table
---@return table
M.get = function(opts, plt)
  return {
    modes = {
      normal = plt.desaad_venom,
      insert = plt.infected_blood,
      visual = plt.nerve_fire,
      replace = plt.surgical_red,
      command = plt.chemical_burn,
    },

    ui = {
      fg = plt.torture_light,
      fg_dim = plt.venom_circuits,
      fg_dimmer = plt.sadist_flesh,
      fg_dark = plt.torment_flesh,
      fg_reverse = plt.torture_void,

      bg_m4 = plt.suffering_core,
      bg_m3 = plt.agony_shadow,
      bg_m2 = plt.pain_depth,
      bg_m1 = plt.torture_void,
      bg_dim = plt.torture_void,
      bg = plt.torture_void,
      bg_p1 = plt.pain_depth,
      bg_p2 = plt.agony_shadow,
      bg_gutter = opts.gutter and plt.agony_shadow or "none",
      bg_cursorline = plt.agony_shadow,
      bg_cursorline_alt = plt.pain_depth,
      bg_search = plt.desaad_venom,
      bg_visual = plt.nerve_fire,
      bg_statusline = plt.agony_shadow,

      border = plt.desaad_venom,
      header1 = plt.desaad_venom,
      header2 = plt.infected_blood,
      special = plt.agony_glow,
      nontext = plt.pain_depth,
      whitespace = plt.suffering_core,
      win_separator = plt.desaad_venom,
      indent = plt.pain_depth,
      indent_scope = plt.torture_light,
      picker = plt.chemical_burn,
      yank = plt.desaad_venom,
      mark = plt.corpse_pale,
      scrollbar = plt.agony_shadow,

      tabline = {
        bg = plt.torture_void,
        fg_selected = plt.desaad_venom,
        bg_selected = plt.agony_shadow,
        fg_inactive = plt.sadist_flesh,
        bg_inactive = plt.torture_void,
        fg_alternate = plt.agony_glow,
        bg_alternate = plt.torture_void,
        indicator = plt.nerve_fire,
      },

      pmenu = {
        fg = plt.torture_light,
        fg_sel = "none",
        fg_border = plt.agony_shadow,
        bg_border = plt.agony_shadow,
        bg = plt.agony_shadow,
        bg_sel = plt.pain_depth,
        bg_sbar = plt.agony_shadow,
        bg_thumb = plt.desaad_venom,
      },

      float = {
        fg = plt.torture_light,
        bg = plt.pain_depth,
        fg_border = plt.agony_shadow,
        bg_border = plt.pain_depth,
      },
    },

    accent = {
      accent1 = plt.desaad_venom,
      accent2 = plt.infected_blood,
      accent3 = plt.nerve_fire,
      accent4 = plt.chemical_burn,
      accent5 = plt.surgical_red,
      invert = plt.agony_shadow,
    },

    rainbow = {
      rainbow1 = plt.desaad_venom,
      rainbow2 = plt.nerve_fire,
      rainbow3 = plt.chemical_burn,
      rainbow4 = plt.agony_glow,
      rainbow5 = plt.infected_blood,
      rainbow6 = plt.wound_crimson,
      rainbow7 = plt.torture_light,
    },

    syn = {
      attribute = plt.torture_light,
      boolean = plt.surgical_red,
      comment = plt.sadist_flesh,
      constant = plt.agony_glow,
      deprecated = plt.suffering_core,
      func = plt.nerve_fire,
      identifier = plt.torture_light,
      keyword = plt.desaad_venom,
      method = plt.infected_blood,
      number = plt.chemical_burn,
      operator = plt.surgical_red,
      parameter = plt.venom_circuits,
      preproc = plt.surgical_red,
      punct = plt.sadist_flesh,
      regex = plt.nerve_fire,
      statement = plt.desaad_venom,
      string = plt.agony_glow,
      symbol = plt.torture_light,
      type = plt.chemical_burn,
      variable = plt.torture_light,
      special = plt.nerve_fire,
      special2 = plt.infected_blood,
      special3 = plt.surgical_red,
    },

    vcs = { added = plt.agony_glow, removed = plt.infected_blood, changed = plt.chemical_burn },
    diff = { add = plt.agony_glow, change = plt.nerve_fire, delete = plt.infected_blood, text = plt.surgical_red },
    diag = {
      ok = plt.agony_glow,
      error = plt.infected_blood,
      warning = plt.desaad_venom,
      info = plt.nerve_fire,
      hint = plt.chemical_burn,
    },

    term = {
      black = plt.torture_void,
      red = plt.term_red,
      green = plt.term_green,
      yellow = plt.term_yellow,
      blue = plt.term_blue,
      magenta = plt.desaad_venom,
      cyan = plt.torture_steel,
      white = plt.torture_light,

      black_bright = color(plt.torture_void):brighten(0.8):to_hex(),
      red_bright = "#ff6688",
      green_bright = "#ccff66",
      yellow_bright = "#ffffcc",
      blue_bright = "#99eeff",
      magenta_bright = "#ccff88",
      cyan_bright = "#eeffcc",
      white_bright = plt.torture_light,
      indexed1 = plt.desaad_venom,
      indexed2 = plt.agony_glow,
    },

    treesitter = {
      ["@comment"] = plt.sadist_flesh,
      ["@comment.documentation"] = plt.venom_circuits,
      ["@comment.error"] = plt.infected_blood,
      ["@comment.warning"] = plt.desaad_venom,
      ["@comment.todo"] = plt.agony_glow,
      ["@comment.note"] = plt.nerve_fire,

      ["@constant"] = plt.agony_glow,
      ["@constant.builtin"] = plt.agony_glow,
      ["@constant.macro"] = plt.chemical_burn,

      ["@string"] = plt.agony_glow,
      ["@string.documentation"] = plt.agony_glow,
      ["@string.regex"] = plt.nerve_fire,
      ["@string.escape"] = plt.infected_blood,
      ["@string.special"] = plt.surgical_red,
      ["@string.special.symbol"] = plt.desaad_venom,
      ["@string.special.url"] = plt.nerve_fire,
      ["@string.special.path"] = plt.agony_glow,

      ["@character"] = plt.agony_glow,
      ["@character.special"] = plt.infected_blood,

      ["@number"] = plt.chemical_burn,
      ["@number.float"] = plt.chemical_burn,

      ["@boolean"] = plt.surgical_red,

      ["@function"] = plt.nerve_fire,
      ["@function.builtin"] = plt.nerve_fire,
      ["@function.call"] = plt.nerve_fire,
      ["@function.macro"] = plt.chemical_burn,
      ["@function.method"] = plt.infected_blood,
      ["@function.method.call"] = plt.infected_blood,

      ["@constructor"] = plt.desaad_venom,

      ["@parameter"] = plt.venom_circuits,
      ["@parameter.builtin"] = plt.torture_light,

      ["@keyword"] = plt.desaad_venom,
      ["@keyword.coroutine"] = plt.surgical_red,
      ["@keyword.function"] = plt.desaad_venom,
      ["@keyword.operator"] = plt.surgical_red,
      ["@keyword.return"] = plt.desaad_venom,
      ["@keyword.import"] = plt.nerve_fire,
      ["@keyword.storage"] = plt.desaad_venom,
      ["@keyword.repeat"] = plt.desaad_venom,
      ["@keyword.conditional"] = plt.desaad_venom,
      ["@keyword.exception"] = plt.infected_blood,
      ["@keyword.directive"] = plt.chemical_burn,
      ["@keyword.directive.define"] = plt.chemical_burn,

      ["@conditional"] = plt.desaad_venom,
      ["@conditional.ternary"] = plt.desaad_venom,

      ["@repeat"] = plt.desaad_venom,

      ["@label"] = plt.nerve_fire,

      ["@operator"] = plt.surgical_red,

      ["@exception"] = plt.infected_blood,

      ["@variable"] = plt.torture_light,
      ["@variable.builtin"] = plt.desaad_venom,
      ["@variable.parameter"] = plt.venom_circuits,
      ["@variable.member"] = plt.torture_light,

      ["@type"] = plt.chemical_burn,
      ["@type.builtin"] = plt.chemical_burn,
      ["@type.definition"] = plt.chemical_burn,
      ["@type.qualifier"] = plt.desaad_venom,

      ["@attribute"] = plt.torture_light,
      ["@attribute.builtin"] = plt.chemical_burn,

      ["@property"] = plt.torture_light,
      ["@field"] = plt.torture_light,
      ["@module"] = plt.torture_light,
      ["@module.builtin"] = plt.torture_light,
      ["@namespace"] = plt.torture_light,
      ["@namespace.builtin"] = plt.torture_light,

      ["@punctuation.delimiter"] = plt.sadist_flesh,
      ["@punctuation.bracket"] = plt.sadist_flesh,
      ["@punctuation.special"] = plt.surgical_red,

      ["@tag"] = plt.desaad_venom,
      ["@tag.attribute"] = plt.chemical_burn,
      ["@tag.delimiter"] = plt.sadist_flesh,
      ["@tag.builtin"] = plt.desaad_venom,

      ["@markup.strong"] = { fg = plt.desaad_venom, bold = true },
      ["@markup.italic"] = { fg = plt.torture_light, italic = true },
      ["@markup.strikethrough"] = { fg = plt.suffering_core, strikethrough = true },
      ["@markup.underline"] = { fg = plt.infected_blood, underline = true },
      ["@markup.heading"] = plt.desaad_venom,
      ["@markup.heading.1"] = plt.desaad_venom,
      ["@markup.heading.2"] = plt.nerve_fire,
      ["@markup.heading.3"] = plt.infected_blood,
      ["@markup.heading.4"] = plt.chemical_burn,
      ["@markup.heading.5"] = plt.surgical_red,
      ["@markup.heading.6"] = plt.agony_glow,
      ["@markup.quote"] = plt.sadist_flesh,
      ["@markup.math"] = plt.nerve_fire,
      ["@markup.link"] = plt.surgical_red,
      ["@markup.link.label"] = plt.chemical_burn,
      ["@markup.link.url"] = plt.infected_blood,
      ["@markup.raw"] = plt.agony_glow,
      ["@markup.raw.block"] = plt.agony_glow,
      ["@markup.list"] = plt.desaad_venom,
      ["@markup.list.checked"] = plt.agony_glow,
      ["@markup.list.unchecked"] = plt.sadist_flesh,

      ["@diff.plus"] = plt.agony_glow,
      ["@diff.minus"] = plt.infected_blood,
      ["@diff.delta"] = plt.nerve_fire,

      ["@none"] = "none",
      ["@conceal"] = plt.agony_glow,
      ["@spell"] = plt.torture_light,
      ["@nospell"] = "none",

      ["@lsp.type.property.lua"] = plt.torture_light,
      ["@constructor.python"] = plt.desaad_venom,
      ["@constructor.javascript"] = plt.desaad_venom,
      ["@constructor.typescript"] = plt.desaad_venom,
      ["@namespace.rust"] = plt.torture_light,
      ["@type.qualifier.rust"] = plt.desaad_venom,
      ["@constant.macro.c"] = plt.chemical_burn,
      ["@constant.macro.cpp"] = plt.chemical_burn,
      ["@namespace.go"] = plt.torture_light,
      ["@property.css"] = plt.nerve_fire,
      ["@type.css"] = plt.desaad_venom,
      ["@label.json"] = plt.torture_light,
      ["@field.yaml"] = plt.venom_circuits,
      ["@property.toml"] = plt.venom_circuits,
      ["@function.builtin.bash"] = plt.nerve_fire,
      ["@string.regexp"] = plt.nerve_fire,
      ["@character.special.regex"] = plt.infected_blood,
    },

    lsp = {
      ["@lsp.type.class"] = plt.chemical_burn,
      ["@lsp.type.interface"] = plt.chemical_burn,
      ["@lsp.type.struct"] = plt.chemical_burn,
      ["@lsp.type.enum"] = plt.chemical_burn,
      ["@lsp.type.enumMember"] = plt.agony_glow,
      ["@lsp.type.property"] = plt.torture_light,
      ["@lsp.type.namespace"] = plt.torture_light,

      ["@lsp.type.macro"] = plt.chemical_burn,
      ["@lsp.type.decorator"] = plt.desaad_venom,

      ["@lsp.type.builtinType"] = plt.chemical_burn,
      ["@lsp.type.selfParameter"] = plt.desaad_venom,
      ["@lsp.type.typeParameter"] = plt.chemical_burn,

      ["@lsp.type.array"] = plt.chemical_burn,
      ["@lsp.type.object"] = plt.chemical_burn,
      ["@lsp.type.key"] = plt.torture_light,
      ["@lsp.type.null"] = plt.agony_glow,
      ["@lsp.type.enumConstant"] = plt.agony_glow,

      ["@lsp.type.event"] = plt.chemical_burn,
      ["@lsp.type.regexp"] = plt.nerve_fire,
      ["@lsp.type.unresolvedReference"] = plt.infected_blood,

      ["@lsp.mod.deprecated"] = { fg = plt.suffering_core, strikethrough = true },
      ["@lsp.mod.readonly"] = plt.agony_glow,
      ["@lsp.mod.async"] = plt.desaad_venom,
      ["@lsp.mod.static"] = plt.chemical_burn,
      ["@lsp.mod.abstract"] = plt.chemical_burn,
      ["@lsp.mod.defaultLibrary"] = plt.chemical_burn,
      ["@lsp.mod.documentation"] = plt.venom_circuits,
    },
  }
end

return {
  name = "Apokolips – Desaad",
  author = "PrismPunk.nvim",
  description = "The master of pain. Sickly venom green, infected crimson, and the pale light of dying screams. Your code will beg for mercy.",

  base16 = {
    base00 = palette.torture_void,
    base01 = palette.pain_depth,
    base02 = palette.agony_shadow,
    base03 = palette.suffering_core,
    base04 = palette.sadist_flesh,
    base05 = palette.venom_circuits,
    base06 = palette.torment_flesh,
    base07 = palette.torture_light,
    base08 = palette.infected_blood,
    base09 = palette.desaad_venom,
    base0A = palette.chemical_burn,
    base0B = palette.nerve_fire,
    base0C = palette.agony_glow,
    base0D = palette.torture_steel,
    base0E = palette.corpse_pale,
    base0F = palette.death_light,
  },

  palette = palette,
  get = M.get,
}
