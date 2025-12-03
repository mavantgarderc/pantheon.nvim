local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.dc.apokolips.kalibak")

local M = {}

---@param opts table
---@param plt table
---@return table
M.get = function(opts, plt)
  return {
    modes = {
      normal = plt.kalibak_toxin,
      insert = plt.meltdown_yellow,
      visual = plt.beta_overcharge,
      replace = plt.toxic_sun,
      command = plt.plasma_leak,
    },

    ui = {
      fg = plt.savage_jade,
      fg_dim = plt.parademon_skin,
      fg_dimmer = plt.toxic_scale,
      fg_dark = plt.beast_flesh,
      fg_reverse = plt.waste_void,

      bg_m4 = plt.irradiated_core,
      bg_m3 = plt.firepit_toxic,
      bg_m2 = plt.sludge_depth,
      bg_m1 = plt.waste_void,
      bg_dim = plt.waste_void,
      bg = plt.waste_void,
      bg_p1 = plt.sludge_depth,
      bg_p2 = plt.firepit_toxic,
      bg_gutter = opts.gutter and plt.firepit_toxic or "none",
      bg_cursorline = plt.firepit_toxic,
      bg_cursorline_alt = plt.sludge_depth,
      bg_search = plt.meltdown_yellow,
      bg_visual = plt.radiation_glow,
      bg_statusline = plt.firepit_toxic,

      border = plt.kalibak_toxin,
      header1 = plt.meltdown_yellow,
      header2 = plt.kalibak_toxin,
      special = plt.plasma_leak,
      nontext = plt.sludge_depth,
      whitespace = plt.irradiated_core,
      win_separator = plt.kalibak_toxin,
      indent = plt.sludge_depth,
      indent_scope = plt.savage_jade,
      picker = plt.toxic_sun,
      yank = plt.meltdown_yellow,
      mark = plt.bile_yellow,
      scrollbar = plt.firepit_toxic,

      tabline = {
        bg = plt.waste_void,
        fg_selected = plt.meltdown_yellow,
        bg_selected = plt.firepit_toxic,
        fg_inactive = plt.toxic_scale,
        bg_inactive = plt.waste_void,
        fg_alternate = plt.plasma_leak,
        bg_alternate = plt.waste_void,
        indicator = plt.beta_overcharge,
      },

      pmenu = {
        fg = plt.savage_jade,
        fg_sel = "none",
        fg_border = plt.firepit_toxic,
        bg_border = plt.firepit_toxic,
        bg = plt.firepit_toxic,
        bg_sel = plt.sludge_depth,
        bg_sbar = plt.firepit_toxic,
        bg_thumb = plt.meltdown_yellow,
      },

      float = {
        fg = plt.savage_jade,
        bg = plt.sludge_depth,
        fg_border = plt.firepit_toxic,
        bg_border = plt.sludge_depth,
      },
    },

    accent = {
      accent1 = plt.meltdown_yellow,
      accent2 = plt.kalibak_toxin,
      accent3 = plt.beta_overcharge,
      accent4 = plt.toxic_sun,
      accent5 = plt.radiation_glow,
      invert = plt.firepit_toxic,
    },

    rainbow = {
      rainbow1 = plt.meltdown_yellow,
      rainbow2 = plt.kalibak_toxin,
      rainbow3 = plt.toxic_sun,
      rainbow4 = plt.beta_overcharge,
      rainbow5 = plt.venom_rage,
      rainbow6 = plt.plasma_leak,
      rainbow7 = plt.bile_yellow,
    },

    syn = {
      attribute = plt.savage_jade,
      boolean = plt.meltdown_yellow,
      comment = plt.toxic_scale,
      constant = plt.bile_yellow,
      deprecated = plt.firepit_toxic,
      func = plt.beta_overcharge,
      identifier = plt.savage_jade,
      keyword = plt.kalibak_toxin,
      method = plt.toxic_sun,
      number = plt.radiation_glow,
      operator = plt.meltdown_yellow,
      parameter = plt.parademon_skin,
      preproc = plt.meltdown_yellow,
      punct = plt.toxic_scale,
      regex = plt.plasma_leak,
      statement = plt.kalibak_toxin,
      string = plt.bile_yellow,
      symbol = plt.savage_jade,
      type = plt.radiation_glow,
      variable = plt.savage_jade,
      special = plt.beta_overcharge,
      special2 = plt.meltdown_yellow,
      special3 = plt.plasma_leak,
    },

    vcs = { added = plt.bile_yellow, removed = plt.meltdown_yellow, changed = plt.radiation_glow },
    diff = { add = plt.bile_yellow, change = plt.toxic_sun, delete = plt.meltdown_yellow, text = plt.beta_overcharge },
    diag = {
      ok = plt.plasma_leak,
      error = plt.meltdown_yellow,
      warning = plt.kalibak_toxin,
      info = plt.beta_overcharge,
      hint = plt.bile_yellow,
    },

    term = {
      black = plt.waste_void,
      red = plt.term_red,
      green = plt.term_green,
      yellow = plt.meltdown_yellow,
      blue = plt.term_blue,
      magenta = plt.kalibak_toxin,
      cyan = plt.plasma_leak,
      white = plt.savage_jade,

      black_bright = color(plt.waste_void):brighten(0.8):to_hex(),
      red_bright = "#ff6688",
      green_bright = "#aaff44",
      yellow_bright = "#ffff88",
      blue_bright = "#ccffee",
      magenta_bright = "#88ffaa",
      cyan_bright = "#ddffbb",
      white_bright = plt.savage_jade,
      indexed1 = plt.meltdown_yellow,
      indexed2 = plt.bile_yellow,
    },

    treesitter = {
      ["@comment"] = plt.toxic_scale,
      ["@comment.documentation"] = plt.parademon_skin,
      ["@comment.error"] = plt.meltdown_yellow,
      ["@comment.warning"] = plt.kalibak_toxin,
      ["@comment.todo"] = plt.plasma_leak,
      ["@comment.note"] = plt.beta_overcharge,

      ["@constant"] = plt.bile_yellow,
      ["@constant.builtin"] = plt.bile_yellow,
      ["@constant.macro"] = plt.radiation_glow,

      ["@string"] = plt.bile_yellow,
      ["@string.documentation"] = plt.bile_yellow,
      ["@string.regex"] = plt.plasma_leak,
      ["@string.escape"] = plt.meltdown_yellow,
      ["@string.special"] = plt.club_core,
      ["@string.special.symbol"] = plt.meltdown_yellow,
      ["@string.special.url"] = plt.beta_overcharge,
      ["@string.special.path"] = plt.bile_yellow,

      ["@character"] = plt.bile_yellow,
      ["@character.special"] = plt.meltdown_yellow,

      ["@number"] = plt.radiation_glow,
      ["@number.float"] = plt.radiation_glow,

      ["@boolean"] = plt.meltdown_yellow,

      ["@function"] = plt.beta_overcharge,
      ["@function.builtin"] = plt.beta_overcharge,
      ["@function.call"] = plt.beta_overcharge,
      ["@function.macro"] = plt.plasma_leak,
      ["@function.method"] = plt.toxic_sun,
      ["@function.method.call"] = plt.toxic_sun,

      ["@constructor"] = plt.meltdown_yellow,

      ["@parameter"] = plt.parademon_skin,
      ["@parameter.builtin"] = plt.savage_jade,

      ["@keyword"] = plt.kalibak_toxin,
      ["@keyword.coroutine"] = plt.beta_overcharge,
      ["@keyword.function"] = plt.kalibak_toxin,
      ["@keyword.operator"] = plt.meltdown_yellow,
      ["@keyword.return"] = plt.kalibak_toxin,
      ["@keyword.import"] = plt.beta_overcharge,
      ["@keyword.storage"] = plt.kalibak_toxin,
      ["@keyword.repeat"] = plt.kalibak_toxin,
      ["@keyword.conditional"] = plt.kalibak_toxin,
      ["@keyword.exception"] = plt.meltdown_yellow,
      ["@keyword.directive"] = plt.radiation_glow,
      ["@keyword.directive.define"] = plt.radiation_glow,

      ["@conditional"] = plt.kalibak_toxin,
      ["@conditional.ternary"] = plt.kalibak_toxin,

      ["@repeat"] = plt.kalibak_toxin,

      ["@label"] = plt.beta_overcharge,

      ["@operator"] = plt.meltdown_yellow,

      ["@exception"] = plt.meltdown_yellow,

      ["@variable"] = plt.savage_jade,
      ["@variable.builtin"] = plt.meltdown_yellow,
      ["@variable.parameter"] = plt.parademon_skin,
      ["@variable.member"] = plt.savage_jade,

      ["@type"] = plt.radiation_glow,
      ["@type.builtin"] = plt.radiation_glow,
      ["@type.definition"] = plt.radiation_glow,
      ["@type.qualifier"] = plt.kalibak_toxin,

      ["@attribute"] = plt.savage_jade,
      ["@attribute.builtin"] = plt.radiation_glow,

      ["@property"] = plt.savage_jade,
      ["@field"] = plt.savage_jade,
      ["@module"] = plt.savage_jade,
      ["@module.builtin"] = plt.savage_jade,
      ["@namespace"] = plt.savage_jade,
      ["@namespace.builtin"] = plt.savage_jade,

      ["@punctuation.delimiter"] = plt.toxic_scale,
      ["@punctuation.bracket"] = plt.toxic_scale,
      ["@punctuation.special"] = plt.meltdown_yellow,

      ["@tag"] = plt.kalibak_toxin,
      ["@tag.attribute"] = plt.radiation_glow,
      ["@tag.delimiter"] = plt.toxic_scale,
      ["@tag.builtin"] = plt.kalibak_toxin,

      ["@markup.strong"] = { fg = plt.meltdown_yellow, bold = true },
      ["@markup.italic"] = { fg = plt.savage_jade, italic = true },
      ["@markup.strikethrough"] = { fg = plt.firepit_toxic, strikethrough = true },
      ["@markup.underline"] = { fg = plt.meltdown_yellow, underline = true },
      ["@markup.heading"] = plt.meltdown_yellow,
      ["@markup.heading.1"] = plt.meltdown_yellow,
      ["@markup.heading.2"] = plt.kalibak_toxin,
      ["@markup.heading.3"] = plt.beta_overcharge,
      ["@markup.heading.4"] = plt.toxic_sun,
      ["@markup.heading.5"] = plt.bile_yellow,
      ["@markup.heading.6"] = plt.plasma_leak,
      ["@markup.quote"] = plt.toxic_scale,
      ["@markup.math"] = plt.plasma_leak,
      ["@markup.link"] = plt.beta_overcharge,
      ["@markup.link.label"] = plt.radiation_glow,
      ["@markup.link.url"] = plt.club_core,
      ["@markup.raw"] = plt.bile_yellow,
      ["@markup.raw.block"] = plt.bile_yellow,
      ["@markup.list"] = plt.kalibak_toxin,
      ["@markup.list.checked"] = plt.bile_yellow,
      ["@markup.list.unchecked"] = plt.toxic_scale,

      ["@diff.plus"] = plt.bile_yellow,
      ["@diff.minus"] = plt.meltdown_yellow,
      ["@diff.delta"] = plt.toxic_sun,

      ["@none"] = "none",
      ["@conceal"] = plt.plasma_leak,
      ["@spell"] = plt.savage_jade,
      ["@nospell"] = "none",

      ["@lsp.type.property.lua"] = plt.savage_jade,
      ["@constructor.python"] = plt.meltdown_yellow,
      ["@constructor.javascript"] = plt.meltdown_yellow,
      ["@constructor.typescript"] = plt.meltdown_yellow,
      ["@namespace.rust"] = plt.savage_jade,
      ["@type.qualifier.rust"] = plt.kalibak_toxin,
      ["@constant.macro.c"] = plt.radiation_glow,
      ["@constant.macro.cpp"] = plt.radiation_glow,
      ["@namespace.go"] = plt.savage_jade,
      ["@property.css"] = plt.beta_overcharge,
      ["@type.css"] = plt.kalibak_toxin,
      ["@label.json"] = plt.savage_jade,
      ["@field.yaml"] = plt.parademon_skin,
      ["@property.toml"] = plt.parademon_skin,
      ["@function.builtin.bash"] = plt.beta_overcharge,
      ["@string.regexp"] = plt.plasma_leak,
      ["@character.special.regex"] = plt.meltdown_yellow,
    },

    lsp = {
      ["@lsp.type.class"] = plt.radiation_glow,
      ["@lsp.type.interface"] = plt.radiation_glow,
      ["@lsp.type.struct"] = plt.radiation_glow,
      ["@lsp.type.enum"] = plt.radiation_glow,
      ["@lsp.type.enumMember"] = plt.bile_yellow,
      ["@lsp.type.property"] = plt.savage_jade,
      ["@lsp.type.namespace"] = plt.savage_jade,

      ["@lsp.type.macro"] = plt.radiation_glow,
      ["@lsp.type.decorator"] = plt.meltdown_yellow,

      ["@lsp.type.builtinType"] = plt.radiation_glow,
      ["@lsp.type.selfParameter"] = plt.kalibak_toxin,
      ["@lsp.type.typeParameter"] = plt.radiation_glow,

      ["@lsp.type.array"] = plt.radiation_glow,
      ["@lsp.type.object"] = plt.radiation_glow,
      ["@lsp.type.key"] = plt.savage_jade,
      ["@lsp.type.null"] = plt.bile_yellow,
      ["@lsp.type.enumConstant"] = plt.bile_yellow,

      ["@lsp.type.event"] = plt.radiation_glow,
      ["@lsp.type.regexp"] = plt.plasma_leak,
      ["@lsp.type.unresolvedReference"] = plt.meltdown_yellow,

      ["@lsp.mod.deprecated"] = { fg = plt.firepit_toxic, strikethrough = true },
      ["@lsp.mod.readonly"] = plt.bile_yellow,
      ["@lsp.mod.async"] = plt.kalibak_toxin,
      ["@lsp.mod.static"] = plt.radiation_glow,
      ["@lsp.mod.abstract"] = plt.radiation_glow,
      ["@lsp.mod.defaultLibrary"] = plt.radiation_glow,
      ["@lsp.mod.documentation"] = plt.parademon_skin,
    },
  }
end

return {
  name = "Apokolips – Kalibak (Toxic-Yellow Overcharge)",
  author = "PrismPunk.nvim",
  description = "The beast went full nuclear meltdown. "
    .. "Toxic green + searing yellow radiation = unstoppable savage fury.",

  base16 = {
    base00 = palette.waste_void,
    base01 = palette.sludge_depth,
    base02 = palette.firepit_toxic,
    base03 = palette.irradiated_core,
    base04 = palette.toxic_scale,
    base05 = palette.parademon_skin,
    base06 = palette.beast_flesh,
    base07 = palette.savage_jade,
    base08 = palette.meltdown_yellow,
    base09 = palette.kalibak_toxin,
    base0A = palette.toxic_sun,
    base0B = palette.radiation_glow,
    base0C = palette.plasma_leak,
    base0D = palette.beta_overcharge,
    base0E = palette.venom_rage,
    base0F = palette.bile_yellow,
  },

  palette = palette,
  get = M.get,
}
