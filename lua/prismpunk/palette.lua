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

  if spec.get then
    local opts = {}
    local semantic_data = spec.get(opts, theme.palette)
    theme.semantic = M.ensure_complete_semantic(semantic_data, theme.colors)
  elseif spec.semantic then
    theme.semantic = M.ensure_complete_semantic(spec.semantic, theme.colors)
  elseif next(spec.palette) then
    local palette_semantic = M.generate_semantic(spec.palette, spec.base16)
    theme.semantic = M.ensure_complete_semantic(palette_semantic, theme.colors)
  else
    theme.semantic = M.ensure_complete_semantic({}, theme.colors)
  end

  return theme
end

-- Add this new function to ensure semantic structure is complete
M.ensure_complete_semantic = function(semantic, base16)
  local base_semantic = M.base16_to_semantic(base16 or {})

  -- Deep merge with base_semantic as fallback
  local function deep_merge(t1, t2)
    if type(t1) ~= "table" then t1 = {} end
    if type(t2) ~= "table" then return t1 end

    for k, v in pairs(t2) do
      if type(v) == "table" then
        if type(t1[k]) ~= "table" then t1[k] = {} end
        deep_merge(t1[k], v)
      else
        if t1[k] == nil then t1[k] = v end
      end
    end
    return t1
  end

  return deep_merge(semantic or {}, base_semantic)
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
  -- Provide default fallback colors for base16
  local defaults = {
    base00 = "#000000", -- bg
    base01 = "#111111", -- bg_dim
    base02 = "#222222", -- bg_highlight
    base03 = "#333333", -- line_nr, comment
    base04 = "#444444", -- fg_dim
    base05 = "#555555", -- fg, variable, operator
    base06 = "#666666", -- fg_bright
    base07 = "#777777", --
    base08 = "#ff0000", -- error, git_delete, diff_delete
    base09 = "#ff8800", -- number, boolean, constant
    base0A = "#ffff00", -- type, warning, git_change, diff_change
    base0B = "#00ff00", -- string, git_add, diff_add
    base0C = "#00ffff", -- special, info
    base0D = "#0000ff", -- func, hint, diff_text
    base0E = "#ff00ff", -- keyword
    base0F = "#8800ff", --
  }

  -- Merge provided base16 with defaults
  local merged_base16 = {}
  for k, v in pairs(defaults) do
    merged_base16[k] = base16[k] or v
  end

  return {
    syn = {
      string = merged_base16.base0B,
      number = merged_base16.base09,
      boolean = merged_base16.base09,
      keyword = merged_base16.base0E,
      operator = merged_base16.base05,
      func = merged_base16.base0D,
      type = merged_base16.base0A,
      variable = merged_base16.base05,
      comment = merged_base16.base03,
      constant = merged_base16.base09,
      special = merged_base16.base0C,
    },
    ui = {
      bg = merged_base16.base00,
      bg_dim = merged_base16.base01,
      bg_highlight = merged_base16.base02,
      fg = merged_base16.base05,
      fg_dim = merged_base16.base04,
      fg_bright = merged_base16.base06,
      border = merged_base16.base02,
      float = merged_base16.base01,
      selection = merged_base16.base02,
      cursorline = merged_base16.base01,
      line_nr = merged_base16.base03,
      line_nr_active = merged_base16.base0B,
    },
    diag = {
      error = merged_base16.base08,
      warning = merged_base16.base0E,
      info = merged_base16.base0C,
      hint = merged_base16.base0D,
    },
    git = {
      add = merged_base16.base0B,
      change = merged_base16.base0E,
      delete = merged_base16.base08,
    },
    diff = {
      add = merged_base16.base0B,
      change = merged_base16.base0E,
      delete = merged_base16.base08,
      text = merged_base16.base0D,
    },
  }
end

return M
