local M = {}

M.setup = function(user_config)
  local config = require("prismpunk.config").setup(user_config or {})

  _G.prismpunk_config = config

  require("prismpunk.loader").load(config.theme)
end

M.load = function(theme_name) require("prismpunk.loader").load(theme_name) end

return M
