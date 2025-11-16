local M = {}

function M.test_theme(theme_name)
  theme_name = theme_name or "dc.lantern-corps.phantom-corrupted"

  print("_| Testing PrismPunk Theme: " .. theme_name)
  print("=" .. string.rep("=", 50))

  local theme_path = "prismpunk.themes." .. theme_name
  local ok, theme = pcall(require, theme_path)
  if not ok then
    print("_* FAILED to load theme: " .. tostring(theme))
    return false
  end
  print("_* Theme loaded successfully")
  print("   Name: " .. (theme.name or "N/A"))
  print("   Author: " .. (theme.author or "N/A"))

  if theme.palette then
    print("_* Palette reference found")
  else
    print("_* No palette reference")
  end

  if type(theme.get) == "function" then
    local opts = { gutter = true }
    local success, semantic = pcall(theme.get, opts, theme.palette or {})
    if success then
      print("_* get() function executed successfully")

      local structures = { "ui", "syn", "diag", "git", "diff" }
      for _, struct in ipairs(structures) do
        if semantic[struct] then
          print("   -| " .. struct .. " structure present")
        else
          print("   -| " .. struct .. " structure missing")
        end
      end

      local critical_fields = {
        { "ui", "bg" },
        { "ui", "fg" },
        { "ui", "float" },
        { "syn", "comment" },
        { "diag", "error" },
      }

      for _, field in ipairs(critical_fields) do
        local category, key = field[1], field[2]
        if semantic[category] and semantic[category][key] then
          print("   -| " .. category .. "." .. key .. ": " .. semantic[category][key])
        else
          print("   -| " .. category .. "." .. key .. " MISSING")
        end
      end
    else
      print("_* get() function failed: " .. tostring(semantic))
    end
  else
    print("_* No get() function found")
  end

  print("=" .. string.rep("=", 50))
  return true
end

-- Test multiple themes
function M.test_all()
  local themes = {
    "dc.lantern-corps.phantom-corrupted",
  }

  for _, theme in ipairs(themes) do
    M.test_theme(theme)
    print("")
  end
end

-- Quick health check
function M.health()
  print("_* PrismPunk Health Check")
  print("Config:", vim.inspect(_G.prismpunk_config or "No config found"))
  print("Current colors_name:", vim.g.colors_name or "Not set")

  local test_groups = { "Normal", "Comment", "DiagnosticError" }
  for _, group in ipairs(test_groups) do
    local hl_info = vim.api.nvim_get_hl(0, { name = group })
    if hl_info and next(hl_info) then
      print("_* " .. group .. " highlight is set")
    else
      print("_* " .. group .. " highlight not set")
    end
  end
end

return M
