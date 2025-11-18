--- PrismPunk configuration management
--- Handles validation, merging, and theme spec parsing
local M = {}

--- Default configuration schema
M.defaults = {
  theme = nil, -- Theme name (e.g., "phantom-corrupted" or "lantern-corps/phantom-corrupted")
  gutter = true, -- Enable gutter background
  validate_contrast = false, -- Validate color contrast (opt-in)

  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
  },

  terminals = {
    enabled = true,
    auto_detect = true, -- Auto-detect terminal from environment
    alacritty = {
      enabled = false,
      path = nil, -- Auto-detect if nil
    },
    kitty = {
      enabled = false,
      path = nil,
    },
    ghostty = {
      enabled = false,
      path = nil,
    },
  },

  cache = {
    enable = true,
    persist_to_disk = true,
  },

  overrides = {
    highlights = {}, -- Global highlight overrides
    themes = {}, -- Per-theme overrides { ["theme-name"] = { Normal = {...} } }
  },

  plugins = {}, -- Plugin-specific options
}

--- Current merged configuration
M.options = vim.tbl_deep_extend("force", {}, M.defaults)

--- Configuration schema for validation
local schema = {
  theme = { type = { "string", "nil" } },
  gutter = { type = "boolean" },
  validate_contrast = { type = "boolean" },

  styles = {
    type = "table",
    fields = {
      comments = { type = "table" },
      keywords = { type = "table" },
      functions = { type = "table" },
      variables = { type = "table" },
    },
  },

  terminals = {
    type = "table",
    fields = {
      enabled = { type = "boolean" },
      auto_detect = { type = "boolean" },
      alacritty = {
        type = "table",
        fields = {
          enabled = { type = "boolean" },
          path = { type = { "string", "nil" } },
        },
      },
      kitty = {
        type = "table",
        fields = {
          enabled = { type = "boolean" },
          path = { type = { "string", "nil" } },
        },
      },
      ghostty = {
        type = "table",
        fields = {
          enabled = { type = "boolean" },
          path = { type = { "string", "nil" } },
        },
      },
    },
  },

  cache = {
    type = "table",
    fields = {
      enable = { type = "boolean" },
      persist_to_disk = { type = "boolean" },
    },
  },

  overrides = {
    type = "table",
    fields = {
      highlights = { type = "table" },
      themes = { type = "table" },
    },
  },

  plugins = { type = "table" },
}

--- Validate value against schema type(s)
--- @param value any
--- @param allowed_types table|string
--- @return boolean, string|nil
local function validate_type(value, allowed_types)
  if type(allowed_types) == "string" then allowed_types = { allowed_types } end

  local value_type = type(value)
  if value == nil then value_type = "nil" end

  for _, allowed in ipairs(allowed_types) do
    if value_type == allowed then return true end
  end

  return false, table.concat(allowed_types, " or ")
end

--- Validate configuration against schema
--- @param cfg table Configuration to validate
--- @param sch table Schema definition
--- @param path string Current path for error messages
--- @return boolean, string|nil
local function validate_config(cfg, sch, path)
  path = path or "config"

  if not cfg or type(cfg) ~= "table" then return false, string.format("[prismpunk] %s must be a table", path) end

  for key, value in pairs(cfg) do
    local field_schema = sch[key]

    if not field_schema then
      -- Unknown key - warn but don't error
      vim.notify(string.format("[prismpunk] Unknown config key: %s.%s", path, key), vim.log.levels.WARN)
      goto continue
    end

    -- Validate type
    local valid, expected = validate_type(value, field_schema.type)
    if not valid then
      return false, string.format("[prismpunk] %s.%s must be %s, got %s", path, key, expected, type(value))
    end

    -- Recursively validate nested tables
    if type(value) == "table" and field_schema.fields then
      local nested_valid, nested_err = validate_config(value, field_schema.fields, path .. "." .. key)
      if not nested_valid then return false, nested_err end
    end

    ::continue::
  end

  return true
end

--- Setup configuration with user overrides
--- @param user_config table|nil User configuration
--- @return table Merged configuration
function M.setup(user_config)
  user_config = user_config or {}

  -- Validate user config
  local valid, err = validate_config(user_config, schema)
  if not valid then error(err) end

  -- Deep merge with defaults
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, user_config)

  return M.options
