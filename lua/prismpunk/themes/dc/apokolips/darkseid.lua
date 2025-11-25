local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.dc.apokolips.darkseid")

local M = {}

---@param opts table
---@param plt table
---@return table
M.get = function(opts, plt)
  return {
    modes = {
      normal = plt.omega_beam,
      insert = plt.beam_core,
      visual = plt.molten_red,
      replace = plt.blood_river,
      command = plt.omega_cyan,
    },

    ui = {
      fg = plt.imperial_silver,
      fg_dim = plt.omega_rock,
      fg_dimmer = plt.tyrant_gray,
      fg_dark = plt.darkseid_stone,
      fg_reverse = plt.apokolips_void,

      bg_m4 = plt.obsidian_core,
      bg_m3 = plt.firepit_glow,
      bg_m2 = plt.scorched_depth,
      bg_m1 = plt.apokolips_void,
      bg_dim = plt.apokolips_void,
      bg = plt.apokolips_void,
      bg_p1 = plt.scorched_depth,
      bg_p2 = plt.firepit_glow,
      bg_gutter = opts.gutter and plt.firepit_glow or "none",
      bg_cursorline = plt.firepit_glow,
      bg_cursorline_alt = plt.scorched_depth,
      bg_search = plt.molten_red,
      bg_visual = plt.blood_river,
      bg_statusline = plt.firepit_glow,

      border = plt.omega_beam,
      header1 = plt.omega_beam,
      header2 = plt.beam_core,
      special = plt.omega_cyan,
      nontext = plt.scorched_depth,
      whitespace = plt.obsidian_core,
      win_separator = plt.omega_beam,
      indent = plt.scorched_depth,
      indent_scope = plt.imperial_silver,
      picker = plt.blood_river,
      yank = plt.omega_beam,
      mark = plt.firepit_orange,
      scrollbar = plt.firepit_glow,

      tabline = {
        bg = plt.apokolips_void,
        fg_selected = plt.omega_beam,
        bg_selected = plt.firepit_glow,
        fg_inactive = plt.tyrant_gray,
        bg_inactive = plt.apokolips_void,
        fg_alternate = plt.lava_glow,
        bg_alternate = plt.apokolips_void,
        indicator = plt.beam_core,
      },

      pmenu = {
        fg = plt.imperial_silver,
        fg_sel = "none",
        fg_border = plt.firepit_glow,
        bg_border = plt.firepit_glow,
        bg = plt.firepit_glow,
        bg_sel = plt.scorched_depth,
        bg_sbar = plt.firepit_glow,
        bg_thumb = plt.omega_beam,
      },

      float = {
        fg = plt.imperial_silver,
        bg = plt.scorched_depth,
        fg_border = plt.firepit_glow,
        bg_border = plt.scorched_depth,
      },
    },

    accent = {
      accent1 = plt.omega_beam,
      accent2 = plt.beam_core,
      accent3 = plt.molten_red,
      accent4 = plt.omega_cyan,
      accent5 = plt.lava_glow,
      invert = plt.firepit_glow,
    },

    rainbow = {
      rainbow1 = plt.molten_red,
      rainbow2 = plt.blood_river,
      rainbow3 = plt.firepit_orange,
      rainbow4 = plt.lava_glow,
      rainbow5 = plt.omega_cyan,
      rainbow6 = plt.beam_core,
      rainbow7 = plt.omega_beam,
    },

    syn = {
      attribute = plt.imperial_silver,
      boolean = plt.omega_beam,
      comment = plt.tyrant_gray,
      constant = plt.lava_glow,
      deprecated = plt.firepit_glow,
      func = plt.beam_core,
      identifier = plt.imperial_silver,
      keyword = plt.omega_beam,
      method = plt.molten_red,
      number = plt.firepit_orange,
      operator = plt.blood_river,
      parameter = plt.omega_rock,
      preproc = plt.blood_river,
      punct = plt.tyrant_gray,
      regex = plt.omega_cyan,
      statement = plt.omega_beam,
      string = plt.lava_glow,
      symbol = plt.imperial_silver,
      type = plt.firepit_orange,
      variable = plt.imperial_silver,
      special = plt.beam_core,
      special2 = plt.blood_river,
      special3 = plt.omega_cyan,
    },

    vcs = { added = plt.lava_glow, removed = plt.blood_river, changed = plt.firepit_orange },
    diff = { add = plt.lava_glow, change = plt.molten_red, delete = plt.blood_river, text = plt.omega_cyan },
    diag = {
      ok = plt.omega_cyan,
      error = plt.blood_river,
      warning = plt.molten_red,
      info = plt.beam_core,
      hint = plt.lava_glow,
    },

    term = {
      black = plt.apokolips_void,
      red = plt.term_red,
      green = plt.term_green,
      yellow = plt.firepit_orange,
      blue = plt.term_blue,
      magenta = plt.omega_beam,
      cyan = plt.beam_core,
      white = plt.imperial_silver,

      black_bright = color(plt.apokolips_void):brighten(0.8):to_hex(),
      red_bright = color(plt.molten_red):brighten(0.2):to_hex(),
      green_bright = color(plt.firepit_orange):brighten(0.15):to_hex(),
      yellow_bright = "#ffaa44",
      blue_bright = color(plt.beam_core):brighten(0.2):to_hex(),
      magenta_bright = "#ff6688",
      cyan_bright = "#88ffff",
      white_bright = plt.imperial_silver,
      indexed1 = plt.blood_river,
      indexed2 = plt.lava_glow,
    },

    treesitter = {
      ["@comment"] = plt.tyrant_gray,
      ["@comment.documentation"] = plt.omega_rock,
      ["@comment.error"] = plt.blood_river,
      ["@comment.warning"] = plt.molten_red,
      ["@comment.todo"] = plt.omega_cyan,
      ["@comment.note"] = plt.beam_core,

      ["@constant"] = plt.lava_glow,
      ["@constant.builtin"] = plt.lava_glow,
      ["@constant.macro"] = plt.firepit_orange,

      ["@string"] = plt.lava_glow,
      ["@string.documentation"] = plt.lava_glow,
      ["@string.regex"] = plt.omega_cyan,
      ["@string.escape"] = plt.blood_river,
      ["@string.special"] = plt.beam_core,
      ["@string.special.symbol"] = plt.omega_beam,
      ["@string.special.url"] = plt.tyranny_blue,
      ["@string.special.path"] = plt.lava_glow,

      ["@character"] = plt.lava_glow,
      ["@character.special"] = plt.blood_river,

      ["@number"] = plt.firepit_orange,
      ["@number.float"] = plt.firepit_orange,

      ["@boolean"] = plt.omega_beam,

      ["@function"] = plt.beam_core,
      ["@function.builtin"] = plt.beam_core,
      ["@function.call"] = plt.beam_core,
      ["@function.macro"] = plt.omega_cyan,
      ["@function.method"] = plt.molten_red,
      ["@function.method.call"] = plt.molten_red,

      ["@constructor"] = plt.omega_beam,

      ["@parameter"] = plt.omega_rock,
      ["@parameter.builtin"] = plt.imperial_silver,

      ["@keyword"] = plt.omega_beam,
      ["@keyword.coroutine"] = plt.omega_cyan,
      ["@keyword.function"] = plt.omega_beam,
      ["@keyword.operator"] = plt.blood_river,
      ["@keyword.return"] = plt.omega_beam,
      ["@keyword.import"] = plt.tyranny_blue,
      ["@keyword.storage"] = plt.omega_beam,
      ["@keyword.repeat"] = plt.omega_beam,
      ["@keyword.conditional"] = plt.omega_beam,
      ["@keyword.exception"] = plt.blood_river,
      ["@keyword.directive"] = plt.firepit_orange,
      ["@keyword.directive.define"] = plt.firepit_orange,

      ["@conditional"] = plt.omega_beam,
      ["@conditional.ternary"] = plt.omega_beam,

      ["@repeat"] = plt.omega_beam,

      ["@label"] = plt.tyranny_blue,

      ["@operator"] = plt.blood_river,

      ["@exception"] = plt.blood_river,

      ["@variable"] = plt.imperial_silver,
      ["@variable.builtin"] = plt.omega_beam,
      ["@variable.parameter"] = plt.omega_rock,
      ["@variable.member"] = plt.imperial_silver,

      ["@type"] = plt.firepit_orange,
      ["@type.builtin"] = plt.firepit_orange,
      ["@type.definition"] = plt.firepit_orange,
      ["@type.qualifier"] = plt.omega_beam,

      ["@attribute"] = plt.imperial_silver,
      ["@attribute.builtin"] = plt.firepit_orange,

      ["@property"] = plt.imperial_silver,
      ["@field"] = plt.imperial_silver,
      ["@module"] = plt.imperial_silver,
      ["@module.builtin"] = plt.imperial_silver,
      ["@namespace"] = plt.imperial_silver,
      ["@namespace.builtin"] = plt.imperial_silver,

      ["@punctuation.delimiter"] = plt.tyrant_gray,
      ["@punctuation.bracket"] = plt.tyrant_gray,
      ["@punctuation.special"] = plt.blood_river,

      ["@tag"] = plt.omega_beam,
      ["@tag.attribute"] = plt.firepit_orange,
      ["@tag.delimiter"] = plt.tyrant_gray,
      ["@tag.builtin"] = plt.omega_beam,

      ["@markup.strong"] = { fg = plt.omega_beam, bold = true },
      ["@markup.italic"] = { fg = plt.imperial_silver, italic = true },
      ["@markup.strikethrough"] = { fg = plt.firepit_glow, strikethrough = true },
      ["@markup.underline"] = { fg = plt.blood_river, underline = true },
      ["@markup.heading"] = plt.omega_beam,
      ["@markup.heading.1"] = plt.omega_beam,
      ["@markup.heading.2"] = plt.beam_core,
      ["@markup.heading.3"] = plt.molten_red,
      ["@markup.heading.4"] = plt.firepit_orange,
      ["@markup.heading.5"] = plt.lava_glow,
      ["@markup.heading.6"] = plt.omega_cyan,
      ["@markup.quote"] = plt.tyrant_gray,
      ["@markup.math"] = plt.omega_cyan,
      ["@markup.link"] = plt.tyranny_blue,
      ["@markup.link.label"] = plt.firepit_orange,
      ["@markup.link.url"] = plt.beam_core,
      ["@markup.raw"] = plt.lava_glow,
      ["@markup.raw.block"] = plt.lava_glow,
      ["@markup.list"] = plt.omega_beam,
      ["@markup.list.checked"] = plt.lava_glow,
      ["@markup.list.unchecked"] = plt.tyrant_gray,

      ["@diff.plus"] = plt.lava_glow,
      ["@diff.minus"] = plt.blood_river,
      ["@diff.delta"] = plt.molten_red,

      ["@none"] = "none",
      ["@conceal"] = plt.omega_cyan,
      ["@spell"] = plt.imperial_silver,
      ["@nospell"] = "none",

      ["@lsp.type.property.lua"] = plt.imperial_silver,
      ["@constructor.python"] = plt.omega_beam,
      ["@constructor.javascript"] = plt.omega_beam,
      ["@constructor.typescript"] = plt.omega_beam,
      ["@namespace.rust"] = plt.imperial_silver,
      ["@type.qualifier.rust"] = plt.omega_beam,
      ["@constant.macro.c"] = plt.firepit_orange,
      ["@constant.macro.cpp"] = plt.firepit_orange,
      ["@namespace.go"] = plt.imperial_silver,
      ["@property.css"] = plt.tyranny_blue,
      ["@type.css"] = plt.omega_beam,
      ["@label.json"] = plt.imperial_silver,
      ["@field.yaml"] = plt.omega_rock,
      ["@property.toml"] = plt.omega_rock,
      ["@function.builtin.bash"] = plt.beam_core,
      ["@string.regexp"] = plt.omega_cyan,
      ["@character.special.regex"] = plt.blood_river,
    },

    lsp = {
      ["@lsp.type.class"] = plt.firepit_orange,
      ["@lsp.type.interface"] = plt.firepit_orange,
      ["@lsp.type.struct"] = plt.firepit_orange,
      ["@lsp.type.enum"] = plt.firepit_orange,
      ["@lsp.type.enumMember"] = plt.lava_glow,
      ["@lsp.type.property"] = plt.imperial_silver,
      ["@lsp.type.namespace"] = plt.imperial_silver,

      ["@lsp.type.macro"] = plt.firepit_orange,
      ["@lsp.type.decorator"] = plt.omega_beam,

      ["@lsp.type.builtinType"] = plt.firepit_orange,
      ["@lsp.type.selfParameter"] = plt.omega_beam,
      ["@lsp.type.typeParameter"] = plt.firepit_orange,

      ["@lsp.type.array"] = plt.firepit_orange,
      ["@lsp.type.object"] = plt.firepit_orange,
      ["@lsp.type.key"] = plt.imperial_silver,
      ["@lsp.type.null"] = plt.lava_glow,
      ["@lsp.type.enumConstant"] = plt.lava_glow,

      ["@lsp.type.event"] = plt.firepit_orange,
      ["@lsp.type.regexp"] = plt.omega_cyan,
      ["@lsp.type.unresolvedReference"] = plt.blood_river,

      ["@lsp.mod.deprecated"] = { fg = plt.firepit_glow, strikethrough = true },
      ["@lsp.mod.readonly"] = plt.lava_glow,
      ["@lsp.mod.async"] = plt.omega_beam,
      ["@lsp.mod.static"] = plt.firepit_orange,
      ["@lsp.mod.abstract"] = plt.firepit_orange,
      ["@lsp.mod.defaultLibrary"] = plt.firepit_orange,
      ["@lsp.mod.documentation"] = plt.omega_rock,
    },
  }
end

return {
  name = "Apokolips – Darkseid",
  author = "PrismPunk.nvim",
  description = "There is only one truth on Apokolips: Darkseid is. All else kneels before the Omega.",

  base16 = {
    base00 = palette.apokolips_void,
    base01 = palette.scorched_depth,
    base02 = palette.firepit_glow,
    base03 = palette.obsidian_core,
    base04 = palette.tyrant_gray,
    base05 = palette.omega_rock,
    base06 = palette.darkseid_stone,
    base07 = palette.imperial_silver,
    base08 = palette.blood_river,
    base09 = palette.firepit_orange,
    base0A = palette.lava_glow,
    base0B = palette.molten_red,
    base0C = palette.omega_cyan,
    base0D = palette.beam_core,
    base0E = palette.omega_beam,
    base0F = palette.molten_red,
  },

  palette = palette,
  get = M.get,
}
