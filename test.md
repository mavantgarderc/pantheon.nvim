help me refactor this repo: https://github.com/mavantgarderc/prismpunk.nvim
into this:
lua/prismpunk/
├── core
│   ├── highlights.lua
│   ├── lualine.lua
│   └── terminal/
│       ├── alacritty.lua
│       ├── ghostty.lua
│       └── kitty.lua
├── utils
│   ├── base16.lua
│   ├── color.lua
│   ├── hsluv.lua
│   └── init.lua
├── themes  # highlights' token' assignment to hex colors from palettes/
│   └── dc
│       └── lantern-corps
│           ├── phantom-balanced.lua
│           └── ultraviolet-veiled.lua
├── palettes # only palettes of hex colors
│   └── dc
│       └── lantern-corps
│           ├── phantom-balanced.lua
│           └── ultraviolet-veiled.lua
├── config.lua
├── init.lua
├── loader.lua
└── palette.lua


ask 100 after analyzing the repo & before proceed

---

1. yes
2. yes
3. I want major changes but not changelog at all
4. 0.9.0
5. prismpunk everywhere
6. 
