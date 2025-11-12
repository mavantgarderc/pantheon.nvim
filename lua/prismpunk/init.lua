local M = {}

local punkconf = require("prismpunk.config")
local punkload = require("prismpunk.loader")

M.setup = function(user_config)
  local config = punkconf.setup(user_config or {})

  _G.prismpunk_config = config

  punkload.load(config.theme)
end

M.load = function(theme_name) punkload.load(theme_name) end

return M
