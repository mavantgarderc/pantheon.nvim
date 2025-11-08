# .github/ISSUE_TEMPLATE/full_theme_request.md

---
name: Full Theme Request
about: Suggest a brand new & ready colorscheme
title: '[THEME] Add theme for [Universe/Character]'
labels: enhancement, theme, palette
assignees: ''
---

```lua
local color = require("prismpunk.utils.color")

-- Define your color palette here
local palette = {
  -- Background shades (dark to light)
  bg_darkest = "#0B0A10",
  bg_darker = "#16151E",
  bg_dark = "#1F1D27",
  bg_mid = "#2A2834",
  bg_light = "#34323E",
  bg_lighter = "#3F3D4B",
  bg_lightest = "#4B4858",

  -- Foreground shades
  fg_lightest = "#DCD7BA",
  fg_light = "#C8C093",
  fg_mid = "#727169",
  fg_dark = "#9C9A91",

  -- Additional background variants
  bg_alt1 = "#1C1B24",
  bg_alt2 = "#1A1921",
  bg_alt3 = "#131217",
  bg_alt4 = "#0E0D12",

  -- Accent colors
  accent_red = "#C84053",
  accent_pink = "#D16D9E",
  accent_yellow = "#C0A36E",
  accent_orange = "#FFA066",
  accent_green = "#76946A",
  accent_blue = "#7E9CD8",
  accent_violet = "#957FB8",
  accent_aqua = "#6A9589",
}

local M = {}

---@param opts table
---@param palette table
---@return table
---@diagnostic disable-next-line: redefined-local
M.get = function(opts, palette)
  return {
    modes = {
      normal = palette.accent_yellow,
      insert = palette.accent_red,
      visual = palette.accent_violet,
      replace = palette.accent_red,
      command = palette.accent_yellow,
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
      bg_search = palette.accent_violet,
      bg_visual = palette.bg_light,
      bg_statusline = palette.bg_light,
      border = palette.bg_alt4,
      header1 = palette.accent_violet,
      header2 = palette.accent_orange,
      special = palette.accent_aqua,
      nontext = palette.bg_lighter,
      whitespace = palette.bg_lightest,
      win_separator = palette.accent_violet,
      indent = palette.bg_lighter,
      indent_scope = palette.accent_violet,
      picker = palette.accent_red,
      yank = palette.bg_lightest,
      mark = palette.accent_aqua,
      scrollbar = palette.bg_lighter,
      tabline = {
        bg = palette.bg_darkest,
        fg_selected = palette.fg_lightest,
        bg_selected = palette.bg_dark,
        fg_inactive = palette.fg_mid,
        bg_inactive = palette.bg_darkest,
        fg_alternate = palette.accent_pink,
        bg_alternate = palette.bg_darkest,
        indicator = palette.accent_blue,
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
      accent1 = palette.accent_blue,
      accent2 = palette.accent_orange,
      accent3 = palette.accent_aqua,
      accent4 = palette.fg_mid,
      accent5 = palette.accent_red,
      invert = palette.bg_light,
    },

    rainbow = {
      rainbow1 = palette.accent_red,
      rainbow2 = palette.accent_pink,
      rainbow3 = palette.accent_blue,
      rainbow4 = palette.accent_orange,
      rainbow5 = palette.accent_green,
      rainbow6 = palette.fg_mid,
      rainbow7 = palette.accent_aqua,
    },

    syn = {
      attribute = palette.accent_yellow,
      comment = palette.fg_dark,
      constant = palette.accent_orange,
      deprecated = palette.fg_mid,
      func = palette.accent_blue,
      identifier = palette.fg_lightest,
      keyword = palette.accent_pink,
      method = palette.accent_blue,
      number = palette.accent_pink,
      operator = palette.accent_red,
      parameter = palette.fg_mid,
      preproc = palette.accent_violet,
      punct = palette.fg_mid,
      regex = palette.accent_yellow,
      statement = palette.accent_violet,
      string = palette.accent_green,
      symbol = palette.accent_red,
      type = palette.accent_aqua,
      variable = "none",
      special = palette.accent_yellow,
      special2 = palette.accent_red,
      special3 = palette.accent_violet,
    },

    vcs = {
      added = palette.accent_green,
      removed = palette.accent_red,
      changed = palette.accent_yellow,
    },

    diff = {
      add = palette.accent_green,
      change = palette.accent_yellow,
      delete = palette.accent_red,
      text = palette.accent_blue,
    },

    diag = {
      ok = palette.accent_green,
      error = palette.accent_red,
      warning = palette.accent_yellow,
      info = palette.accent_blue,
      hint = palette.accent_aqua,
    },

    term = {
      black = palette.bg_alt3,
      red = palette.accent_red,
      green = palette.accent_green,
      yellow = palette.accent_yellow,
      blue = palette.accent_blue,
      magenta = palette.accent_pink,
      cyan = palette.accent_aqua,
      white = palette.fg_light,
      black_bright = color(palette.bg_alt3):brighten(0.6):to_hex(),
      red_bright = color(palette.accent_red):brighten(0.2):to_hex(),
      green_bright = color(palette.accent_green):brighten(0.1):to_hex(),
      yellow_bright = color(palette.accent_yellow):brighten(0.2):to_hex(),
      blue_bright = color(palette.accent_blue):brighten(0.3):to_hex(),
      magenta_bright = color(palette.accent_pink):brighten(0.2):to_hex(),
      cyan_bright = color(palette.accent_aqua):brighten(0.1):to_hex(),
      white_bright = color(palette.fg_light):brighten(0.2):to_hex(),
      indexed1 = palette.accent_orange,
      indexed2 = palette.accent_red,
    },
  }
end

return {
  name = "Your Theme Name",
  author = "Your Name",
  description = "Description of your theme",

  base16 = {
    base00 = palette.bg_darkest,
    base01 = palette.bg_darker,
    base02 = palette.bg_dark,
    base03 = palette.bg_mid,
    base04 = palette.bg_light,
    base05 = palette.fg_mid,
    base06 = palette.fg_lightest,
    base07 = palette.fg_light,
    base08 = palette.accent_red,
    base09 = palette.accent_orange,
    base0A = palette.accent_yellow,
    base0B = palette.accent_green,
    base0C = palette.accent_aqua,
    base0D = palette.accent_blue,
    base0E = palette.accent_violet,
    base0F = palette.accent_pink,
  },

  palette = palette,

  get = M.get,
}
```
