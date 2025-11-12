-- lua/prismpunk/config.lua
local M = {}
local utils = require("prismpunk.utils.log")

local defaults = {
  theme = nil,
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
    ghostty = { enabled = true, auto_reload = true, config_path = vim.fn.expand("~/.config/ghostty/themes/prismpunk.toml") },
    alacritty = { enabled = false, auto_reload = false, config_path = vim.fn.expand("~/.config/alacritty/prismpunk.toml") },
    kitty = { enabled = false, auto_reload = false, config_path = vim.fn.expand("~/.config/kitty/prismpunk.conf") },
  },
  cache = {
    enabled = true,
  },
}

local function deep_merge(dst, src)
  for k, v in pairs(src) do
    if type(v) == "table" and type(dst[k]) == "table" then
      deep_merge(dst[k], v)
    else
      dst[k] = v
    end
  end
  return dst
end

--- Setup config
--- @param user table|nil
function M.setup(user)
  local copy = {}
  deep_merge(copy, defaults)
  if user and type(user) == "table" then deep_merge(copy, user) end
  -- store globally
  vim.g.prismpunk_config = copy
  return copy
end

return M
