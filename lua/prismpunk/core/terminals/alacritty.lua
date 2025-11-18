local M = {}

local common = require("prismpunk.core.terminals.common")

--- Generate Alacritty TOML config
--- @param base16 table
--- @return string
function M.export_config(base16)
  local ansi = common.base16_to_ansi(base16)

  local config = {
    colors = {
      primary = {
        background = base16.base00,
        foreground = base16.base05,
      },
      normal = {
        black = ansi.black,
        red = ansi.red,
        green = ansi.green,
        yellow = ansi.yellow,
        blue = ansi.blue,
        magenta = ansi.magenta,
        cyan = ansi.cyan,
        white = ansi.white,
      },
      bright = {
        black = ansi.bright_black,
        red = ansi.bright_red,
        green = ansi.bright_green,
        yellow = ansi.bright_yellow,
        blue = ansi.bright_blue,
        magenta = ansi.bright_magenta,
        cyan = ansi.bright_cyan,
        white = ansi.bright_white,
      },
    },
  }

  return common.to_toml(config)
end

--- Export and optionally reload
--- @param base16 table
--- @param conf table
--- @return boolean success
function M.export(base16, conf)
  conf = conf or {}

  local path = conf.path or common.get_default_path("alacritty")
  if not path then return false end

  local contents = M.export_config(base16)
  local ok, err = common.write_config(path, contents)

  if not ok then
    vim.notify(string.format("[prismpunk] Alacritty export failed: %s", err), vim.log.levels.WARN)
    return false
  end

  -- Alacritty doesn't support live reload via signal
  -- User must restart or use a plugin :)))))))))))
  return true
end

return M
