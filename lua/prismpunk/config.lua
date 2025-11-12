local M = {}

M.defaults = {
  theme = "kanagawa/paper-edo",

  styles = {
    comments = { italic = true },
    keywords = { bold = false },
    functions = { bold = false },
    variables = {},
  },

  overrides = {
    colors = {},
    highlights = {},
  },

  integrations = {
    cmp = true,
    telescope = true,
    gitsigns = true,
    lualine = true,
  },

  terminal = {
    enabled = true,
    emulator = { "ghostty" },

    ghostty = {
      enabled = true,
      auto_reload = true,
      config_path = vim.fn.expand("~/.config/ghostty/themes/prismpunk.toml"),
    },

    kitty = {
      enabled = false,
      auto_reload = false,
      config_path = vim.fn.expand("~/.config/kitty/prismpunk.conf"),
    },

    alacritty = {
      enabled = false,
      auto_reload = false,
      config_path = vim.fn.expand("~/.config/alacritty/prismpunk.toml"),
    },

    zellij = {
      enabled = false,
      auto_reload = false,
      config_path = vim.fn.expand("~/.config/zellij/themes/prismpunk.kdl"),
    },
  },
}

M.parse_theme = function(theme)
  if type(theme) == "table" then return theme.universe, theme.variant end

  local universe, variant = theme:match("([^/]+)/([^/]+)")
  if not universe then
    universe, variant = theme:match("([^.]+)%.([^.]+)")
  end

  if not universe or not variant then error("Invalid theme format: " .. theme) end

  return universe, variant
end

M.setup = function(user_config)
  local config = vim.tbl_deep_extend("force", M.defaults, user_config or {})

  local ok, universe, _ = pcall(M.parse_theme, config.theme)
  if not ok then
    vim.notify("Prismpunk: " .. universe, vim.log.levels.ERROR)
    config.theme = M.defaults.theme
  end

  return config
end

return M
