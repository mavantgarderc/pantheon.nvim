--- Terminal emulator integration
--- Orchestrates terminal config export and reload
local M = {}

local config = require("prismpunk.config")
local common = require("prismpunk.core.terminals.common")

--- Detect current terminal from environment
--- @return string|nil terminal_name
local function detect_terminal()
  local term_program = vim.env.TERM_PROGRAM
  local term = vim.env.TERM

  if term_program then
    if term_program:match("ghostty") then
      return "ghostty"
    elseif term_program:match("Alacritty") then
      return "alacritty"
    elseif term_program:match("kitty") then
      return "kitty"
      -- elseif term_program:match("iTerm") then
      --   return "iterm"
      -- elseif term_program:match("WezTerm") then
      --   return "wezterm"
    end
  end

  if term then
    if term:match("kitty") then
      return "kitty"
    elseif term:match("alacritty") then
      return "alacritty"
    end
  end

  return nil
end

--- Get terminal module
--- @param terminal_name string
--- @return table|nil
local function get_terminal_module(terminal_name)
  local module_path = "prismpunk.core.terminals." .. terminal_name
  local ok, module = pcall(require, module_path)

  if ok and type(module.export) == "function" then return module end

  return nil
end

--- Apply base16 to all configured terminals
--- @param base16 table Base16 color table
function M.apply(base16)
  local conf = config.options.terminals

  if not conf or not conf.enabled then return end

  -- Validate base16
  local utils_base16 = require("prismpunk.utils.base16")
  local valid, err = utils_base16.validate(base16)
  if not valid then
    vim.notify(string.format("[prismpunk] Invalid base16 for terminal export: %s", err), vim.log.levels.WARN)
    return
  end

  local terminals_to_export = {}

  -- Auto-detect if enabled
  if conf.auto_detect then
    local detected = detect_terminal()
    if detected then table.insert(terminals_to_export, detected) end
  end

  -- Add explicitly enabled terminals
  for _, term_name in ipairs({ "alacritty", "kitty", "ghostty" }) do
    if conf[term_name] and conf[term_name].enabled then
      if not vim.tbl_contains(terminals_to_export, term_name) then table.insert(terminals_to_export, term_name) end
    end
  end

  -- Export to each terminal
  for _, term_name in ipairs(terminals_to_export) do
    local module = get_terminal_module(term_name)
    if module then
      local term_config = conf[term_name] or {}
      local ok, err = pcall(module.export, base16, term_config)
      if not ok then
        vim.notify(
          string.format("[prismpunk] Failed to export %s config: %s", term_name, tostring(err)),
          vim.log.levels.WARN
        )
      end
    else
      vim.notify(string.format("[prismpunk] Terminal module not found: %s", term_name), vim.log.levels.WARN)
    end
  end
end

--- Preview terminal config without writing
--- @param theme_name string
--- @param terminal_name string
--- @return string|nil
function M.preview(theme_name, terminal_name)
  -- Load theme to get base16
  local loader = require("prismpunk.loader")
  local success, theme = loader.load(theme_name, { force_reload = false })

  if not success then return nil end

  -- Get theme module for base16
  local parsed = config.parse_theme(theme_name)
  local theme_path = string.format("prismpunk.themes.%s.%s", parsed.universe or "", parsed.name)
  local ok, theme_module = pcall(require, theme_path)

  if not ok or not theme_module.base16 then return nil end

  -- Get terminal module
  local module = get_terminal_module(terminal_name)
  if not module or not module.export_config then return nil end

  -- Generate config
  local config_ok, content = pcall(module.export_config, theme_module.base16)
  if config_ok then return content end

  return nil
end

return M
