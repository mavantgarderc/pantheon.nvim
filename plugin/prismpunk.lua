-- plugin/prismpunk.lua
-- create commands on startup to ensure users can call them even without setup
if vim.g.prismpunk_plugin_loaded then return end
vim.g.prismpunk_plugin_loaded = true

-- Basic shim commands that call the module functions when available
vim.api.nvim_create_user_command("PrismpunkReload", function(opts)
  if package.loaded["prismpunk"] then
    local ok, mod = pcall(require, "prismpunk")
    if ok and mod and mod.setup then
      mod.setup(vim.g.prismpunk_config or {})
      vim.notify("PrismpunkReload: setup() invoked", vim.log.levels.INFO)
      return
    end
  end
  vim.notify("PrismpunkReload: prismpunk module not loaded", vim.log.levels.WARN)
end, { nargs = "?" })

vim.api.nvim_create_user_command("PantheonReload", function(opts)
  vim.cmd("PrismpunkReload " .. (opts.args or ""))
end, { nargs = "?" })
