local M = {
  module = "prismpunk",
  colorscheme = "lantern-corps-phantom-corrupted",
  opts = { theme = "lantern-corps/phantom-corrupted" },
  globals = { vim = vim },
  cache = {}, ---@type table<string, boolean>
}

function M.reset()
  local loader = require("prismpunk.loader")
  local config = _G.prismpunk_config or {}
  local universe, variant = require("prismpunk.config").parse_theme(config.theme or M.opts.theme)

  local theme = loader.load_theme_module(universe, variant)
  M.globals.theme = theme.semantic
  M.globals.palette = theme.palette
  M.globals.colors = theme.colors
end

---@param name string
---@param buf number
function M.hl_group(name, buf)
  local buf_name = vim.api.nvim_buf_get_name(buf)
  if buf_name:find("prismpunk") and (buf_name:find("themes") or buf_name:find("highlights")) then
    return name
  end
  return nil
end

local function reload()
  print("-| Reloading " .. M.module)

  for k in pairs(package.loaded) do
    if k:find("^" .. M.module) then
      package.loaded[k] = nil
    end
  end

  M.cache = {}

  require(M.module).setup(M.opts)
  M.reset()

  local colorscheme = vim.g.colors_name or M.colorscheme
  colorscheme = colorscheme:find(M.colorscheme) and colorscheme or M.colorscheme
  vim.cmd.colorscheme(colorscheme)

  local hi = require("mini.hipatterns")
  for _, buf in ipairs(hi.get_enabled_buffers()) do
    hi.update(buf)
  end
end

reload = vim.schedule_wrap(reload)

local augroup = vim.api.nvim_create_augroup("prismpunk_dev", { clear = true })
vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  group = augroup,
  callback = reload,
})

vim.api.nvim_create_autocmd("BufWritePost", {
  group = augroup,
  pattern = "*/lua/prismpunk/**.lua",
  callback = reload,
})

-- Return a Lazy plugin specification, not just the module
return {
  {
    "echasnovski/mini.hipatterns",
    opts = function(_, opts)
      local hi = require("mini.hipatterns")

      opts.highlighters = opts.highlighters or {}

      opts.highlighters = vim.tbl_extend("keep", opts.highlighters or {}, {
        hex_color = hi.gen_highlighter.hex_color({ priority = 2000 }),

        hl_group = {
          pattern = function(buf)
            local buf_name = vim.api.nvim_buf_get_name(buf)
            return buf_name:find("lua/prismpunk") and '^%s*["\']?([%w_%.]+)["\']?%s*:%s*'
          end,
          group = function(buf, match)
            local group = M.hl_group(match, buf)
            if group then
              if M.cache[group] == nil then
                M.cache[group] = false
                local hl = vim.api.nvim_get_hl(0, { name = group, link = false, create = false })
                if not vim.tbl_isempty(hl) then
                  hl.fg = hl.fg or vim.api.nvim_get_hl(0, { name = "Normal", link = false }).fg
                  M.cache[group] = true
                  vim.api.nvim_set_hl(0, group .. "Dev", hl)
                end
              end
              return M.cache[group] and group .. "Dev" or nil
            end
          end,
          extmark_opts = { priority = 2000 },
        },

        prismpunk_color = {
          pattern = {
            "%f[%w]()palette%.[%w_%.]+()%f[%W]",
            "%f[%w]()theme%.[%w_%.]+()%f[%W]",
            "%f[%w]()colors%.[%w_%.]+()%f[%W]",
            "%f[%w]()base16%.[%w_%.]+()%f[%W]",
            "%f[%w]()s%.[%w_%.]+()%f[%W]",
          },
          group = function(_, match)
            local parts = vim.split(match, ".", { plain = true })
            local color = vim.tbl_get(M.globals, unpack(parts))
            return type(color) == "string"
              and hi.compute_hex_color_group(color, "fg")
          end,
          extmark_opts = function(_, _, data)
            return {
              virt_text = { { "⬤ ", data.hl_group } },
              virt_text_pos = "inline",
              priority = 2000,
            }
          end,
        },

        prismpunk_semantic = {
          pattern = function(buf)
            local buf_name = vim.api.nvim_buf_get_name(buf)
            return buf_name:find("lua/prismpunk/themes") and '^%s*([%w_]+)%s*=%s*{%s*$'
          end,
          ---@diagnostic disable-next-line: unused-local
          group = function(buf, match)
            local categories = {
              ui = M.globals.theme and M.globals.theme.ui and M.globals.theme.ui.bg,
              syn = M.globals.theme and M.globals.theme.syn and M.globals.theme.syn.keyword,
              diag = M.globals.theme and M.globals.theme.diag and M.globals.theme.diag.error,
              git = M.globals.theme and M.globals.theme.git and M.globals.theme.git.add,
              diff = M.globals.theme and M.globals.theme.diff and M.globals.theme.diff.add,
            }

            local color = categories[match]
            if color then
              return hi.compute_hex_color_group(color, "fg")
            end
            return "Type"
          end,
        },
      })
    end,
  },
}