end

--- Parse theme specification into normalized form
--- Auto-discovers themes by checking filesystem
--- @param theme_spec string|table|nil
--- @return table Normalized spec { universe = string|nil, name = string, variants = table }
function M.parse_theme(theme_spec)
  if not theme_spec or theme_spec == "" then return { universe = nil, name = nil, variants = {} } end

  if type(theme_spec) == "string" then
    local variants = {}

    -- Helper: Check if a module path exists
    local function module_exists(path)
      local ok, _ = pcall(require, path)
      if ok then return true end

      -- Also check filesystem
      local file_path = path:gsub("%.", "/") .. ".lua"
      local search_paths = {
        vim.fn.getcwd() .. "/lua/" .. file_path,
        vim.fn.stdpath("config") .. "/lua/" .. file_path,
      }
      for _, p in ipairs(search_paths) do
        if vim.fn.filereadable(p) == 1 then return true end
      end
      return false
    end

    -- Strategy 1: Try as "universe/category/name" (3 parts)
    local part1, part2, part3 = theme_spec:match("^([^/]+)/([^/]+)/(.+)$")
    if part1 and part2 and part3 then
      local paths_to_try = {
        ("prismpunk.themes.%s.%s.%s"):format(part1, part2, part3),
        ("prismpunk.themes.%s-%s.%s"):format(part1, part2, part3),
      }
      for _, path in ipairs(paths_to_try) do
        if module_exists(path) then
          local universe = path:match("prismpunk%.themes%.(.+)%.[^%.]+$")
          local name = part3
          table.insert(variants, { universe = universe, name = name })
          return { universe = universe, name = name, variants = variants }
        end
      end
    end

    -- Strategy 2: Try as "universe/name" (2 parts)
    local universe, name = theme_spec:match("^([^/]+)/(.+)$")
    if universe and name then
      local paths_to_try = {
        ("prismpunk.themes.%s.%s"):format(universe, name),
        ("prismpunk.themes.%s-%s"):format(universe, name),
      }
      for _, path in ipairs(paths_to_try) do
        if module_exists(path) then
          table.insert(variants, { universe = universe, name = name })
          return { universe = universe, name = name, variants = variants }
        end
      end
    end

    -- Strategy 3: Try with dash-separated parsing
    -- "dc-lantern-corps-phantom-corrupted" → try multiple splits
    if theme_spec:find("-") then
      local parts = vim.split(theme_spec, "-")

      -- Try different split points (last part is name, rest is universe)
      for split_point = #parts - 1, 1, -1 do
        local potential_universe = table.concat(vim.list_slice(parts, 1, split_point), "-")
        local potential_name = table.concat(vim.list_slice(parts, split_point + 1), "-")

        local paths_to_try = {
          ("prismpunk.themes.%s.%s"):format(potential_universe, potential_name),
          ("prismpunk.themes.%s.%s"):format(potential_universe:gsub("-", "."), potential_name),
          ("prismpunk.themes.%s.%s"):format(potential_universe:gsub("-", "/"), potential_name),
        }

        for _, path in ipairs(paths_to_try) do
          if module_exists(path) then
            local discovered_universe = path:match("prismpunk%.themes%.(.+)%.[^%.]+$")
            table.insert(variants, { universe = discovered_universe, name = potential_name })
            return {
              universe = discovered_universe,
              name = potential_name,
              variants = variants,
            }
          end
        end
      end
    end

    -- Strategy 4: Plain name (no universe)
    local path = "prismpunk.themes." .. theme_spec
    if module_exists(path) then return { universe = nil, name = theme_spec, variants = {} } end

    -- Fallback: return best guess and let resolver try all variants
    return { universe = nil, name = theme_spec, variants = {} }
  elseif type(theme_spec) == "table" then
    return {
      universe = theme_spec.universe,
      name = theme_spec.name or theme_spec[1],
      opts = theme_spec.opts or {},
      variants = {},
    }
  else
    error(string.format("[prismpunk] Invalid theme_spec type: %s (expected string or table)", type(theme_spec)))
  end
end

return M
