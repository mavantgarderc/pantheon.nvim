local palette = require("prismpunk.palettes.dc.apokolips.yugakhan")

local M = {}

---@param opts table
---@param plt table
---@return table
M.get = function(opts, plt)
  return {
    modes = {
      normal = plt.yuga_teal,
      insert = plt.wall_glow,
      visual = plt.anti_life_teal,
      replace = plt.cosmic_cyan,
      command = plt.dead_silver,
    },

    ui = {
      fg = plt.source_frost,
      fg_dim = plt.frozen_god,
      fg_dimmer = plt.primordial_skin,
      fg_dark = plt.titan_flesh,
      fg_reverse = plt.absolute_void,

      bg_m4 = plt.entropy_core,
      bg_m3 = plt.wall_depth,
      bg_m2 = plt.source_scar,
      bg_m1 = plt.absolute_void,
      bg_dim = plt.absolute_void,
      bg = plt.absolute_void,
      bg_p1 = plt.source_scar,
      bg_p2 = plt.wall_depth,
      bg_gutter = opts.gutter and plt.wall_depth or "none",
      bg_cursorline = plt.wall_depth,
      bg_cursorline_alt = plt.source_scar,
      bg_search = plt.yuga_teal,
      bg_visual = plt.anti_life_teal,
      bg_statusline = plt.wall_depth,

      border = plt.yuga_teal,
      header1 = plt.yuga_teal,
      header2 = plt.wall_glow,
      special = plt.final_breath,
      nontext = plt.source_scar,
      whitespace = plt.entropy_core,
      win_separator = plt.yuga_teal,
      indent = plt.source_scar,
      indent_scope = plt.source_frost,
      picker = plt.cosmic_cyan,
      yank = plt.yuga_teal,
      mark = plt.void_ice,
      scrollbar = plt.wall_depth,

      tabline = {
        bg = plt.absolute_void,
        fg_selected = plt.yuga_teal,
        bg_selected = plt.wall_depth,
        fg_inactive = plt.elder_stone,
        bg_inactive = plt.absolute_void,
        fg_alternate = plt.final_breath,
        bg_alternate = plt.absolute_void,
        indicator = plt.wall_glow,
      },

      pmenu = {
        fg = plt.source_frost,
        fg_sel = "none",
        fg_border = plt.wall_depth,
        bg_border = plt.wall_depth,
        bg = plt.wall_depth,
        bg_sel = plt.source_scar,
        bg_sbar = plt.wall_depth,
        bg_thumb = plt.yuga_teal,
      },

      float = {
        fg = plt.source_frost,
        bg = plt.source_scar,
        fg_border = plt.wall_depth,
        bg_border = plt.source_scar,
      },
    },

    accent = {
      accent1 = plt.yuga_teal,
      accent2 = plt.wall_glow,
      accent3 = plt.anti_life_teal,
      accent4 = plt.cosmic_cyan,
      accent5 = plt.final_breath,
      invert = plt.wall_depth,
    },

    rainbow = {
      rainbow1 = plt.yuga_teal,
      rainbow2 = plt.anti_life_teal,
      rainbow3 = plt.wall_glow,
      rainbow4 = plt.cosmic_cyan,
      rainbow5 = plt.final_breath,
      rainbow6 = plt.dead_silver,
      rainbow7 = plt.source_frost,
    },

    syn = {
      attribute = plt.source_frost,
      boolean = plt.dead_silver,
      comment = plt.elder_stone,
      constant = plt.final_breath,
      deprecated = plt.entropy_core,
      func = plt.wall_glow,
      identifier = plt.source_frost,
      keyword = plt.yuga_teal,
      method = plt.anti_life_teal,
      number = plt.cosmic_cyan,
      operator = plt.dead_silver,
      parameter = plt.primordial_skin,
      preproc = plt.dead_silver,
      punct = plt.elder_stone,
      regex = plt.wall_glow,
      statement = plt.yuga_teal,
      string = plt.final_breath,
      symbol = plt.source_frost,
      type = plt.cosmic_cyan,
      variable = plt.source_frost,
      special = plt.wall_glow,
      special2 = plt.anti_life_teal,
      special3 = plt.dead_silver,
    },

    vcs = { added = plt.final_breath, removed = plt.yuga_teal, changed = plt.cosmic_cyan },
    diff = { add = plt.final_breath, change = plt.wall_glow, delete = plt.yuga_teal, text = plt.anti_life_teal },
    diag = {
      ok = plt.final_breath,
      error = plt.yuga_teal,
      warning = plt.wall_glow,
      info = plt.dead_silver,
      hint = plt.cosmic_cyan,
    },

    term = {
      black = plt.absolute_void,
      red = plt.term_red,
      green = plt.term_green,
      yellow = plt.term_yellow,
      blue = plt.term_blue,
      magenta = plt.yuga_teal,
      cyan = plt.final_breath,
      white = plt.source_frost,

      black_bright = "#222222",
      red_bright = "#ff4488",
      green_bright = "#44ffee",
      yellow_bright = "#cceeff",
      blue_bright = "#88ffff",
      magenta_bright = "#66ffee",
      cyan_bright = "#bbffff",
      white_bright = plt.source_frost,
      indexed1 = plt.yuga_teal,
      indexed2 = plt.final_breath,
    },

    treesitter = {
      ["@comment"] = plt.elder_stone,
      ["@comment.documentation"] = plt.primordial_skin,
      ["@comment.error"] = plt.yuga_teal,
      ["@comment.warning"] = plt.wall_glow,
      ["@comment.todo"] = plt.final_breath,
      ["@comment.note"] = plt.dead_silver,

      ["@constant"] = plt.final_breath,
      ["@constant.builtin"] = plt.final_breath,
      ["@constant.macro"] = plt.cosmic_cyan,

      ["@string"] = plt.final_breath,
      ["@string.documentation"] = plt.final_breath,
      ["@string.regex"] = plt.wall_glow,
      ["@string.escape"] = plt.yuga_teal,
      ["@string.special"] = plt.dead_silver,
      ["@string.special.symbol"] = plt.yuga_teal,
      ["@string.special.url"] = plt.anti_life_teal,
      ["@string.special.path"] = plt.final_breath,

      ["@character"] = plt.final_breath,
      ["@character.special"] = plt.yuga_teal,

      ["@number"] = plt.cosmic_cyan,
      ["@number.float"] = plt.cosmic_cyan,

      ["@boolean"] = plt.dead_silver,

      ["@function"] = plt.wall_glow,
      ["@function.builtin"] = plt.wall_glow,
      ["@function.call"] = plt.wall_glow,
      ["@function.macro"] = plt.final_breath,
      ["@function.method"] = plt.anti_life_teal,
      ["@function.method.call"] = plt.anti_life_teal,

      ["@constructor"] = plt.yuga_teal,

      ["@parameter"] = plt.primordial_skin,
      ["@parameter.builtin"] = plt.source_frost,

      ["@keyword"] = plt.yuga_teal,
      ["@keyword.coroutine"] = plt.dead_silver,
      ["@keyword.function"] = plt.yuga_teal,
      ["@keyword.operator"] = plt.dead_silver,
      ["@keyword.return"] = plt.yuga_teal,
      ["@keyword.import"] = plt.wall_glow,
      ["@keyword.storage"] = plt.yuga_teal,
      ["@keyword.repeat"] = plt.yuga_teal,
      ["@keyword.conditional"] = plt.yuga_teal,
      ["@keyword.exception"] = plt.yuga_teal,
      ["@keyword.directive"] = plt.cosmic_cyan,
      ["@keyword.directive.define"] = plt.cosmic_cyan,

      ["@conditional"] = plt.yuga_teal,
      ["@conditional.ternary"] = plt.yuga_teal,

      ["@repeat"] = plt.yuga_teal,

      ["@label"] = plt.wall_glow,

      ["@operator"] = plt.dead_silver,

      ["@exception"] = plt.yuga_teal,

      ["@variable"] = plt.source_frost,
      ["@variable.builtin"] = plt.yuga_teal,
      ["@variable.parameter"] = plt.primordial_skin,
      ["@variable.member"] = plt.source_frost,

      ["@type"] = plt.cosmic_cyan,
      ["@type.builtin"] = plt.cosmic_cyan,
      ["@type.definition"] = plt.cosmic_cyan,
      ["@type.qualifier"] = plt.yuga_teal,

      ["@attribute"] = plt.source_frost,
      ["@attribute.builtin"] = plt.cosmic_cyan,

      ["@property"] = plt.source_frost,
      ["@field"] = plt.source_frost,
      ["@module"] = plt.source_frost,
      ["@module.builtin"] = plt.source_frost,
      ["@namespace"] = plt.source_frost,
      ["@namespace.builtin"] = plt.source_frost,

      ["@punctuation.delimiter"] = plt.elder_stone,
      ["@punctuation.bracket"] = plt.elder_stone,
      ["@punctuation.special"] = plt.dead_silver,

      ["@tag"] = plt.yuga_teal,
      ["@tag.attribute"] = plt.cosmic_cyan,
      ["@tag.delimiter"] = plt.elder_stone,
      ["@tag.builtin"] = plt.yuga_teal,

      ["@markup.strong"] = { fg = plt.yuga_teal, bold = true },
      ["@markup.italic"] = { fg = plt.source_frost, italic = true },
      ["@markup.strikethrough"] = { fg = plt.entropy_core, strikethrough = true },
      ["@markup.underline"] = { fg = plt.yuga_teal, underline = true },
      ["@markup.heading"] = plt.yuga_teal,
      ["@markup.heading.1"] = plt.yuga_teal,
      ["@markup.heading.2"] = plt.wall_glow,
      ["@markup.heading.3"] = plt.anti_life_teal,
      ["@markup.heading.4"] = plt.cosmic_cyan,
      ["@markup.heading.5"] = plt.final_breath,
      ["@markup.heading.6"] = plt.dead_silver,
      ["@markup.quote"] = plt.elder_stone,
      ["@markup.math"] = plt.final_breath,
      ["@markup.link"] = plt.wall_glow,
      ["@markup.link.label"] = plt.cosmic_cyan,
      ["@markup.link.url"] = plt.dead_silver,
      ["@markup.raw"] = plt.final_breath,
      ["@markup.raw.block"] = plt.final_breath,
      ["@markup.list"] = plt.yuga_teal,
      ["@markup.list.checked"] = plt.final_breath,
      ["@markup.list.unchecked"] = plt.elder_stone,

      ["@diff.plus"] = plt.final_breath,
      ["@diff.minus"] = plt.yuga_teal,
      ["@diff.delta"] = plt.anti_life_teal,

      ["@none"] = "none",
      ["@conceal"] = plt.final_breath,
      ["@spell"] = plt.source_frost,
      ["@nospell"] = "none",

      ["@lsp.type.property.lua"] = plt.source_frost,
      ["@constructor.python"] = plt.yuga_teal,
      ["@constructor.javascript"] = plt.yuga_teal,
      ["@constructor.typescript"] = plt.yuga_teal,
      ["@namespace.rust"] = plt.source_frost,
      ["@type.qualifier.rust"] = plt.yuga_teal,
      ["@constant.macro.c"] = plt.cosmic_cyan,
      ["@constant.macro.cpp"] = plt.cosmic_cyan,
      ["@namespace.go"] = plt.source_frost,
      ["@property.css"] = plt.wall_glow,
      ["@type.css"] = plt.yuga_teal,
      ["@label.json"] = plt.source_frost,
      ["@field.yaml"] = plt.primordial_skin,
      ["@property.toml"] = plt.primordial_skin,
      ["@function.builtin.bash"] = plt.wall_glow,
      ["@string.regexp"] = plt.final_breath,
      ["@character.special.regex"] = plt.yuga_teal,
    },

    lsp = {
      ["@lsp.type.class"] = plt.cosmic_cyan,
      ["@lsp.type.interface"] = plt.cosmic_cyan,
      ["@lsp.type.struct"] = plt.cosmic_cyan,
      ["@lsp.type.enum"] = plt.cosmic_cyan,
      ["@lsp.type.enumMember"] = plt.final_breath,
      ["@lsp.type.property"] = plt.source_frost,
      ["@lsp.type.namespace"] = plt.source_frost,

      ["@lsp.type.macro"] = plt.cosmic_cyan,
      ["@lsp.type.decorator"] = plt.yuga_teal,

      ["@lsp.type.builtinType"] = plt.cosmic_cyan,
      ["@lsp.type.selfParameter"] = plt.yuga_teal,
      ["@lsp.type.typeParameter"] = plt.cosmic_cyan,

      ["@lsp.type.array"] = plt.cosmic_cyan,
      ["@lsp.type.object"] = plt.cosmic_cyan,
      ["@lsp.type.key"] = plt.source_frost,
      ["@lsp.type.null"] = plt.final_breath,
      ["@lsp.type.enumConstant"] = plt.final_breath,

      ["@lsp.type.event"] = plt.cosmic_cyan,
      ["@lsp.type.regexp"] = plt.final_breath,
      ["@lsp.type.unresolvedReference"] = plt.yuga_teal,

      ["@lsp.mod.deprecated"] = { fg = plt.entropy_core, strikethrough = true },
      ["@lsp.mod.readonly"] = plt.final_breath,
      ["@lsp.mod.async"] = plt.yuga_teal,
      ["@lsp.mod.static"] = plt.cosmic_cyan,
      ["@lsp.mod.abstract"] = plt.cosmic_cyan,
      ["@lsp.mod.defaultLibrary"] = plt.cosmic_cyan,
      ["@lsp.mod.documentation"] = plt.primordial_skin,
    },
  }
end

return {
  name = "Apokolips – Yuga Khan",
  author = "PrismPunk.nvim",
  description = "The First. The Last."
    .. "The one who imprisoned the Old Gods and broke the Source itself. "
    .. "Cold cosmic teal and absolute black. There is no warmth here — only the end.",

  base16 = {
    base00 = palette.absolute_void,
    base01 = palette.source_scar,
    base02 = palette.wall_depth,
    base03 = palette.entropy_core,
    base04 = palette.elder_stone,
    base05 = palette.primordial_skin,
    base06 = palette.titan_flesh,
    base07 = palette.source_frost,
    base08 = palette.yuga_teal,
    base09 = palette.anti_life_teal,
    base0A = palette.cosmic_cyan,
    base0B = palette.wall_glow,
    base0C = palette.final_breath,
    base0D = palette.dead_silver,
    base0E = palette.void_ice,
    base0F = palette.yuga_teal,
  },

  palette = palette,
  get = M.get,
}
