
-- lua/prismpunk/utils/log.lua
local M = {}

local function notify(msg, level)
  level = level or vim.log.levels.INFO
  if vim and vim.notify then
    vim.notify("[prismpunk] " .. tostring(msg), level)
  else
    print("[prismpunk] " .. tostring(msg))
  end
end

function M.info(msg) notify(msg, vim.log.levels.INFO) end
function M.warn(msg) notify(msg, vim.log.levels.WARN) end
function M.error(msg) notify(msg, vim.log.levels.ERROR) end

return M
