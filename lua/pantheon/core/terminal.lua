-- terminal color helper + applier for pantheon themes

local M = {}

function M.build_base16(theme)
  local b = {}
  if theme.base16 and next(theme.base16) then
    for k,v in pairs(theme.base16) do b[k] = v end
  else
    local c = theme.colors or {}
    for i=0,15 do
      local key = string.format("base%02X", i)
      local alt = string.format("base0%X", i)
      if c[key] then b[key] = c[key]
      elseif c[alt] then b[key] = c[alt]
      end
    end
  end
  b.base00 = b.base00 or "#1e1e1e"
  b.base08 = b.base08 or "#ff6c6b"
  b.base0B = b.base0B or "#98be65"
  b.base0D = b.base0D or "#51afef"
  b.base0E = b.base0E or "#c678dd"
  b.base09 = b.base09 or "#da8548"
  b.base0A = b.base0A or "#ecbe7b"
  b.base0C = b.base0C or "#46d9ff"
  b.base01 = b.base01 or "#2e2e2e"
  b.base02 = b.base02 or "#3e3e3e"
  b.base03 = b.base03 or "#5c5c5c"
  b.base04 = b.base04 or "#a0a0a0"
  b.base05 = b.base05 or "#c0c0c0"
  b.base06 = b.base06 or "#e0e0e0"
  b.base07 = b.base07 or "#ffffff"

  return b
end

function M.apply_terminal(theme)
  local base16 = M.build_base16(theme)

  local map = {
    base16.base00, -- 0
    base16.base08, -- 1
    base16.base0B, -- 2
    base16.base0A, -- 3
    base16.base0D, -- 4
    base16.base0E, -- 5
    base16.base0C, -- 6
    base16.base05, -- 7
    base16.base03, -- 8
    base16.base09, -- 9
    base16.base01, -- 10
    base16.base02, -- 11
    base16.base04, -- 12
    base16.base06, -- 13
    base16.base0F, -- 14
    base16.base07, -- 15
  }

  for i = 0, 15 do
    local col = map[i+1] or "#000000"
    vim.g["terminal_color_" .. i] = col
  end

  vim.g.terminal_color_background = base16.base00
  vim.g.terminal_color_foreground = base16.base05
end

return M
