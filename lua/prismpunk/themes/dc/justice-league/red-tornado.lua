local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.dc.justice-league.red-tornado")

local M = {}

---@param opts table
---@param plt table
---@return table
M.get = function(opts, plt)
  return {
    modes = {
      normal = plt.redBody,
      insert = plt.yellowTrim,
      visual = plt.tornadoWind,
      replace = plt.systemAlert,
      command = plt.seekingWarm,
    },

    ui = {
      fg = plt.fg_lightest,
      fg_dim = plt.fg_light,
      fg_dimmer = plt.fg_mid,
      fg_dark = plt.fg_dark,
      fg_reverse = plt.bg_alt1,
      bg_m4 = plt.bg_alt4,
      bg_m3 = plt.bg_alt3,
      bg_m2 = plt.bg_darkest,
      bg_m1 = plt.bg_darker,
      bg_dim = plt.bg_darker,
      bg = plt.bg_darkest,
      bg_p1 = plt.bg_dark,
      bg_p2 = plt.bg_mid,
      bg_gutter = opts.gutter and plt.bg_light or "none",
      bg_cursorline = plt.bg_dark,
      bg_cursorline_alt = plt.bg_mid,
      bg_search = plt.yellowTrim,
      bg_visual = plt.tornadoWind,
      bg_statusline = plt.bg_light,
      border = plt.bg_alt4,
      header1 = plt.redBody,
      header2 = plt.yellowTrim,
      special = plt.windWhite,
      nontext = plt.bg_lighter,
      whitespace = plt.bg_lightest,
      win_separator = plt.vortexGray,
      indent = plt.bg_lighter,
      indent_scope = plt.redBody,
      picker = plt.seekingWarm,
      yank = plt.yellowTrim,
      mark = plt.tornadoWind,
      scrollbar = plt.bg_lighter,
      tabline = {
        bg = plt.bg_darkest,
        fg_selected = plt.fg_lightest,
        bg_selected = plt.bg_dark,
        fg_inactive = plt.fg_mid,
        bg_inactive = plt.bg_darkest,
        fg_alternate = plt.redBody,
        bg_alternate = plt.bg_darkest,
        indicator = plt.cycloneWhite,
      },
      pmenu = {
        fg = plt.fg_lightest,
        fg_sel = "none",
        fg_border = plt.bg_lighter,
        bg_border = plt.bg_light,
        bg = plt.bg_light,
        bg_sel = plt.bg_lighter,
        bg_sbar = plt.bg_light,
        bg_thumb = plt.bg_lightest,
      },
      float = {
        fg = plt.fg_light,
        bg = plt.bg_darker,
        fg_border = plt.costumeRed,
        bg_border = plt.bg_darker,
      },
    },

    accent = {
      accent1 = plt.redBody,
      accent2 = plt.tornadoWind,
      accent3 = plt.yellowTrim,
      accent4 = plt.seekingWarm,
      accent5 = plt.windWhite,
      invert = plt.bg_light,
    },

    rainbow = {
      rainbow1 = plt.redBody,
      rainbow2 = plt.yellowTrim,
      rainbow3 = plt.tornadoWind,
      rainbow4 = plt.seekingWarm,
      rainbow5 = plt.windWhite,
      rainbow6 = plt.morrowGreen,
      rainbow7 = plt.vortexGray,
    },

    syn = {
      attribute = plt.yellowTrim,
      boolean = plt.redBody,
      comment = plt.fg_dark,
      constant = plt.windWhite,
      deprecated = plt.fg_mid,
      func = plt.tornadoWind,
      identifier = plt.fg_lightest,
      keyword = plt.redBody,
      method = plt.cycloneWhite,
      number = plt.coreGold,
      operator = plt.gustGray,
      parameter = plt.fg_mid,
      preproc = plt.morrowGreen,
      punct = plt.fg_mid,
      regex = plt.windPower,
      statement = plt.redBody,
      string = plt.cyclonePower,
      symbol = plt.yellowTrim,
      type = plt.yellowTrim,
      variable = plt.fg_lightest,
      special = plt.emotionalRed,
      special2 = plt.humanityWarm,
      special3 = plt.elementalAir,
    },

    vcs = {
      added = plt.familyFound,
      removed = plt.systemAlert,
      changed = plt.yellowTrim,
    },

    diff = {
      add = plt.familyFound,
      change = plt.yellowTrim,
      delete = plt.systemAlert,
      text = plt.tornadoWind,
    },

    diag = {
      ok = plt.humanityAchieved,
      error = plt.systemAlert,
      warning = plt.costumeYellow,
      info = plt.elementalAir,
      hint = plt.seekingWarm,
    },

    term = {
      black = plt.bg_alt3,
      red = plt.redBody,
      green = plt.morrowGreen,
      yellow = plt.yellowTrim,
      blue = plt.elementalAir,
      magenta = plt.emotionalRed,
      cyan = plt.tornadoWind,
      white = plt.fg_light,
      black_bright = color(plt.bg_alt3):brighten(0.6):to_hex(),
      red_bright = color(plt.redBody):brighten(0.2):to_hex(),
      green_bright = color(plt.morrowGreen):brighten(0.1):to_hex(),
      yellow_bright = color(plt.yellowTrim):brighten(0.2):to_hex(),
      blue_bright = color(plt.elementalAir):brighten(0.3):to_hex(),
      magenta_bright = color(plt.emotionalRed):brighten(0.2):to_hex(),
      cyan_bright = color(plt.tornadoWind):brighten(0.1):to_hex(),
      white_bright = color(plt.fg_light):brighten(0.2):to_hex(),
      indexed1 = plt.yellowTrim,
      indexed2 = plt.redBody,
    },

    treesitter = {
      ["@comment"] = plt.fg_dark,
      ["@comment.documentation"] = plt.fg_mid,
      ["@comment.error"] = plt.systemAlert,
      ["@comment.warning"] = plt.costumeYellow,
      ["@comment.todo"] = plt.yellowTrim,
      ["@comment.note"] = plt.seekingWarm,

      ["@constant"] = plt.windWhite,
      ["@constant.builtin"] = plt.windWhite,
      ["@constant.macro"] = plt.yellowTrim,

      ["@string"] = plt.cyclonePower,
      ["@string.documentation"] = plt.cyclonePower,
      ["@string.regex"] = plt.windPower,
      ["@string.escape"] = plt.yellowTrim,
      ["@string.special"] = plt.tornadoWind,
      ["@string.special.symbol"] = plt.coreGold,
      ["@string.special.url"] = plt.elementalAir,
      ["@string.special.path"] = plt.cyclonePower,

      ["@character"] = plt.cyclonePower,
      ["@character.special"] = plt.yellowTrim,

      ["@number"] = plt.coreGold,
      ["@number.float"] = plt.coreGold,

      ["@boolean"] = plt.redBody,

      ["@function"] = plt.tornadoWind,
      ["@function.builtin"] = plt.tornadoWind,
      ["@function.call"] = plt.tornadoWind,
      ["@function.macro"] = plt.morrowGreen,
      ["@function.method"] = plt.cycloneWhite,
      ["@function.method.call"] = plt.cycloneWhite,

      ["@constructor"] = plt.yellowTrim,

      ["@parameter"] = plt.fg_mid,
      ["@parameter.builtin"] = plt.fg_light,

      ["@keyword"] = plt.redBody,
      ["@keyword.coroutine"] = plt.metalRed,
      ["@keyword.function"] = plt.redBody,
      ["@keyword.operator"] = plt.gustGray,
      ["@keyword.return"] = plt.redBody,
      ["@keyword.import"] = plt.morrowGreen,
      ["@keyword.storage"] = plt.redBody,
      ["@keyword.repeat"] = plt.redBody,
      ["@keyword.conditional"] = plt.redBody,
      ["@keyword.exception"] = plt.systemAlert,
      ["@keyword.directive"] = plt.morrowGreen,
      ["@keyword.directive.define"] = plt.morrowGreen,

      ["@conditional"] = plt.redBody,
      ["@conditional.ternary"] = plt.redBody,

      ["@repeat"] = plt.redBody,

      ["@label"] = plt.metalRed,

      ["@operator"] = plt.gustGray,

      ["@exception"] = plt.systemAlert,

      ["@variable"] = plt.fg_lightest,
      ["@variable.builtin"] = plt.androidRed,
      ["@variable.parameter"] = plt.fg_mid,
      ["@variable.member"] = plt.fg_light,

      ["@type"] = plt.yellowTrim,
      ["@type.builtin"] = plt.yellowTrim,
      ["@type.definition"] = plt.yellowTrim,
      ["@type.qualifier"] = plt.redBody,

      ["@attribute"] = plt.yellowTrim,
      ["@attribute.builtin"] = plt.yellowTrim,

      ["@property"] = plt.fg_light,

      ["@field"] = plt.fg_light,

      ["@module"] = plt.yellowTrim,
      ["@module.builtin"] = plt.yellowTrim,

      ["@namespace"] = plt.yellowTrim,
      ["@namespace.builtin"] = plt.yellowTrim,

      ["@punctuation.delimiter"] = plt.fg_mid,
      ["@punctuation.bracket"] = plt.fg_mid,
      ["@punctuation.special"] = plt.gustGray,

      ["@tag"] = plt.redBody,
      ["@tag.attribute"] = plt.yellowTrim,
      ["@tag.delimiter"] = plt.fg_mid,
      ["@tag.builtin"] = plt.redBody,

      ["@markup.strong"] = { fg = plt.redBody, bold = true },
      ["@markup.italic"] = { fg = plt.cyclonePower, italic = true },
      ["@markup.strikethrough"] = { fg = plt.fg_dark, strikethrough = true },
      ["@markup.underline"] = { fg = plt.windWhite, underline = true },
      ["@markup.heading"] = plt.redBody,
      ["@markup.heading.1"] = plt.redBody,
      ["@markup.heading.2"] = plt.yellowTrim,
      ["@markup.heading.3"] = plt.tornadoWind,
      ["@markup.heading.4"] = plt.seekingWarm,
      ["@markup.heading.5"] = plt.morrowGreen,
      ["@markup.heading.6"] = plt.emotionalRed,
      ["@markup.quote"] = plt.fg_mid,
      ["@markup.math"] = plt.yellowTrim,
      ["@markup.link"] = plt.tornadoWind,
      ["@markup.link.label"] = plt.cycloneWhite,
      ["@markup.link.url"] = plt.elementalAir,
      ["@markup.raw"] = plt.cyclonePower,
      ["@markup.raw.block"] = plt.cyclonePower,
      ["@markup.list"] = plt.redBody,
      ["@markup.list.checked"] = plt.humanityAchieved,
      ["@markup.list.unchecked"] = plt.fg_mid,

      ["@diff.plus"] = plt.familyFound,
      ["@diff.minus"] = plt.systemAlert,
      ["@diff.delta"] = plt.yellowTrim,

      ["@none"] = "none",
      ["@conceal"] = plt.morrowGreen,
      ["@spell"] = plt.fg_lightest,
      ["@nospell"] = "none",

      ["@lsp.type.property.lua"] = plt.fg_light,
      ["@constructor.python"] = plt.yellowTrim,
      ["@constructor.javascript"] = plt.yellowTrim,
      ["@constructor.typescript"] = plt.yellowTrim,
      ["@namespace.rust"] = plt.yellowTrim,
      ["@type.qualifier.rust"] = plt.redBody,
      ["@constant.macro.c"] = plt.windWhite,
      ["@constant.macro.cpp"] = plt.windWhite,
      ["@namespace.go"] = plt.yellowTrim,
      ["@property.css"] = plt.cycloneWhite,
      ["@type.css"] = plt.redBody,
      ["@label.json"] = plt.yellowTrim,
      ["@field.yaml"] = plt.cycloneWhite,
      ["@property.toml"] = plt.cycloneWhite,
      ["@function.builtin.bash"] = plt.tornadoWind,
      ["@string.regexp"] = plt.windPower,
      ["@character.special.regex"] = plt.yellowTrim,
    },

    lsp = {
      ["@lsp.type.class"] = plt.yellowTrim,
      ["@lsp.type.interface"] = plt.yellowTrim,
      ["@lsp.type.struct"] = plt.yellowTrim,
      ["@lsp.type.enum"] = plt.yellowTrim,
      ["@lsp.type.enumMember"] = plt.windWhite,
      ["@lsp.type.property"] = plt.fg_light,
      ["@lsp.type.namespace"] = plt.yellowTrim,

      ["@lsp.type.macro"] = plt.yellowTrim,
      ["@lsp.type.decorator"] = plt.yellowTrim,

      ["@lsp.type.builtinType"] = plt.yellowTrim,
      ["@lsp.type.selfParameter"] = plt.androidRed,
      ["@lsp.type.typeParameter"] = plt.yellowTrim,

      ["@lsp.type.array"] = plt.yellowTrim,
      ["@lsp.type.object"] = plt.yellowTrim,
      ["@lsp.type.key"] = plt.fg_light,
      ["@lsp.type.null"] = plt.windWhite,
      ["@lsp.type.enumConstant"] = plt.windWhite,

      ["@lsp.type.event"] = plt.yellowTrim,
      ["@lsp.type.regexp"] = plt.windPower,
      ["@lsp.type.unresolvedReference"] = plt.yellowTrim,

      ["@lsp.mod.deprecated"] = { fg = plt.fg_mid, strikethrough = true },
      ["@lsp.mod.readonly"] = plt.windWhite,
      ["@lsp.mod.async"] = plt.redBody,
      ["@lsp.mod.static"] = plt.metalRed,
      ["@lsp.mod.abstract"] = plt.yellowTrim,
      ["@lsp.mod.defaultLibrary"] = plt.yellowTrim,
      ["@lsp.mod.documentation"] = plt.fg_mid,
    },
  }
end

return {
  name = "Justice League – Red Tornado",
  author = "PrismPunk.nvim",
  description = "Android hero with a human heart. RED metallic body, yellow costume trim, "
    .. "white tornado winds. John Smith seeking family, T.O. Morrow's creation learning emotions. "
    .. "Warm quest for humanity, cold exterior hiding caring soul. Red winds, not blue storms.",

  base16 = {
    base00 = palette.bg_darkest,
    base01 = palette.bg_darker,
    base02 = palette.bg_dark,
    base03 = palette.bg_mid,
    base04 = palette.bg_light,
    base05 = palette.fg_mid,
    base06 = palette.fg_lightest,
    base07 = palette.fg_light,
    base08 = palette.systemAlert,
    base09 = palette.costumeYellow,
    base0A = palette.yellowTrim,
    base0B = palette.morrowGreen,
    base0C = palette.tornadoWind,
    base0D = palette.elementalAir,
    base0E = palette.seekingWarm,
    base0F = palette.redBody,
  },

  palette = palette,
  get = M.get,
}
