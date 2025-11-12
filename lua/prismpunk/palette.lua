-- lua/prismpunk/palette.lua
local log = require("prismpunk.utils.log")

local M = {}

local function is_hex_color(s)
  return type(s) == "string" and s:match("^#%x%x%x%x%x%x$")
end

local function normalize(name)
  return tostring(name):gsub("%.", "/")
end

local function modpath(name)
  return "prismpunk.palettes." .. normalize(name):gsub("/", ".")
end

local function validate(tbl, id)
  if type(tbl) ~= "table" then error(("prismpunk: palette '%s' must return a table"):format(tostring(id))) end
  for k, v in pairs(tbl) do
    if type(v) == "string" then
      if not is_hex_color(v) then
        error(("prismpunk: palette '%s' key '%s' is not valid hex: %s"):format(tostring(id), tostring(k), tostring(v)))
      end
    end
  end
  return true
end

--- Load a palette module by id. Accepts keyed tables or ordered lists.
--- @param id string
--- @return table palette
function M.get_palette(id)
  if not id or id == "" then error("prismpunk.palette.get_palette: id required") end
  local mod = modpath(id)
  local ok, res = pcall(require, mod)
  if not ok then error(("prismpunk: failed to require palette '%s' (%s)"):format(tostring(id), tostring(res))) end
  validate(res, id)
  return res
end

--- Helper: read key or index from palette
--- @param palette table
--- @param key string|number
--- @return string|nil
function M.get(palette, key)
  if not palette then return nil end
  if type(key) == "number" then return palette[key] end
  if palette[key] ~= nil then return palette[key] end
  local n = tonumber(key)
  if n then return palette[n] end
  return nil
end

return M
