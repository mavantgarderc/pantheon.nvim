local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.dc.lantern-corps.phantom-corrupted")

local M = {}

---@param opts table
---@param palette table
---@return table
---@diagnostic disable-next-line: redefined-local
M.get = function(opts, palette)
  return {
    modes = {
      normal = palette.voidCore,
      insert = palette.corruptedWill,
      visual = palette.nullField,
      replace = palette.corruptedRage,
      command = palette.voidBright,
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
      bg_search = palette.voidGlow,
      bg_visual = palette.nullField,
      bg_statusline = palette.entropyEffect,
      border = palette.bg_alt4,
      header1 = palette.voidCore,
      header2 = palette.decayPattern,
      special = palette.entropyEffect,
      nontext = palette.bg_lighter,
      whitespace = palette.bg_lightest,
      win_separator = palette.voidCore,
      indent = palette.bg_lighter,
      indent_scope = palette.voidGlow,
      picker = palette.corruptedRage,
      yank = palette.corruptedWill,
      mark = palette.corruptedHope,
      scrollbar = palette.bg_lighter,
      tabline = {
        bg = palette.bg_darkest,
        fg_selected = palette.fg_lightest,
        bg_selected = palette.bg_dark,
        fg_inactive = palette.fg_mid,
        bg_inactive = palette.bg_darkest,
        fg_alternate = palette.voidBright,
        bg_alternate = palette.bg_darkest,
        indicator = palette.decayPattern,
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
      accent1 = palette.voidCore,
      accent2 = palette.voidBright,
      accent3 = palette.decayPattern,
      accent4 = palette.fg_mid,
      accent5 = palette.corruptedRage,
      invert = palette.bg_light,
    },

    rainbow = {
      rainbow1 = palette.corruptedRage,
      rainbow2 = palette.corruptedAvarice,
      rainbow3 = palette.corruptedFear,
      rainbow4 = palette.corruptedWill,
      rainbow5 = palette.corruptedHope,
      rainbow6 = palette.corruptedCompassion,
      rainbow7 = palette.corruptedLove,
    },

    syn = {
      attribute = palette.accent_yellow,
      comment = palette.fg_dark,
      constant = palette.corruptedAvarice,
      deprecated = palette.fg_mid,
      func = palette.corruptedHope,
      identifier = palette.fg_lightest,
      keyword = palette.voidCore,
      method = palette.corruptedWill,
      number = palette.corruptedAvarice,
      operator = palette.corruptedRage,
      parameter = palette.fg_mid,
      preproc = palette.corruptedLove,
      punct = palette.fg_mid,
      regex = palette.corruptedFear,
      statement = palette.voidCore,
      string = palette.corruptedWill,
      symbol = palette.corruptedRage,
      type = palette.corruptedHope,
      variable = "none",
      special = palette.corruptedFear,
      special2 = palette.corruptedRage,
      special3 = palette.voidDeep,
    },

    vcs = {
      added = palette.corruptedWill,
      removed = palette.corruptedRage,
      changed = palette.corruptedFear,
    },

    diff = {
      add = palette.corruptedWill,
      change = palette.corruptedFear,
      delete = palette.corruptedRage,
      text = palette.corruptedHope,
    },

    diag = {
      ok = palette.corruptedWill,
      error = palette.corruptedRage,
      warning = palette.corruptedFear,
      info = palette.corruptedHope,
      hint = palette.corruptedCompassion,
    },

    term = {
      black = palette.bg_alt3,
      red = palette.corruptedRage,
      green = palette.corruptedWill,
      yellow = palette.corruptedFear,
      blue = palette.corruptedHope,
      magenta = palette.corruptedLove,
      cyan = palette.decayPattern,
      white = palette.fg_light,
      black_bright = color(palette.bg_alt3):brighten(0.6):to_hex(),
      red_bright = color(palette.corruptedRage):brighten(0.2):to_hex(),
      green_bright = color(palette.corruptedWill):brighten(0.1):to_hex(),
      yellow_bright = color(palette.corruptedFear):brighten(0.2):to_hex(),
      blue_bright = color(palette.corruptedHope):brighten(0.3):to_hex(),
      magenta_bright = color(palette.corruptedLove):brighten(0.2):to_hex(),
      cyan_bright = color(palette.decayPattern):brighten(0.1):to_hex(),
      white_bright = color(palette.fg_light):brighten(0.2):to_hex(),
      indexed1 = palette.voidBright,
      indexed2 = palette.corruptedRage,
    },

    treesitter = {
      ["@comment"] = palette.fg_dark,
      ["@comment.documentation"] = palette.fg_mid,
      ["@comment.error"] = palette.corruptedRage,
      ["@comment.warning"] = palette.corruptedFear,
      ["@comment.todo"] = palette.corruptedHope,
      ["@comment.note"] = palette.corruptedCompassion,

      ["@constant"] = palette.corruptedAvarice,
      ["@constant.builtin"] = palette.corruptedAvarice,
      ["@constant.macro"] = palette.corruptedFear,

      ["@string"] = palette.corruptedWill,
      ["@string.documentation"] = palette.corruptedWill,
      ["@string.regex"] = palette.corruptedFear,
      ["@string.escape"] = palette.corruptedLove,
      ["@string.special"] = palette.corruptedCompassion,
      ["@string.special.symbol"] = palette.corruptedRage,
      ["@string.special.url"] = palette.decayPattern,
      ["@string.special.path"] = palette.nullField,

      ["@character"] = palette.corruptedWill,
      ["@character.special"] = palette.corruptedLove,

      ["@number"] = palette.corruptedAvarice,
      ["@number.float"] = palette.corruptedAvarice,

      ["@boolean"] = palette.corruptedAvarice,

      ["@function"] = palette.corruptedHope,
      ["@function.builtin"] = palette.corruptedHope,
      ["@function.call"] = palette.corruptedHope,
      ["@function.macro"] = palette.corruptedLove,
      ["@function.method"] = palette.corruptedWill,
      ["@function.method.call"] = palette.corruptedWill,

      ["@constructor"] = palette.corruptedHope,

      ["@parameter"] = palette.fg_mid,
      ["@parameter.builtin"] = palette.fg_light,

      ["@keyword"] = palette.voidCore,
      ["@keyword.coroutine"] = palette.voidBright,
      ["@keyword.function"] = palette.voidCore,
      ["@keyword.operator"] = palette.corruptedRage,
      ["@keyword.return"] = palette.voidCore,
      ["@keyword.import"] = palette.corruptedLove,
      ["@keyword.storage"] = palette.voidCore,
      ["@keyword.repeat"] = palette.voidCore,
      ["@keyword.conditional"] = palette.voidCore,
      ["@keyword.exception"] = palette.corruptedRage,
      ["@keyword.directive"] = palette.corruptedLove,
      ["@keyword.directive.define"] = palette.corruptedLove,

      ["@conditional"] = palette.voidCore,
      ["@conditional.ternary"] = palette.voidCore,

      ["@repeat"] = palette.voidCore,

      ["@label"] = palette.voidBright,

      ["@operator"] = palette.corruptedRage,

      ["@exception"] = palette.corruptedRage,

      ["@variable"] = palette.fg_lightest,
      ["@variable.builtin"] = palette.voidBright,
      ["@variable.parameter"] = palette.fg_mid,
      ["@variable.member"] = palette.fg_light,

      ["@type"] = palette.corruptedHope,
      ["@type.builtin"] = palette.corruptedHope,
      ["@type.definition"] = palette.corruptedHope,
      ["@type.qualifier"] = palette.voidCore,

      ["@attribute"] = palette.accent_yellow,
      ["@attribute.builtin"] = palette.corruptedFear,

      ["@property"] = palette.fg_light,

      ["@field"] = palette.fg_light,

      ["@module"] = palette.corruptedHope,
      ["@module.builtin"] = palette.corruptedHope,

      ["@namespace"] = palette.corruptedHope,
      ["@namespace.builtin"] = palette.corruptedHope,

      ["@punctuation.delimiter"] = palette.fg_mid,
      ["@punctuation.bracket"] = palette.fg_mid,
      ["@punctuation.special"] = palette.corruptedRage,

      ["@tag"] = palette.corruptedRage,
      ["@tag.attribute"] = palette.accent_yellow,
      ["@tag.delimiter"] = palette.fg_mid,
      ["@tag.builtin"] = palette.corruptedRage,

      ["@markup.strong"] = { fg = palette.voidBright, bold = true },
      ["@markup.italic"] = { fg = palette.fg_light, italic = true },
      ["@markup.strikethrough"] = { fg = palette.fg_dark, strikethrough = true },
      ["@markup.underline"] = { fg = palette.fg_light, underline = true },
      ["@markup.heading"] = palette.voidCore,
      ["@markup.heading.1"] = palette.corruptedRage,
      ["@markup.heading.2"] = palette.corruptedAvarice,
      ["@markup.heading.3"] = palette.corruptedFear,
      ["@markup.heading.4"] = palette.corruptedWill,
      ["@markup.heading.5"] = palette.corruptedHope,
      ["@markup.heading.6"] = palette.corruptedCompassion,
      ["@markup.quote"] = palette.fg_mid,
      ["@markup.math"] = palette.corruptedHope,
      ["@markup.link"] = palette.decayPattern,
      ["@markup.link.label"] = palette.corruptedHope,
      ["@markup.link.url"] = palette.nullField,
      ["@markup.raw"] = palette.corruptedWill,
      ["@markup.raw.block"] = palette.corruptedWill,
      ["@markup.list"] = palette.corruptedRage,
      ["@markup.list.checked"] = palette.corruptedWill,
      ["@markup.list.unchecked"] = palette.fg_mid,

      ["@diff.plus"] = palette.corruptedWill,
      ["@diff.minus"] = palette.corruptedRage,
      ["@diff.delta"] = palette.corruptedFear,

      ["@none"] = "none",
      ["@conceal"] = palette.voidDeep,
      ["@spell"] = palette.fg_lightest,
      ["@nospell"] = "none",

      -- Language-specific
      ["@lsp.type.property.lua"] = palette.fg_light,
      ["@constructor.python"] = palette.corruptedHope,
      ["@constructor.javascript"] = palette.corruptedHope,
      ["@constructor.typescript"] = palette.corruptedHope,
      ["@namespace.rust"] = palette.corruptedHope,
      ["@type.qualifier.rust"] = palette.voidCore,
      ["@constant.macro.c"] = palette.corruptedFear,
      ["@constant.macro.cpp"] = palette.corruptedFear,
      ["@namespace.go"] = palette.corruptedHope,
      ["@property.css"] = palette.corruptedHope,
      ["@type.css"] = palette.corruptedRage,
      ["@label.json"] = palette.corruptedHope,
      ["@field.yaml"] = palette.corruptedHope,
      ["@property.toml"] = palette.corruptedHope,
      ["@function.builtin.bash"] = palette.corruptedHope,
      ["@string.regexp"] = palette.corruptedFear,
      ["@character.special.regex"] = palette.corruptedLove,
    },

    lsp = {
      ["@lsp.type.class"] = palette.corruptedHope,
      ["@lsp.type.interface"] = palette.corruptedHope,
      ["@lsp.type.struct"] = palette.corruptedHope,
      ["@lsp.type.enum"] = palette.corruptedHope,
      ["@lsp.type.enumMember"] = palette.corruptedAvarice,
      ["@lsp.type.property"] = palette.fg_light,
      ["@lsp.type.namespace"] = palette.corruptedHope,

      ["@lsp.type.macro"] = palette.corruptedFear,
      ["@lsp.type.decorator"] = palette.corruptedHope,

      ["@lsp.type.builtinType"] = palette.corruptedHope,
      ["@lsp.type.selfParameter"] = palette.voidBright,
      ["@lsp.type.typeParameter"] = palette.corruptedHope,

      ["@lsp.type.array"] = palette.corruptedHope,
      ["@lsp.type.object"] = palette.corruptedHope,
      ["@lsp.type.key"] = palette.fg_light,
      ["@lsp.type.null"] = palette.corruptedAvarice,
      ["@lsp.type.enumConstant"] = palette.corruptedAvarice,

      ["@lsp.type.event"] = palette.corruptedHope,
      ["@lsp.type.regexp"] = palette.corruptedFear,
      ["@lsp.type.unresolvedReference"] = palette.corruptedFear,

      ["@lsp.mod.deprecated"] = { fg = palette.fg_mid, strikethrough = true },
      ["@lsp.mod.readonly"] = palette.corruptedAvarice,
      ["@lsp.mod.async"] = palette.voidCore,
      ["@lsp.mod.static"] = palette.voidBright,
      ["@lsp.mod.abstract"] = palette.corruptedHope,
      ["@lsp.mod.defaultLibrary"] = palette.corruptedHope,
      ["@lsp.mod.documentation"] = palette.fg_mid,
    },
  }
end

return {
  name = "Lantern Corps - Phantom (Corrupted)",
  author = "PrismPunk.nvim",
  description = "In Desperate Day, In Hopeless Night, The Phantom Ring is our last light. We yearn for power, strength and might I seize the ring, that is my right!",

  base16 = {
    base00 = palette.bg_darkest,
    base01 = palette.bg_darker,
    base02 = palette.bg_dark,
    base03 = palette.bg_mid,
    base04 = palette.bg_light,
    base05 = palette.fg_mid,
    base06 = palette.fg_lightest,
    base07 = palette.fg_light,
    base08 = palette.corruptedRage,
    base09 = palette.corruptedAvarice,
    base0A = palette.corruptedFear,
    base0B = palette.corruptedWill,
    base0C = palette.decayPattern,
    base0D = palette.voidCore,
    base0E = palette.voidDeep,
    base0F = palette.voidBright,
  },

  palette = palette,
  get = M.get,
}
