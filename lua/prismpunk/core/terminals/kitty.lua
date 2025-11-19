local M = {}

local common = require("prismpunk.core.terminals.common")

--- Generate Kitty config
--- @param base16 table
--- @return string
function M.export_config(base16)
  local ansi = common.base16_to_ansi(base16)

  local lines = {
    "# PrismPunk generated kitty theme",
    "",
    "# Basic colors",
    "background " .. base16.base00,
    "foreground " .. base16.base05,
    "selection_background " .. base16.base02,
    "selection_foreground " .. base16.base05,
    "",
    "# Cursor colors",
    "cursor " .. base16.base05,
    "cursor_text_color " .. base16.base00,
    "",
    "# URL underline color",
    "url_color " .. base16.base0D,
    "",
    "# ANSI colors",
    "color0 " .. ansi.black,
    "color1 " .. ansi.red,
    "color2 " .. ansi.green,
    "color3 " .. ansi.yellow,
    "color4 " .. ansi.blue,
    "color5 " .. ansi.magenta,
    "color6 " .. ansi.cyan,
    "color7 " .. ansi.white,
    "",
    "# Bright colors",
    "color8 " .. ansi.bright_black,
    "color9 " .. ansi.bright_red,
    "color10 " .. ansi.bright_green,
    "color11 " .. ansi.bright_yellow,
    "color12 " .. ansi.bright_blue,
    "color13 " .. ansi.bright_magenta,
    "color14 " .. ansi.bright_cyan,
    "color15 " .. ansi.bright_white,
  }

  return table.concat(lines, "\n")
end

--- Reload kitty colors (live reload via SIGUSR1)
--- @param path string Config path
--- @return boolean
local function reload_kitty(_path)
  local kitty_pid = vim.fn.system("pgrep -x kitty"):gsub("%s+", "")

  if kitty_pid and kitty_pid ~= "" then
    local ok = os.execute("kill -SIGUSR1 " .. kitty_pid)
    return ok == 0 or ok == true
  end

  return false
end

--- Export and reload
--- @param base16 table
--- @param conf table
--- @return boolean
function M.export(base16, conf)
  conf = conf or {}

  local path = conf.path or common.get_default_path("kitty")
  if not path then return false end

  local contents = M.export_config(base16)
  local ok, err = common.write_config(path, contents)

  if not ok then
    vim.notify(string.format("[prismpunk] Kitty export failed: %s", err), vim.log.levels.WARN)
    return false
  end

  common.safe_reload(function() reload_kitty(path) end)

  return true
end

return M
