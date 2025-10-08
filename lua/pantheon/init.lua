local M = {}

M.setup = function(user_config)
    local config = require('pantheon.config').setup(user_config or {})

    _G.pantheon_config = config

    require('pantheon.loader').load(config.theme)
end

M.load = function(theme_name)
    require('pantheon.loader').load(theme_name)
end

return M
