--- Plugin highlights coordinator
--- Auto-discovers and applies plugin highlight modules
local M = {}

--- Apply all plugin highlights
--- @param colors table Normalized colors
--- @param config table Configuration
function M.apply(colors, config)
  -- Get directory of this file
  local source = debug.getinfo(1, "S").source
  if not source then
    vim.notify("[prismpunk] Could not determine plugin highlights directory", vim.log.levels.WARN)
    return
  end

  local plugin_dir = source:sub(2):match("(.*/)")
  if not plugin_dir then return end

  -- Scan for plugin highlight files
  local ok, scan = pcall(vim.loop.fs_scandir, plugin_dir)
  if not ok or not scan then
    vim.notify(string.format("[prismpunk] Failed to scan plugin directory: %s", plugin_dir), vim.log.levels.WARN)
    return
  end

  local loaded_modules = {}

  while true do
    local name, typ = vim.loop.fs_scandir_next(scan)
    if not name then break end

    -- Only process .lua files, skip init.lua
    if typ == "file" and name:sub(-4) == ".lua" and name ~= "init.lua" then
      local module_name = name:sub(1, -5)
      local module_path = "prismpunk.core.highlights.plugins." .. module_name

      -- Check if plugin is disabled in config
      if config.plugins and config.plugins[module_name] == false then goto continue end

      local load_ok, module = pcall(require, module_path)
      if load_ok and type(module.apply) == "function" then
        table.insert(loaded_modules, { name = module_name, module = module })
      else
        vim.notify(string.format("[prismpunk] Plugin highlight module invalid: %s", module_path), vim.log.levels.WARN)
      end
    end

    ::continue::
  end

  -- Apply all loaded modules
  for _, entry in ipairs(loaded_modules) do
    local apply_ok, err = pcall(entry.module.apply, colors, config)
    if not apply_ok then
      vim.notify(
        string.format("[prismpunk] Plugin highlight %s failed: %s", entry.name, tostring(err)),
        vim.log.levels.WARN
      )
    end
  end
end

return M
