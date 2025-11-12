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
6. yes
7. highlight groups only
8. yes. no logic, only mapping
9. yes
10. ordered list
11. yes
12. palette ID
13. yes
14. lazy loading themes & slash/dot natation
15. setup function only
16. yes
17. all are optional
18. direct references
19. keep as-is
20. yes but I am open to remove it (if not needed at any scenarios)
21. yes
22. github actions; I don't know actually
23. no
24. no
25. create prismpunk.lua
26. no we are all right
27. yes & they are working well; do not change them
28. generated at runtime
29. yes
30. yes it would be good
31. if needed, alias the old ones
32. as it is now... it is working well
33. as it is now... it is working well
34. idk... let's talk about it... how does the algorithms work?
35. no. `themes` are for the mappings, `palettes` are for hex code & their variables & return lua tables
36. explain both scenarios for then I'll choose
37. yup
38. yup
39. YES. caching is really important to me
40. smarter in-place caching
41. I renamed everything myself
42. let's have both
43. hell yeah keep that one
44. yes
45. yes, but they can use `utils.color` modules to manipulate the colors
46. It it done, don'n mind it
47. as-is
48. yes I think that would be good
49. idk... maybe
50. yes that would be good
51. `core/highlights/*.lua`
52. no. but refactor only one theme as an example, I will do the same
53. yes
54. no. each palette should have its personal characteristic
55. yes
56. no
57. both at the same time
58. error
59. yes in docstring
60. yes
61. ABSOLUTELY SEMANTIC NAMES
62. ABSOLUTELY SEMANTIC NAMES
63. no I will take care of it
64. .
65. yes
66. no
67. yes
68. yes
69. yes
70. no
71. yes
72. keep shape
73. global
74. no. they are good, don't touch them
75. no I'd handled that
76. yes I'm ok
77. yes
78. I didn't catch that
79. yes. they do now. i will send the current `lua/plugins/prismpunk.lua`
```lua
return {
  dir = "~/projects/0-shelfs/CodeStorage/nvim-plugins/prismpunk.nvim",
  name = "prismpunk.nvim",
  -- "mavantgarderc/prismpunk.nvim",
  lazy = false,
  priority = 1000,

  config = function()
    require("prismpunk").setup({
      theme = "kanagawa/paper-edo",

      styles = {
        comments = { italic = true },
        keywords = { bold = false },
        functions = { bold = false },
        variables = {},
      },

      overrides = {
        colors = {},
        highlights = {},
      },

      integrations = {
        cmp = true,
        telescope = true,
        gitsigns = true,
        lualine = true,
      },

      terminal = {
        enabled = true,
        emulator = { "ghostty" },

        ghostty = {
          enabled = true,
          auto_reload = true,
          config_path = vim.fn.expand("~/.config/ghostty/themes/prismpunk.toml"),
        },

        alacritty = {
          enabled = false,
          auto_reload = false,
          config_path = vim.fn.expand("~/.config/alacritty/prismpunk.toml"),
        },
      },
    })
  end,
}
```
80. pure lua
81. if possible
82. yes
83. no
84. no
85. I don't think so
86. I don't think so
87. if needed yes
88. explicit
89. yes
90. both
91. no
92. yes
93. no
94. `prismpunk.core.highlights`
95. yes
96. no I like my stylua.toml
97. only you, the credit is yours bro. `refactor({field_of_change}): {changes made in the commit}` is my commit format
98. no
99. no
100. make it extensible as possible

---

