--- DRY helpers shared across all terminal modules
local M = {}

--- Ensure directory exists and write file
--- @param path string File path
--- @param contents string File contents
--- @return boolean success
--- @return string|nil error
function M.write_config(path, contents)
  if not path or path == "" then return false, "Invalid path" end

  -- Create parent directory
  local dir = vim.fn.fnamemodify(path, ":h")
  local mkdir_ok = vim.fn.mkdir(dir, "p")

  if mkdir_ok == 0 then return false, string.format("Failed to create directory: %s", dir) end

  -- Write file
  local file, err = io.open(path, "w")
  if not file then return false, string.format("Failed to open file: %s", err or "unknown") end

  file:write(contents)
  file:close()

  return true
end

--- Safe reload wrapper
--- @param reload_fn function
--- @return boolean success
function M.safe_reload(reload_fn)
  if type(reload_fn) ~= "function" then return false end

  local ok, err = pcall(reload_fn)
  if not ok then
    vim.notify(string.format("[prismpunk] Terminal reload failed: %s", tostring(err)), vim.log.levels.WARN)
    return false
  end

  return true
end

--- Simple TOML serializer for flat tables
--- @param tbl table
--- @return string
function M.to_toml(tbl)
  local lines = {}

  for section, values in pairs(tbl) do
    if type(values) == "table" then
      table.insert(lines, string.format("[%s]", section))
      for key, val in pairs(values) do
        if type(val) == "string" then
          table.insert(lines, string.format('%s = "%s"', key, val))
        elseif type(val) == "number" then
          table.insert(lines, string.format("%s = %s", key, val))
        elseif type(val) == "boolean" then
          table.insert(lines, string.format("%s = %s", key, tostring(val)))
        end
      end
      table.insert(lines, "")
    elseif type(values) == "string" then
      table.insert(lines, string.format('%s = "%s"', section, values))
    end
  end

  return table.concat(lines, "\n")
end

--- Convert base16 to ANSI 16-color mapping
--- @param base16 table
--- @return table ansi_colors
function M.base16_to_ansi(base16)
  return {
    black = base16.base00,
    red = base16.base08,
    green = base16.base0B,
    yellow = base16.base0A,
    blue = base16.base0D,
    magenta = base16.base0E,
    cyan = base16.base0C,
    white = base16.base05,
    bright_black = base16.base03,
    bright_red = base16.base08,
    bright_green = base16.base0B,
    bright_yellow = base16.base0A,
    bright_blue = base16.base0D,
    bright_magenta = base16.base0E,
    bright_cyan = base16.base0C,
    bright_white = base16.base07,
  }
end

--- Get default config path for terminal
--- @param terminal_name string
--- @return string|nil
function M.get_default_path(terminal_name)
  local home = vim.env.HOME or vim.fn.expand("~")

  local paths = {
    alacritty = home .. "/.config/alacritty/alacritty.toml",
    kitty = home .. "/.config/kitty/kitty.conf",
    ghostty = home .. "/.config/ghostty/config",
    wezterm = home .. "/.wezterm.lua",
    iterm = nil, -- iTerm uses plist -- TODO
  }

  return paths[terminal_name]
end

return M
