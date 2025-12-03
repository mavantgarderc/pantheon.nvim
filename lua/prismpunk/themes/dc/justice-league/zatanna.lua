local color = require("prismpunk.utils.color")
local palette = require("prismpunk.palettes.dc.justice-league.zatanna")

local M = {}

---@param opts table
---@param plt table
---@return table
M.get = function(opts, plt)
  return {
    modes = {
      normal = plt.mysticPurple,
      insert = plt.stageGold,
      visual = plt.backwardsBlue,
      replace = plt.spellBackfire,
      command = plt.magicianWhite,
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
      bg_search = plt.stageGold,
      bg_visual = plt.backwardsBlue,
      bg_statusline = plt.bg_light,
      border = plt.bg_alt4,
      header1 = plt.mysticPurple,
      header2 = plt.stageGold,
      special = plt.wandShimmer,
      nontext = plt.bg_lighter,
      whitespace = plt.bg_lightest,
      win_separator = plt.smokeGray,
      indent = plt.bg_lighter,
      indent_scope = plt.mysticPurple,
      picker = plt.performancePink,
      yank = plt.stageGold,
      mark = plt.topHatViolet,
      scrollbar = plt.bg_lighter,
      tabline = {
        bg = plt.bg_darkest,
        fg_selected = plt.fg_lightest,
        bg_selected = plt.bg_dark,
        fg_inactive = plt.fg_mid,
        bg_inactive = plt.bg_darkest,
        fg_alternate = plt.mysticPurple,
        bg_alternate = plt.bg_darkest,
        indicator = plt.spellPurple,
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
        fg_border = plt.arcaneViolet,
        bg_border = plt.bg_darker,
      },
    },

    accent = {
      accent1 = plt.mysticPurple,
      accent2 = plt.magicianWhite,
      accent3 = plt.stageGold,
      accent4 = plt.backwardsBlue,
      accent5 = plt.performancePink,
      invert = plt.bg_light,
    },

    rainbow = {
      rainbow1 = plt.mysticPurple,
      rainbow2 = plt.magicianWhite,
      rainbow3 = plt.stageGold,
      rainbow4 = plt.backwardsBlue,
      rainbow5 = plt.performancePink,
      rainbow6 = plt.cardRed,
      rainbow7 = plt.topHatViolet,
    },

    syn = {
      attribute = plt.stageGold,
      boolean = plt.mysticPurple,
      comment = plt.fg_dark,
      constant = plt.magicianWhite,
      deprecated = plt.fg_mid,
      func = plt.backwardsBlue,
      identifier = plt.fg_lightest,
      keyword = plt.mysticPurple,
      method = plt.reverseBlue,
      number = plt.showGold,
      operator = plt.enchantLavender,
      parameter = plt.fg_mid,
      preproc = plt.legacyPurple,
      punct = plt.fg_mid,
      regex = plt.spellLavender,
      statement = plt.mysticPurple,
      string = plt.enchantLavender,
      symbol = plt.stageGold,
      type = plt.stageGold,
      variable = plt.fg_lightest,
      special = plt.wandShimmer,
      special2 = plt.performancePink,
      special3 = plt.mysticalTeal,
    },

    vcs = {
      added = plt.spellPerfect,
      removed = plt.spellBackfire,
      changed = plt.stageGold,
    },

    diff = {
      add = plt.spellPerfect,
      change = plt.stageGold,
      delete = plt.spellBackfire,
      text = plt.backwardsBlue,
    },

    diag = {
      ok = plt.magicSuccess,
      error = plt.spellBackfire,
      warning = plt.cardRed,
      info = plt.mysticalTeal,
      hint = plt.topHatViolet,
    },

    term = {
      black = plt.bg_alt3,
      red = plt.cardRed,
      green = plt.spellPerfect,
      yellow = plt.stageGold,
      blue = plt.backwardsBlue,
      magenta = plt.mysticPurple,
      cyan = plt.mysticalTeal,
      white = plt.fg_light,
      black_bright = color(plt.bg_alt3):brighten(0.6):to_hex(),
      red_bright = color(plt.cardRed):brighten(0.2):to_hex(),
      green_bright = color(plt.spellPerfect):brighten(0.1):to_hex(),
      yellow_bright = color(plt.stageGold):brighten(0.2):to_hex(),
      blue_bright = color(plt.backwardsBlue):brighten(0.3):to_hex(),
      magenta_bright = color(plt.mysticPurple):brighten(0.2):to_hex(),
      cyan_bright = color(plt.mysticalTeal):brighten(0.1):to_hex(),
      white_bright = color(plt.fg_light):brighten(0.2):to_hex(),
      indexed1 = plt.stageGold,
      indexed2 = plt.mysticPurple,
    },

    treesitter = {
      ["@comment"] = plt.fg_dark,
      ["@comment.documentation"] = plt.fg_mid,
      ["@comment.error"] = plt.spellBackfire,
      ["@comment.warning"] = plt.cardRed,
      ["@comment.todo"] = plt.stageGold,
      ["@comment.note"] = plt.backwardsBlue,

      ["@constant"] = plt.magicianWhite,
      ["@constant.builtin"] = plt.magicianWhite,
      ["@constant.macro"] = plt.stageGold,

      ["@string"] = plt.enchantLavender,
      ["@string.documentation"] = plt.enchantLavender,
      ["@string.regex"] = plt.spellLavender,
      ["@string.escape"] = plt.stageGold,
      ["@string.special"] = plt.charmLavender,
      ["@string.special.symbol"] = plt.showGold,
      ["@string.special.url"] = plt.mysticalTeal,
      ["@string.special.path"] = plt.enchantLavender,

      ["@character"] = plt.enchantLavender,
      ["@character.special"] = plt.stageGold,

      ["@number"] = plt.showGold,
      ["@number.float"] = plt.showGold,

      ["@boolean"] = plt.mysticPurple,

      ["@function"] = plt.backwardsBlue,
      ["@function.builtin"] = plt.backwardsBlue,
      ["@function.call"] = plt.backwardsBlue,
      ["@function.macro"] = plt.legacyPurple,
      ["@function.method"] = plt.reverseBlue,
      ["@function.method.call"] = plt.reverseBlue,

      ["@constructor"] = plt.stageGold,

      ["@parameter"] = plt.fg_mid,
      ["@parameter.builtin"] = plt.fg_light,

      ["@keyword"] = plt.mysticPurple,
      ["@keyword.coroutine"] = plt.spellPurple,
      ["@keyword.function"] = plt.mysticPurple,
      ["@keyword.operator"] = plt.enchantLavender,
      ["@keyword.return"] = plt.mysticPurple,
      ["@keyword.import"] = plt.legacyPurple,
      ["@keyword.storage"] = plt.mysticPurple,
      ["@keyword.repeat"] = plt.mysticPurple,
      ["@keyword.conditional"] = plt.mysticPurple,
      ["@keyword.exception"] = plt.spellBackfire,
      ["@keyword.directive"] = plt.legacyPurple,
      ["@keyword.directive.define"] = plt.legacyPurple,

      ["@conditional"] = plt.mysticPurple,
      ["@conditional.ternary"] = plt.mysticPurple,

      ["@repeat"] = plt.mysticPurple,

      ["@label"] = plt.spellPurple,

      ["@operator"] = plt.enchantLavender,

      ["@exception"] = plt.spellBackfire,

      ["@variable"] = plt.fg_lightest,
      ["@variable.builtin"] = plt.magicViolet,
      ["@variable.parameter"] = plt.fg_mid,
      ["@variable.member"] = plt.fg_light,

      ["@type"] = plt.stageGold,
      ["@type.builtin"] = plt.stageGold,
      ["@type.definition"] = plt.stageGold,
      ["@type.qualifier"] = plt.mysticPurple,

      ["@attribute"] = plt.stageGold,
      ["@attribute.builtin"] = plt.stageGold,

      ["@property"] = plt.fg_light,

      ["@field"] = plt.fg_light,

      ["@module"] = plt.stageGold,
      ["@module.builtin"] = plt.stageGold,

      ["@namespace"] = plt.stageGold,
      ["@namespace.builtin"] = plt.stageGold,

      ["@punctuation.delimiter"] = plt.fg_mid,
      ["@punctuation.bracket"] = plt.fg_mid,
      ["@punctuation.special"] = plt.enchantLavender,

      ["@tag"] = plt.mysticPurple,
      ["@tag.attribute"] = plt.stageGold,
      ["@tag.delimiter"] = plt.fg_mid,
      ["@tag.builtin"] = plt.mysticPurple,

      ["@markup.strong"] = { fg = plt.mysticPurple, bold = true },
      ["@markup.italic"] = { fg = plt.enchantLavender, italic = true },
      ["@markup.strikethrough"] = { fg = plt.fg_dark, strikethrough = true },
      ["@markup.underline"] = { fg = plt.wandShimmer, underline = true },
      ["@markup.heading"] = plt.mysticPurple,
      ["@markup.heading.1"] = plt.mysticPurple,
      ["@markup.heading.2"] = plt.stageGold,
      ["@markup.heading.3"] = plt.backwardsBlue,
      ["@markup.heading.4"] = plt.performancePink,
      ["@markup.heading.5"] = plt.topHatViolet,
      ["@markup.heading.6"] = plt.mysticalTeal,
      ["@markup.quote"] = plt.fg_mid,
      ["@markup.math"] = plt.stageGold,
      ["@markup.link"] = plt.backwardsBlue,
      ["@markup.link.label"] = plt.reverseBlue,
      ["@markup.link.url"] = plt.mysticalTeal,
      ["@markup.raw"] = plt.enchantLavender,
      ["@markup.raw.block"] = plt.enchantLavender,
      ["@markup.list"] = plt.mysticPurple,
      ["@markup.list.checked"] = plt.magicSuccess,
      ["@markup.list.unchecked"] = plt.fg_mid,

      ["@diff.plus"] = plt.spellPerfect,
      ["@diff.minus"] = plt.spellBackfire,
      ["@diff.delta"] = plt.stageGold,

      ["@none"] = "none",
      ["@conceal"] = plt.legacyPurple,
      ["@spell"] = plt.fg_lightest,
      ["@nospell"] = "none",

      ["@lsp.type.property.lua"] = plt.fg_light,
      ["@constructor.python"] = plt.stageGold,
      ["@constructor.javascript"] = plt.stageGold,
      ["@constructor.typescript"] = plt.stageGold,
      ["@namespace.rust"] = plt.stageGold,
      ["@type.qualifier.rust"] = plt.mysticPurple,
      ["@constant.macro.c"] = plt.magicianWhite,
      ["@constant.macro.cpp"] = plt.magicianWhite,
      ["@namespace.go"] = plt.stageGold,
      ["@property.css"] = plt.reverseBlue,
      ["@type.css"] = plt.mysticPurple,
      ["@label.json"] = plt.stageGold,
      ["@field.yaml"] = plt.reverseBlue,
      ["@property.toml"] = plt.reverseBlue,
      ["@function.builtin.bash"] = plt.backwardsBlue,
      ["@string.regexp"] = plt.spellLavender,
      ["@character.special.regex"] = plt.stageGold,
    },

    lsp = {
      ["@lsp.type.class"] = plt.stageGold,
      ["@lsp.type.interface"] = plt.stageGold,
      ["@lsp.type.struct"] = plt.stageGold,
      ["@lsp.type.enum"] = plt.stageGold,
      ["@lsp.type.enumMember"] = plt.magicianWhite,
      ["@lsp.type.property"] = plt.fg_light,
      ["@lsp.type.namespace"] = plt.stageGold,

      ["@lsp.type.macro"] = plt.stageGold,
      ["@lsp.type.decorator"] = plt.stageGold,

      ["@lsp.type.builtinType"] = plt.stageGold,
      ["@lsp.type.selfParameter"] = plt.magicViolet,
      ["@lsp.type.typeParameter"] = plt.stageGold,

      ["@lsp.type.array"] = plt.stageGold,
      ["@lsp.type.object"] = plt.stageGold,
      ["@lsp.type.key"] = plt.fg_light,
      ["@lsp.type.null"] = plt.magicianWhite,
      ["@lsp.type.enumConstant"] = plt.magicianWhite,

      ["@lsp.type.event"] = plt.stageGold,
      ["@lsp.type.regexp"] = plt.spellLavender,
      ["@lsp.type.unresolvedReference"] = plt.stageGold,

      ["@lsp.mod.deprecated"] = { fg = plt.fg_mid, strikethrough = true },
      ["@lsp.mod.readonly"] = plt.magicianWhite,
      ["@lsp.mod.async"] = plt.mysticPurple,
      ["@lsp.mod.static"] = plt.spellPurple,
      ["@lsp.mod.abstract"] = plt.stageGold,
      ["@lsp.mod.defaultLibrary"] = plt.stageGold,
      ["@lsp.mod.documentation"] = plt.fg_mid,
    },
  }
end

return {
  name = "Justice League – Zatanna",
  author = "PrismPunk.nvim",
  description = "Mistress of Magic, stage magician supreme. Mystic purple spells, magician white tuxedo, "
    .. "stage gold glamour. Backwards incantations, top hat violet, card red tricks. "
    .. "Zatara's daughter, Justice League Dark. !kcigam sdrawkcab eht",

  base16 = {
    base00 = palette.bg_darkest,
    base01 = palette.bg_darker,
    base02 = palette.bg_dark,
    base03 = palette.bg_mid,
    base04 = palette.bg_light,
    base05 = palette.fg_mid,
    base06 = palette.fg_lightest,
    base07 = palette.fg_light,
    base08 = palette.spellBackfire,
    base09 = palette.cardRed,
    base0A = palette.stageGold,
    base0B = palette.spellPerfect,
    base0C = palette.mysticalTeal,
    base0D = palette.backwardsBlue,
    base0E = palette.mysticPurple,
    base0F = palette.magicianWhite,
  },

  palette = palette,
  get = M.get,
}
