--- Validates installation and configuration
local M = {}

local health_start = vim.health.start or vim.health.report_start
local health_ok = vim.health.ok or vim.health.report_ok
local health_warn = vim.health.warn or vim.health.report_warn
local health_error = vim.health.error or vim.health.report_error
local health_info = vim.health.info or vim.health.report_info

--- Check Neovim version
local function check_nvim_version()
  health_start("Neovim version")

  local required = { 0, 9, 0 }
  local current = vim.version()

  if current.major > required[1] or (current.major == required[1] and current.minor >= required[2]) then
    health_ok(string.format("Neovim %d.%d.%d (>= 0.9.0)", current.major, current.minor, current.patch))
  else
    health_error(
      string.format("Neovim %d.%d.%d", current.major, current.minor, current.patch),
      { "PrismPunk requires Neovim >= 0.9.0" }
    )
  end
end

-- configuration check
local function check_config()
  health_start("Configuration")

  local ok, config = pcall(require, "prismpunk.config")
  if not ok then
    health_error("Failed to load config module", { tostring(config) })
    return
  end

  if config.options then
    health_ok("Configuration loaded")
    health_info(string.format("Theme: %s", config.options.theme or "none"))
    health_info(string.format("Cache enabled: %s", tostring(config.options.cache.enable)))
    health_info(string.format("Terminals enabled: %s", tostring(config.options.terminals.enabled)))
  else
    health_warn("Configuration not initialized", { "Run require('prismpunk').setup()" })
  end
end

-- core modules check
local function check_modules()
  health_start("Core modules")

  local modules = {
    "prismpunk.palette",
    "prismpunk.loader",
    "prismpunk.core.highlights",
    "prismpunk.core.terminals",
    "prismpunk.utils.color",
    "prismpunk.utils.base16",
    "prismpunk.utils.hsluv",
  }

  for _, mod_path in ipairs(modules) do
    local ok, mod = pcall(require, mod_path)
    if ok then
      health_ok(mod_path)
    else
      health_error(mod_path, { tostring(mod) })
    end
  end
end

-- cache directories check
local function check_cache()
  health_start("Cache")

  local cache_root = vim.fn.stdpath("cache") .. "/prismpunk"

  if vim.fn.isdirectory(cache_root) == 1 then
    health_ok(string.format("Cache directory exists: %s", cache_root))

    local palette_cache = cache_root .. "/palettes"
    local highlight_cache = cache_root .. "/highlights"

    local palette_count = vim.fn.len(vim.fn.glob(palette_cache .. "/*.lua", false, true))
    local highlight_count = vim.fn.len(vim.fn.glob(highlight_cache .. "/*.lua", false, true))

    health_info(string.format("Cached palettes: %d", palette_count))
    health_info(string.format("Cached highlights: %d", highlight_count))
  else
    health_info("Cache directory will be created on first use")
  end

  local test_dir = cache_root .. "/test"
  local ok = pcall(vim.fn.mkdir, test_dir, "p")
  if ok then
    vim.fn.delete(test_dir, "rf")
    health_ok("Cache directory is writable")
  else
    health_warn("Cache directory may not be writable", { "Check permissions: " .. cache_root })
  end
end

-- terminal configuration check
local function check_terminals()
  health_start("Terminal integration")

  local ok, config = pcall(require, "prismpunk.config")
  if not ok or not config.options then
    health_warn("Configuration not loaded")
    return
  end

  local term_conf = config.options.terminals

  if not term_conf.enabled then
    health_info("Terminal integration disabled")
    return
  end

  -- auto-detect check
  if term_conf.auto_detect then
    local terminals = require("prismpunk.core.terminals") -- luacheck: ignore
    health_ok("Auto-detect enabled")

    local term_program = vim.env.TERM_PROGRAM or vim.env.TERM or "unknown"
    health_info(string.format("Detected terminal: %s", term_program))
  end

  -- each terminal check
  for _, term_name in ipairs({ "alacritty", "kitty", "ghostty" }) do
    if term_conf[term_name] and term_conf[term_name].enabled then
      local common = require("prismpunk.core.terminals.common")
      local path = term_conf[term_name].path or common.get_default_path(term_name)

      if path then
        local dir = vim.fn.fnamemodify(path, ":h")
        if vim.fn.isdirectory(dir) == 1 then
          health_ok(string.format("%s: %s", term_name, path))
        else
          health_warn(string.format("%s: directory does not exist", term_name), { string.format("Create: %s", dir) })
        end
      else
        health_warn(
          string.format("%s: no path configured", term_name),
          { "Set path in config.terminals." .. term_name .. ".path" }
        )
      end
    end
  end
end

--- theme loading check
local function check_theme()
  health_start("Theme loading")

  local ok, config = pcall(require, "prismpunk.config")
  if not ok or not config.options or not config.options.theme then
    health_info("No theme configured")
    return
  end

  local loader = require("prismpunk.loader")
  local success, result = loader.load(config.options.theme, { force_reload = false })

  if success then
    health_ok(string.format("Theme loaded: %s", config.options.theme))

    -- cache stats check
    local stats = loader.get_cache_stats()
    health_info(
      string.format(
        "Cache stats - Palette: %d hits/%d misses, Highlights: %d hits/%d misses",
        stats.palette_hits,
        stats.palette_misses,
        stats.highlight_hits,
        stats.highlight_misses
      )
    )
  else
    health_error(string.format("Failed to load theme: %s", config.options.theme), { tostring(result) })
  end
end

function M.check()
  check_nvim_version()
  check_config()
  check_modules()
  check_cache()
  check_terminals()
  check_theme()
end

return M
