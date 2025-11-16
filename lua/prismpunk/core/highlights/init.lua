local M = {}

local function safe_nvim_set_hl(ns, group, opts)
  if not opts or type(opts) ~= "table" then return end

  local safe_opts = {}
  for k, v in pairs(opts) do
    if v ~= nil then
      if k == "fg" or k == "bg" or k == "sp" then
        if type(v) == "string" and v ~= "" then
          safe_opts[k] = v
        elseif type(v) == "number" then
          safe_opts[k] = v
        end
      else
        safe_opts[k] = v
      end
    end
  end

  if next(safe_opts) ~= nil then
    return vim.api.nvim_set_hl(ns, group, safe_opts)
  end
end

local function hl(group, opts)
  safe_nvim_set_hl(0, group, opts)
end

M.safe_hl = safe_nvim_set_hl

M.hl = hl

---@param theme table
---@param config table
---@return table colors Normalized color structure
function M.normalize_theme(theme, config)
  if type(theme.get) == "function" then
    local _ok, result = pcall(theme.get, config, theme.palette)
    if not _ok then error("theme.get() failed: " .. tostring(result)) end
    theme = result
  end

  if theme.semantic then
    local semantic = theme.semantic
    return {
      syn = semantic.syn or semantic,
      ui = semantic.ui or semantic,
      diag = semantic.diag or semantic,
      git = semantic.git or semantic.vcs or semantic,
      diff = semantic.diff or semantic,
      is_complex = true,
    }
  elseif theme.syn and theme.ui then
    return {
      syn = theme.syn,
      ui = theme.ui,
      diag = theme.diag,
      git = theme.vcs or theme.git,
      diff = theme.diff,
      is_complex = true,
    }
  else
    print("ERROR: Theme missing expected structure!")
    print("Theme keys: " .. vim.inspect(vim.tbl_keys(theme)))
    if theme.semantic then print("Semantic keys: " .. vim.inspect(vim.tbl_keys(theme.semantic))) end
    error("Theme missing semantic color mappings (syn, ui, diag, git, diff)")
  end
end

---@param theme table Theme colors
---@param config table Configuration
function M.apply(theme, config)
  local colors = M.normalize_theme(theme, config)
  if not colors.syn then error("Missing colors.syn - theme structure issue") end

  local modules = {
    "editor",
    "syntax",
    "treesitter",
    "lsp",
    "diagnostic",
    "git",
  }

  for _, module_name in ipairs(modules) do
    local hl_ok, module = pcall(require, "prismpunk.core.highlights." .. module_name)
    if hl_ok then
      module.apply(colors, config)
    else
      print("Failed to load: " .. module_name)
      print("Error: " .. tostring(module))
    end
  end

  local plugin_ok, plugins = pcall(require, "prismpunk.core.highlights.plugins")
  if plugin_ok then
    plugins.apply(colors, config)
  else
    print("Failed to load plugins")
    print("Error: " .. tostring(plugins))
  end

  if config.overrides and config.overrides.highlights then
    for group, opts in pairs(config.overrides.highlights) do
      hl(group, opts)
    end
  end
end

return M
