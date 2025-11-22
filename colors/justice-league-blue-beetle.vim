if exists('g:colors_name')
  hi clear
endif

if exists('syntax_on')
  syntax reset
endif

let g:colors_name = "justice-league/blue-beetle"

lua << EOF
local ok, prismpunk = pcall(require, "prismpunk")
if ok and prismpunk.load_colorscheme then
  local success, err = prismpunk.load_colorscheme("dc/justice-league/blue-beetle")
  if not success then
    vim.notify("[prismpunk] Failed to load justice-league/blue-beetle: " .. tostring(err), vim.log.levels.ERROR)
  end
else
  vim.notify("[prismpunk] Plugin not loaded", vim.log.levels.ERROR)
end
EOF