1. rename everything
2. one-file-per-util
3. y
4. both
5. no
6. y
7. y
8. y
9. no they are separeted
10. auto-synced 
11. yes
12. yes
13. yes
14. yes
15. yes
16. yes
17. no
18. yes
19. yes
20. only the active palette should be pre-loaded
21. yes
22. yes
23. no
24. yes
25. yes
26. yes
27. yes
28. maybe later
29. yes
30. yes; I will send you an example:
```lua

M.get = function(opts, palette)
  return {
    modes = {
      normal = palette.prismaticCore, -- Core balanced energy
      insert = palette.crystalWill, -- Will for focused insertion
      visual = palette.geometricField, -- Geometric field for visual selection
      replace = palette.crystalRage, -- Controlled rage for replacement
      command = palette.prismaticBright, -- Bright energy for commands
    },

    ui = {
      fg = palette.fg_lightest,
      fg_dim = palette.fg_dark,
      fg_dimmer = palette.bg_alt3,
      fg_dark = palette.bg_alt2,
      fg_reverse = palette.bg_alt1,
      bg_m4 = palette.bg_alt4,
      bg_m3 = palette.bg_alt3,
      bg_m2 = palette.bg_darkest,
      bg_m1 = palette.bg_darker,
      bg_dim = palette.bg_darker,
      bg = palette.bg_darkest,
      bg_p1 = palette.bg_dark,
      bg_p2 = palette.bg_mid,
      bg_gutter = opts.gutter and palette.bg_light or "none",
      bg_cursorline = palette.bg_mid,
      bg_cursorline_alt = palette.bg_light,
      bg_search = palette.prismaticGlow, -- Prismatic glow for search
      bg_visual = palette.geometricField, -- Geometric containment
      bg_statusline = palette.bg_light,
      border = palette.bg_alt4,
      header1 = palette.prismaticCore,
      header2 = palette.harmonicPattern,
      special = palette.stableResonance,
      nontext = palette.bg_lighter,
      whitespace = palette.bg_lightest,
      win_separator = palette.prismaticCore,
      indent = palette.bg_lighter,
      indent_scope = palette.prismaticGlow,
      picker = palette.crystalRage, -- Geometric rage for picking
      yank = palette.crystalWill, -- Crystalline will for yank
      mark = palette.crystalHope, -- Crystalline hope for marks
      scrollbar = palette.bg_lighter,
      tabline = {
        bg = palette.bg_darkest,
        fg_selected = palette.fg_lightest,
        bg_selected = palette.bg_dark,
        fg_inactive = palette.fg_mid,
        bg_inactive = palette.bg_darkest,
        fg_alternate = palette.prismaticBright,
        bg_alternate = palette.bg_darkest,
        indicator = palette.harmonicPattern,
      },
      pmenu = {
        fg = palette.fg_lightest,
        fg_sel = "none",
        fg_border = palette.bg_lighter,
        bg_border = palette.bg_light,
        bg = palette.bg_light,
        bg_sel = palette.bg_lighter,
        bg_sbar = palette.bg_light,
        bg_thumb = palette.bg_lightest,
      },
      float = {
        fg = palette.fg_light,
        bg = palette.bg_mid,
        fg_border = palette.bg_lighter,
        bg_border = palette.bg_mid,
      },
    },

    accent = {
      accent1 = palette.prismaticCore,
      accent2 = palette.prismaticBright,
      accent3 = palette.harmonicPattern,
      accent4 = palette.fg_mid,
      accent5 = palette.crystalRage,
      invert = palette.bg_light,
    },

    rainbow = {
      rainbow1 = palette.crystalRage,
      rainbow2 = palette.crystalAvarice,
      rainbow3 = palette.crystalFear,
      rainbow4 = palette.crystalWill,
      rainbow5 = palette.crystalHope,
      rainbow6 = palette.crystalCompassion,
      rainbow7 = palette.crystalLove,
    },

    syn = {
      attribute = palette.accent_yellow,
      comment = palette.fg_dark,
      constant = palette.crystalAvarice, -- Orange for constants
      deprecated = palette.fg_mid,
      func = palette.crystalHope, -- Blue for functions
      identifier = palette.fg_lightest,
      keyword = palette.prismaticCore, -- Prismatic for keywords
      method = palette.crystalWill, -- Green for methods
      number = palette.crystalAvarice, -- Orange for numbers
      operator = palette.crystalRage, -- Red for operators
      parameter = palette.fg_mid,
      preproc = palette.crystalLove, -- Violet for preproc
      punct = palette.fg_mid,
      regex = palette.crystalFear, -- Yellow for regex
      statement = palette.prismaticCore, -- Prismatic for statements
      string = palette.crystalWill, -- Green for strings
      symbol = palette.crystalRage, -- Red for symbols
      type = palette.crystalHope, -- Blue for types
      variable = "none",
      special = palette.crystalFear, -- Yellow for special
      special2 = palette.crystalRage, -- Red for special2
      special3 = palette.prismaticDeep, -- Deep prismatic for special3
    },

    vcs = {
      added = palette.crystalWill,
      removed = palette.crystalRage,
      changed = palette.crystalFear,
    },

    diff = {
      add = palette.crystalWill,
      change = palette.crystalFear,
      delete = palette.crystalRage,
      text = palette.crystalHope,
    },

    diag = {
      ok = palette.crystalWill,
      error = palette.crystalRage,
      warning = palette.crystalFear,
      info = palette.crystalHope,
      hint = palette.crystalCompassion,
    },

    term = {
      black = palette.bg_alt3,
      red = palette.crystalRage,
      green = palette.crystalWill,
      yellow = palette.crystalFear,
      blue = palette.crystalHope,
      magenta = palette.crystalLove,
      cyan = palette.harmonicPattern,
      white = palette.fg_light,
      black_bright = color(palette.bg_alt3):brighten(0.6):to_hex(),
      red_bright = color(palette.crystalRage):brighten(0.2):to_hex(),
      green_bright = color(palette.crystalWill):brighten(0.1):to_hex(),
      yellow_bright = color(palette.crystalFear):brighten(0.2):to_hex(),
      blue_bright = color(palette.crystalHope):brighten(0.3):to_hex(),
      magenta_bright = color(palette.crystalLove):brighten(0.2):to_hex(),
      cyan_bright = color(palette.harmonicPattern):brighten(0.1):to_hex(),
      white_bright = color(palette.fg_light):brighten(0.2):to_hex(),
      indexed1 = palette.prismaticBright,
      indexed2 = palette.crystalRage,
    },
  }
end

return {
  name = "Lantern Corps - Phantom (Balanced)",
  author = "PrismPunk.nvim",
  description = "In Desperate Day, In Hopeless Night, The Phantom Ring is our last light. We yearn for power, strength and might I seize the ring, that is my right!",

  base16 = {
    base00 = palette.bg_darkest,
    base01 = palette.bg_darker,
    base02 = palette.bg_dark,
    base03 = palette.bg_mid,
    base04 = palette.bg_light,
    base05 = palette.fg_mid,
    base06 = palette.fg_lightest,
    base07 = palette.fg_light,
    base08 = palette.crystalRage,
    base09 = palette.crystalAvarice,
    base0A = palette.crystalFear,
    base0B = palette.crystalWill,
    base0C = palette.harmonicPattern,
    base0D = palette.prismaticCore,
    base0E = palette.prismaticDeep,
    base0F = palette.prismaticBright,
  },

  palette = palette,

  get = M.get,
}
```
31. yes
32. modules
33. what? :)
34. yes
35. the more persistent way
36. warn
37. yes
38. yes
39. no
40. yes
41. yes
42. cache calls
43. yes
44. yes
45. yes
46. no
47. I don't think so
48. yes
49. no
50. yes
51. yes
52. yes
53. yes
54. vim.g.prismpunk_config
55. yes
56. yes
57. yes
58. yes
59. yes
60. yes
61. yes
62. yes
63. yes
64. yes
65. yes
66. yes
67. yes
68. yes
69. yes
70. yes but for what? :)
71. yes
72. implementations
73. yes
74. yes
75. yes
76. idk
77. yes
78. yes
79. yes
80. not sure
81. yes
82. write
83. no
84. theme.palette
85. yes
86. no
87. yes
88. yes
89. yes
90. it depends on the terminal... but current integrated terms are all toml supported
91. yes
92. yes
93. yes
94. yes
95. yes
96. top level i guess
97. no
98. yes
99. idk
100. idk... is it needed?

---

1. yes
2. what is the difference?
3. yes
4. yes
5. preserve
6. yes
7. vim.notify
