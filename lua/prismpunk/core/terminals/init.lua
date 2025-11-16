local M = {}

local punkpalette = require("prismpunk.palette")
local punkconf = require("prismpunk.config")

local ghostty = require("prismpunk.core.terminals.ghostty")
local alacritty = require("prismpunk.core.terminals.alacritty")
local kitty = require("prismpunk.core.terminals.kitty")

M.apply = function(theme)
  local c = theme.colors

  -- luacheck: push ignore
  vim.g.terminal_color_0 = c.base00
  vim.g.terminal_color_1 = c.base08
  vim.g.terminal_color_2 = c.base0B
  vim.g.terminal_color_3 = c.base0A
  vim.g.terminal_color_4 = c.base0D
  vim.g.terminal_color_5 = c.base0E
  vim.g.terminal_color_6 = c.base0C
  vim.g.terminal_color_7 = c.base05
  vim.g.terminal_color_8 = c.base03
  vim.g.terminal_color_9 = c.base08
  vim.g.terminal_color_10 = c.base0B
  vim.g.terminal_color_11 = c.base0A
  vim.g.terminal_color_12 = c.base0D
  vim.g.terminal_color_13 = c.base0E
  vim.g.terminal_color_14 = c.base0C
  vim.g.terminal_color_15 = c.base07
  vim.g.terminal_color_background = c.base00
  vim.g.terminal_color_foreground = c.base05
  -- luacheck: pop
end

M.auto_export = function(theme, config)
  if not config.terminal.enabled then return end

  local emulators = config.terminal.emulator
  if type(emulators) == "string" then emulators = { emulators } end

  for _, emulator in ipairs(emulators) do
    local conf = config.terminal[emulator]
    if conf and conf.enabled then
      if emulator == "ghostty" then
        ghostty.export_and_reload(theme, conf)
      elseif emulator == "alacritty" then
        alacritty.export_and_reload(theme, conf)
      elseif emulator == "kitty" then
        kitty.export_and_reload(theme, conf)
      end
    end
  end
end

M.export_ghostty = ghostty.export
M.save_ghostty = ghostty.save

M.export_alacritty = alacritty.export
M.save_alacritty = alacritty.save

M.export_kitty = kitty.export
M.save_kitty = kitty.save

M.get_palette = function(theme_name)
  local universe, variant = punkconf.parse_theme(theme_name)
  local theme_path = "prismpunk.themes." .. universe:gsub("%-", "%.") .. "." .. variant
  local ok, spec = pcall(require, theme_path)
  if not ok then return nil end

  local theme = punkpalette.create_theme(spec)
  return {
    base16 = theme.colors,
    palette = theme.palette,
    semantic = theme.semantic,
    metadata = {
      name = theme.name,
      author = theme.author,
      description = theme.description,
    },
  }
end

M.print_palette = function(theme_name)
  local p = M.get_palette(theme_name)
  if not p then
    vim.notify("Failed to load theme", vim.log.levels.ERROR)
    return
  end

  print("=== " .. p.metadata.name .. " ===\n")

  if p.palette and next(p.palette) then
    print("--- Rich Palette ---")
    for name, color in pairs(p.palette) do
      print(string.format("%-20s %s", name, color))
    end
    print("")
  end

  print("--- Base16 Colors ---")
  for i = 0, 15 do
    local key = i == 0 and "base00" or string.format("base%02X", i)
    if p.base16[key] then print(string.format("%-8s %s", key, p.base16[key])) end
  end
end

return M
