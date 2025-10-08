" This file allows users to activate the theme with :colorscheme pantheon
" It simply calls the Lua setup function

lua << EOF
  -- Load with default config
  require('pantheon').setup()
EOF
