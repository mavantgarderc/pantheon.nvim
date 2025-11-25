local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.dc.apokolips.pythia")

local M = {}

---@param opts table
---@param plt table
---@return table
M.get = function(opts, plt)
  return {
    modes = {
      normal = plt.pythia_violet,
      insert = plt.indigo_omega,
      visual = plt.fate_magenta,
      replace = plt.omega_prophecy,
      command = plt.mindfire,
    },

    ui = {
      fg = plt.pale_oracle,
      fg_dim = plt.oracle_flesh,
      fg_dimmer = plt.broken_vessel,
      fg_dark = plt.corpse_skin,
      fg_reverse = plt.oracle_void,

      bg_m4 = plt.prophecy_core,
      bg_m3 = plt.fate_depth,
      bg_m2 = plt.deep_omega,
      bg_m1 = plt.oracle_void,
      bg_dim = plt.oracle_void,
      bg = plt.oracle_void,
      bg_p1 = plt.deep_omega,
      bg_p2 = plt.fate_depth,
      bg_gutter = opts.gutter and plt.fate_depth or "none",
      bg_cursorline = plt.fate_depth,
      bg_cursorline_alt = plt.deep_omega,
      bg_search = plt.omega_prophecy,
      bg_visual = plt.fate_magenta,
      bg_statusline = plt.fate_depth,

      border = plt.pythia_violet,
      header1 = plt.pythia_violet,
      header2 = plt.indigo_omega,
      special = plt.seer_glow,
      nontext = plt.deep_omega,
      whitespace = plt.prophecy_core,
      win_separator = plt.pythia_violet,
      indent = plt.deep_omega,
      indent_scope = plt.pale_oracle,
      picker = plt.fate_magenta,
      yank = plt.omega_prophecy,
      mark = plt.ghost_violet,
      scrollbar = plt.fate_depth,

      tabline = {
        bg = plt.oracle_void,
        fg_selected = plt.pythia_violet,
        bg_selected = plt.fate_depth,
        fg_inactive = plt.broken_vessel,
        bg_inactive = plt.oracle_void,
        fg_alternate = plt.seer_glow,
        bg_alternate = plt.oracle_void,
        indicator = plt.indigo_omega,
      },

      pmenu = {
        fg = plt.pale_oracle,
        fg_sel = "none",
        fg_border = plt.fate_depth,
        bg_border = plt.fate_depth,
        bg = plt.fate_depth,
        bg_sel = plt.deep_omega,
        bg_sbar = plt.fate_depth,
        bg_thumb = plt.pythia_violet,
      },

      float = {
        fg = plt.pale_oracle,
        bg = plt.deep_omega,
        fg_border = plt.fate_depth,
        bg_border = plt.deep_omega,
      },
    },

    accent = {
      accent1 = plt.pythia_violet,
      accent2 = plt.indigo_omega,
      accent3 = plt.fate_magenta,
      accent4 = plt.omega_prophecy,
      accent5 = plt.mindfire,
      invert = plt.fate_depth,
    },

    rainbow = {
      rainbow1 = plt.pythia_violet,
      rainbow2 = plt.omega_prophecy,
      rainbow3 = plt.fate_magenta,
      rainbow4 = plt.indigo_omega,
      rainbow5 = plt.psychic_bleed,
      rainbow6 = plt.mindfire,
      rainbow7 = plt.seer_glow,
    },

    syn = {
      attribute = plt.pale_oracle,
      boolean = plt.indigo_omega,
      comment = plt.broken_vessel,
      constant = plt.dead_star,
      deprecated = plt.prophecy_core,
      func = plt.psychic_bleed,
      identifier = plt.pale_oracle,
      keyword = plt.pythia_violet,
      method = plt.fate_magenta,
      number = plt.seer_glow,
      operator = plt.omega_prophecy,
      parameter = plt.oracle_flesh,
      preproc = plt.omega_prophecy,
      punct = plt.broken_vessel,
      regex = plt.mindfire,
      statement = plt.pythia_violet,
      string = plt.dead_star,
      symbol = plt.pale_oracle,
      type = plt.seer_glow,
      variable = plt.pale_oracle,
      special = plt.psychic_bleed,
      special2 = plt.omega_prophecy,
      special3 = plt.mindfire,
    },

    vcs = { added = plt.dead_star, removed = plt.fate_magenta, changed = plt.seer_glow },
    diff = { add = plt.dead_star, change = plt.psychic_bleed, delete = plt.fate_magenta, text = plt.indigo_omega },
    diag = {
      ok = plt.seer_glow,
      error = plt.fate_magenta,
      warning = plt.omega_prophecy,
      info = plt.psychic_bleed,
      hint = plt.dead_star,
    },

    term = {
      black = plt.oracle_void,
      red = plt.term_red,
      green = plt.term_green,
      yellow = plt.term_yellow,
      blue = plt.term_blue,
      magenta = plt.pythia_violet,
      cyan = plt.mindfire,
      white = plt.pale_oracle,

      black_bright = color(plt.oracle_void):brighten(0.8):to_hex(),
      red_bright = "#ff66aa",
      green_bright = "#aaffaa",
      yellow_bright = "#ffccff",
      blue_bright = "#cc88ff",
      magenta_bright = "#ff88ff",
      cyan_bright = "#ffccff",
      white_bright = plt.pale_oracle,
      indexed1 = plt.fate_magenta,
      indexed2 = plt.seer_glow,
    },

    treesitter = {
      ["@comment"] = plt.broken_vessel,
      ["@comment.documentation"] = plt.oracle_flesh,
      ["@comment.error"] = plt.fate_magenta,
      ["@comment.warning"] = plt.omega_prophecy,
      ["@comment.todo"] = plt.seer_glow,
      ["@comment.note"] = plt.mindfire,

      ["@constant"] = plt.dead_star,
      ["@constant.builtin"] = plt.dead_star,
      ["@constant.macro"] = plt.seer_glow,

      ["@string"] = plt.dead_star,
      ["@string.documentation"] = plt.dead_star,
      ["@string.regex"] = plt.mindfire,
      ["@string.escape"] = plt.omega_prophecy,
      ["@string.special"] = plt.seer_glow,
      ["@string.special.symbol"] = plt.pythia_violet,
      ["@string.special.url"] = plt.psychic_bleed,
      ["@string.special.path"] = plt.dead_star,

      ["@character"] = plt.dead_star,
      ["@character.special"] = plt.omega_prophecy,

      ["@number"] = plt.seer_glow,
      ["@number.float"] = plt.seer_glow,

      ["@boolean"] = plt.indigo_omega,

      ["@function"] = plt.psychic_bleed,
      ["@function.builtin"] = plt.psychic_bleed,
      ["@function.call"] = plt.psychic_bleed,
      ["@function.macro"] = plt.mindfire,
      ["@function.method"] = plt.fate_magenta,
      ["@function.method.call"] = plt.fate_magenta,

      ["@constructor"] = plt.pythia_violet,

      ["@parameter"] = plt.oracle_flesh,
      ["@parameter.builtin"] = plt.pale_oracle,

      ["@keyword"] = plt.pythia_violet,
      ["@keyword.coroutine"] = plt.indigo_omega,
      ["@keyword.function"] = plt.pythia_violet,
      ["@keyword.operator"] = plt.omega_prophecy,
      ["@keyword.return"] = plt.pythia_violet,
      ["@keyword.import"] = plt.psychic_bleed,
      ["@keyword.storage"] = plt.pythia_violet,
      ["@keyword.repeat"] = plt.pythia_violet,
      ["@keyword.conditional"] = plt.pythia_violet,
      ["@keyword.exception"] = plt.fate_magenta,
      ["@keyword.directive"] = plt.seer_glow,
      ["@keyword.directive.define"] = plt.seer_glow,

      ["@conditional"] = plt.pythia_violet,
      ["@conditional.ternary"] = plt.pythia_violet,

      ["@repeat"] = plt.pythia_violet,

      ["@label"] = plt.psychic_bleed,

      ["@operator"] = plt.omega_prophecy,

      ["@exception"] = plt.fate_magenta,

      ["@variable"] = plt.pale_oracle,
      ["@variable.builtin"] = plt.pythia_violet,
      ["@variable.parameter"] = plt.oracle_flesh,
      ["@variable.member"] = plt.pale_oracle,

      ["@type"] = plt.seer_glow,
      ["@type.builtin"] = plt.seer_glow,
      ["@type.definition"] = plt.seer_glow,
      ["@type.qualifier"] = plt.pythia_violet,

      ["@attribute"] = plt.pale_oracle,
      ["@attribute.builtin"] = plt.seer_glow,

      ["@property"] = plt.pale_oracle,
      ["@field"] = plt.pale_oracle,
      ["@module"] = plt.pale_oracle,
      ["@module.builtin"] = plt.pale_oracle,
      ["@namespace"] = plt.pale_oracle,
      ["@namespace.builtin"] = plt.pale_oracle,

      ["@punctuation.delimiter"] = plt.broken_vessel,
      ["@punctuation.bracket"] = plt.broken_vessel,
      ["@punctuation.special"] = plt.omega_prophecy,

      ["@tag"] = plt.pythia_violet,
      ["@tag.attribute"] = plt.seer_glow,
      ["@tag.delimiter"] = plt.broken_vessel,
      ["@tag.builtin"] = plt.pythia_violet,

      ["@markup.strong"] = { fg = plt.pythia_violet, bold = true },
      ["@markup.italic"] = { fg = plt.pale_oracle, italic = true },
      ["@markup.strikethrough"] = { fg = plt.prophecy_core, strikethrough = true },
      ["@markup.underline"] = { fg = plt.omega_prophecy, underline = true },
      ["@markup.heading"] = plt.pythia_violet,
      ["@markup.heading.1"] = plt.pythia_violet,
      ["@markup.heading.2"] = plt.indigo_omega,
      ["@markup.heading.3"] = plt.fate_magenta,
      ["@markup.heading.4"] = plt.omega_prophecy,
      ["@markup.heading.5"] = plt.mindfire,
      ["@markup.heading.6"] = plt.seer_glow,
      ["@markup.quote"] = plt.broken_vessel,
      ["@markup.math"] = plt.mindfire,
      ["@markup.link"] = plt.psychic_bleed,
      ["@markup.link.label"] = plt.seer_glow,
      ["@markup.link.url"] = plt.indigo_omega,
      ["@markup.raw"] = plt.dead_star,
      ["@markup.raw.block"] = plt.dead_star,
      ["@markup.list"] = plt.pythia_violet,
      ["@markup.list.checked"] = plt.dead_star,
      ["@markup.list.unchecked"] = plt.broken_vessel,

      ["@diff.plus"] = plt.dead_star,
      ["@diff.minus"] = plt.fate_magenta,
      ["@diff.delta"] = plt.psychic_bleed,

      ["@none"] = "none",
      ["@conceal"] = plt.mindfire,
      ["@spell"] = plt.pale_oracle,
      ["@nospell"] = "none",

      ["@lsp.type.property.lua"] = plt.pale_oracle,
      ["@constructor.python"] = plt.pythia_violet,
      ["@constructor.javascript"] = plt.pythia_violet,
      ["@constructor.typescript"] = plt.pythia_violet,
      ["@namespace.rust"] = plt.pale_oracle,
      ["@type.qualifier.rust"] = plt.pythia_violet,
      ["@constant.macro.c"] = plt.seer_glow,
      ["@constant.macro.cpp"] = plt.seer_glow,
      ["@namespace.go"] = plt.pale_oracle,
      ["@property.css"] = plt.psychic_bleed,
      ["@type.css"] = plt.pythia_violet,
      ["@label.json"] = plt.pale_oracle,
      ["@field.yaml"] = plt.oracle_flesh,
      ["@property.toml"] = plt.oracle_flesh,
      ["@function.builtin.bash"] = plt.psychic_bleed,
      ["@string.regexp"] = plt.mindfire,
      ["@character.special.regex"] = plt.omega_prophecy,
    },

    lsp = {
      ["@lsp.type.class"] = plt.seer_glow,
      ["@lsp.type.interface"] = plt.seer_glow,
      ["@lsp.type.struct"] = plt.seer_glow,
      ["@lsp.type.enum"] = plt.seer_glow,
      ["@lsp.type.enumMember"] = plt.dead_star,
      ["@lsp.type.property"] = plt.pale_oracle,
      ["@lsp.type.namespace"] = plt.pale_oracle,

      ["@lsp.type.macro"] = plt.seer_glow,
      ["@lsp.type.decorator"] = plt.pythia_violet,

      ["@lsp.type.builtinType"] = plt.seer_glow,
      ["@lsp.type.selfParameter"] = plt.pythia_violet,
      ["@lsp.type.typeParameter"] = plt.seer_glow,

      ["@lsp.type.array"] = plt.seer_glow,
      ["@lsp.type.object"] = plt.seer_glow,
      ["@lsp.type.key"] = plt.pale_oracle,
      ["@lsp.type.null"] = plt.dead_star,
      ["@lsp.type.enumConstant"] = plt.dead_star,

      ["@lsp.type.event"] = plt.seer_glow,
      ["@lsp.type.regexp"] = plt.mindfire,
      ["@lsp.type.unresolvedReference"] = plt.fate_magenta,

      ["@lsp.mod.deprecated"] = { fg = plt.prophecy_core, strikethrough = true },
      ["@lsp.mod.readonly"] = plt.dead_star,
      ["@lsp.mod.async"] = plt.pythia_violet,
      ["@lsp.mod.static"] = plt.seer_glow,
      ["@lsp.mod.abstract"] = plt.seer_glow,
      ["@lsp.mod.defaultLibrary"] = plt.seer_glow,
      ["@lsp.mod.documentation"] = plt.oracle_flesh,
    },
  }
end

return {
  name = "Apokolips – Pythia",
  author = "PrismPunk.nvim",
  description = "The broken oracle who sees every future except her own. Violet fire in dying eyes. The voice of inevitable doom.",

  base16 = {
    base00 = palette.oracle_void,
    base01 = palette.deep_omega,
    base02 = palette.fate_depth,
    base03 = palette.prophecy_core,
    base04 = palette.broken_vessel,
    base05 = palette.oracle_flesh,
    base06 = palette.corpse_skin,
    base07 = palette.pale_oracle,
    base08 = palette.fate_magenta,
    base09 = palette.indigo_omega,
    base0A = palette.mindfire,
    base0B = palette.pythia_violet,
    base0C = palette.seer_glow,
    base0D = palette.psychic_bleed,
    base0E = palette.omega_prophecy,
    base0F = palette.dead_star,
  },

  palette = palette,
  get = M.get,
}
