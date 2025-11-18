local M = {}

local common = require("prismpunk.core.terminals.common")

--- Generate Ghostty config
--- @param base16 table
--- @return string
function M.export_config(base16)
  local ansi = common.base16_to_ansi(base16)

  local lines = {
    "# PrismPunk generated ghostty theme",
    "",
    "# Basic colors",
    "background = " .. base16.base00,
    "foreground = " .. base16.base05,
    "selection-background = " .. base16.base02,
    "selection-foreground = " .. base16.base05,
    "",
    "# Cursor",
    "cursor-color = " .. base16.base05,
    "",
    "# ANSI colors",
    "palette = 0=" .. ansi.black,
    "palette = 1=" .. ansi.red,
    "palette = 2=" .. ansi.green,
    "palette = 3=" .. ansi.yellow,
    "palette = 4=" .. ansi.blue,
    "palette = 5=" .. ansi.magenta,
    "palette = 6=" .. ansi.cyan,
    "palette = 7=" .. ansi.white,
    "palette = 8=" .. ansi.bright_black,
    "palette = 9=" .. ansi.bright_red,
    "palette = 10=" .. ansi.bright_green,
    "palette = 11=" .. ansi.bright_yellow,
    "palette = 12=" .. ansi.bright_blue,
    "palette = 13=" .. ansi.bright_magenta,
    "palette = 14=" .. ansi.bright_cyan,
    "palette = 15=" .. ansi.bright_white,
  }

  return table.concat(lines, "\n")
end

--- Reload ghostty
--- Ghostty supports live reload via config file watch; no manual reload needed
--- @return boolean
local function reload_ghostty() return true end

--- Export and reload
--- @param base16 table
--- @param conf table
--- @return boolean
function M.export(base16, conf)
  conf = conf or {}

  local path = conf.path or common.get_default_path("ghostty")
  if not path then return false end

  local contents = M.export_config(base16)
  local ok, err = common.write_config(path, contents)

  if not ok then
    vim.notify(string.format("[prismpunk] Ghostty export failed: %s", err), vim.log.levels.WARN)
    return false
  end

  reload_ghostty()

  return true
end

return M
