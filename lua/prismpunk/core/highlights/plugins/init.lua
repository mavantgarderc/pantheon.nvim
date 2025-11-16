local M = {}

function M.apply(colors, config)
  local plugin_dir = debug.getinfo(1, "S").source:sub(2)
  plugin_dir = plugin_dir:match("(.*/)")

  ---@diagnostic disable-next-line: undefined-field
  local scan = vim.loop.fs_scandir(plugin_dir)
  if not scan then return end

  while true do
    ---@diagnostic disable-next-line: undefined-field
    local name, typ = vim.loop.fs_scandir_next(scan)
    if not name then break end

    if typ == "file" and name:sub(-4) == ".lua" and name ~= "init.lua" then
      local modname = "prismpunk.core.highlights.plugins." .. name:sub(1, -5)

      local ok, mod = pcall(require, modname)
      if ok and type(mod.apply) == "function" then
        mod.apply(colors, config)
      else
        vim.notify("prismpunk: plugin highlight module failed: " .. modname, vim.log.levels.WARN)
      end
    end
  end
end

return M
