local M = {}

M.create_theme = function(spec)
  local theme = {
    colors = spec.base16 or {},

    palette = spec.palette or {},

    semantic = {},

    name = spec.name or "Unnamed Theme",
    author = spec.author or "Unknown",
    description = spec.description or "",
  }

  if spec.semantic then
    theme.semantic = spec.semantic
  elseif next(spec.palette) then
    theme.semantic = M.generate_semantic(spec.palette, spec.base16)
  else
    theme.semantic = M.base16_to_semantic(spec.base16)
  end

  return theme
end

M.generate_semantic = function(palette, base16)
  return {
    syn = {
      string = palette.string or base16.base0B,
      number = palette.number or base16.base09,
      boolean = palette.boolean or base16.base09,
      keyword = palette.keyword or base16.base0E,
      operator = palette.operator or base16.base05,
      func = palette.func or base16.base0D,
      type = palette.type or base16.base0A,
      variable = palette.variable or base16.base05,
      comment = palette.comment or base16.base03,
      constant = palette.constant or base16.base09,
      special = palette.special or base16.base0C,
    },

    ui = {
      bg = palette.bg or base16.base00,
      bg_dim = palette.bg_dim or base16.base01,
      bg_highlight = palette.bg_highlight or base16.base02,

      fg = palette.fg or base16.base05,
      fg_dim = palette.fg_dim or base16.base04,
      fg_bright = palette.fg_bright or base16.base06,

      border = palette.border or base16.base02,
      float = palette.float_bg or base16.base01,

      selection = palette.selection or base16.base02,
      cursorline = palette.cursorline or base16.base01,

      line_nr = palette.line_nr or base16.base03,
      line_nr_active = palette.line_nr_active or base16.base0B,
    },

    diag = {
      error = palette.error or base16.base08,
      warning = palette.warning or base16.base0E,
      info = palette.info or base16.base0C,
      hint = palette.hint or base16.base0D,
    },

    git = {
      add = palette.git_add or base16.base0B,
      change = palette.git_change or base16.base0E,
      delete = palette.git_delete or base16.base08,
    },

    diff = {
      add = palette.diff_add or base16.base0B,
      change = palette.diff_change or base16.base0E,
      delete = palette.diff_delete or base16.base08,
      text = palette.diff_text or base16.base0D,
    },
  }
end

M.base16_to_semantic = function(base16)
  return {
    syn = {
      string = base16.base0B,
      number = base16.base09,
      boolean = base16.base09,
      keyword = base16.base0E,
      operator = base16.base05,
      func = base16.base0D,
      type = base16.base0A,
      variable = base16.base05,
      comment = base16.base03,
      constant = base16.base09,
      special = base16.base0C,
    },
    ui = {
      bg = base16.base00,
      bg_dim = base16.base01,
      bg_highlight = base16.base02,
      fg = base16.base05,
      fg_dim = base16.base04,
      fg_bright = base16.base06,
      border = base16.base02,
      float = base16.base01,
      selection = base16.base02,
      cursorline = base16.base01,
      line_nr = base16.base03,
      line_nr_active = base16.base0B,
    },
    diag = {
      error = base16.base08,
      warning = base16.base0E,
      info = base16.base0C,
      hint = base16.base0D,
    },
    git = {
      add = base16.base0B,
      change = base16.base0E,
      delete = base16.base08,
    },
    diff = {
      add = base16.base0B,
      change = base16.base0E,
      delete = base16.base08,
      text = base16.base0D,
    },
  }
end

return M
