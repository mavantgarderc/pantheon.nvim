-- lua/prismpunk/core/terminal/init.lua
local ghostty = require("prismpunk.core.terminals.ghostty")
local alacritty = require("prismpunk.core.terminals.alacritty")
local kitty = require("prismpunk.core.terminals.kitty")
local log = require("prismpunk.utils.log")

local M = {}

--- Sync enabled terminals using theme.term (or derived palette)
function M.sync(theme, config)
  config = config or vim.g.prismpunk_config or {}
  local tcfg = config.terminal or {}
  -- ghostty
  if tcfg.ghostty and tcfg.ghostty.enabled and tcfg.ghostty.config_path then
    local ok, err = pcall(ghostty.write, theme, tcfg.ghostty.config_path)
    if not ok then log.error("ghostty write failed: " .. tostring(err)) else log.info("ghostty written to " .. tcfg.ghostty.config_path) end
  end
  -- alacritty
  if tcfg.alacritty and tcfg.alacritty.enabled and tcfg.alacritty.config_path then
    local ok, err = pcall(alacritty.write, theme, tcfg.alacritty.config_path)
    if not ok then log.error("alacritty write failed: " .. tostring(err)) else log.info("alacritty written to " .. tcfg.alacritty.config_path) end
  end
  -- kitty
  if tcfg.kitty and tcfg.kitty.enabled and tcfg.kitty.config_path then
    local ok, err = pcall(kitty.write, theme, tcfg.kitty.config_path)
    if not ok then log.error("kitty write failed: " .. tostring(err)) else log.info("kitty written to " .. tcfg.kitty.config_path) end
  end
end

return M
