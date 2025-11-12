
-- lua/prismpunk/init.lua
local config_m = require("prismpunk.config")
local loader = require("prismpunk.loader")
local highlights = require("prismpunk.core.highlights")
local terminal = require("prismpunk.core.terminals")
local log = require("prismpunk.utils.log")

local M = {}

--- Setup the plugin
--- @param opts table|nil
function M.setup(opts)
  local cfg = config_m.setup(opts or {})
  vim.g.prismpunk_config = cfg

  -- initialize loader and cache
  loader.init(cfg)

  if cfg.theme and cfg.theme ~= "" then
    local ok, err = pcall(function()
      local palette, theme_obj = loader.load(cfg.theme)
      if not theme_obj then error("no theme object returned") end

      -- If theme_obj is a module with .get, pass palette & opts
      local final_theme = theme_obj
      if type(theme_obj) == "table" and theme_obj.get then
        local ok2, got = pcall(theme_obj.get, cfg, palette)
        if not ok2 then error(("theme.get failed: %s"):format(tostring(got))) end
        final_theme = got
      end

      -- apply highlights
      highlights.apply(final_theme, cfg)

      -- sync terminals if enabled
      if cfg.terminal and cfg.terminal.enabled then
        terminal.sync(final_theme, cfg)
      end

      -- cache last applied
      vim.g.prismpunk_cache = vim.g.prismpunk_cache or {}
      vim.g.prismpunk_cache.last_applied = { theme = cfg.theme, time = vim.loop.hrtime() }
    end)

    if not ok then
      log.error("Failed to load theme: " .. tostring(err))
      error(err)
    end
  else
    log.info("Prismpunk: no theme specified in setup()")
  end

  -- user commands
  vim.api.nvim_create_user_command("PrismReloadTheme", function(opts)
    local theme_name = opts.args ~= "" and opts.args or vim.g.prismpunk_config and vim.g.prismpunk_config.theme
    if not theme_name or theme_name == "" then
      vim.notify("PrismReloadTheme: no theme specified and none configured", vim.log.levels.ERROR)
      return
    end
    local ok, err = pcall(function()
      local palette, theme_obj = loader.load(theme_name, { reload = true })
      local final_theme = theme_obj
      if type(theme_obj) == "table" and theme_obj.get then
        final_theme = theme_obj.get(vim.g.prismpunk_config, palette)
      end
      highlights.apply(final_theme, vim.g.prismpunk_config)
      if vim.g.prismpunk_config.terminal and vim.g.prismpunk_config.terminal.enabled then
        terminal.sync(final_theme, vim.g.prismpunk_config)
      end
    end)
    if not ok then
      vim.notify("PrismReloadTheme failed: " .. tostring(err), vim.log.levels.ERROR)
    else
      vim.notify("PrismReloadTheme: reloaded " .. tostring(theme_name), vim.log.levels.INFO)
    end
  end, { nargs = "?" })

  vim.api.nvim_create_user_command("PrismSyncTerminals", function()
    local last = vim.g.prismpunk_cache and vim.g.prismpunk_cache.last_applied
    if not last or not last.theme then
      vim.notify("PrismSyncTerminals: no theme applied yet", vim.log.levels.ERROR)
      return
    end
    local ok, err = pcall(function()
      local palette, theme_obj = loader.load(last.theme)
      local final_theme = (type(theme_obj) == "table" and theme_obj.get) and theme_obj.get(vim.g.prismpunk_config, palette) or theme_obj
      terminal.sync(final_theme, vim.g.prismpunk_config)
      vim.notify("PrismSyncTerminals: terminals updated", vim.log.levels.INFO)
    end)
    if not ok then vim.notify("PrismSyncTerminals failed: " .. tostring(err), vim.log.levels.ERROR) end
  end, {})

  vim.api.nvim_create_user_command("PrismInfo", function()
    local cache = vim.g.prismpunk_cache or {}
    local last = cache.last_applied or {}
    local text = ("Prismpunk - theme: %s"):format(tostring(last.theme or "none"))
    vim.notify(text, vim.log.levels.INFO)
  end, {})

  return M
end

return M
