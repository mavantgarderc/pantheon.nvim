# Pantheon.nvim - Complete User Guide 🎨

> A Neovim colorscheme plugin inspired by legendary characters from DC, Marvel, mythology, and cinema.

## Table of Contents

- [Installation](#installation)
- [Quick Start](#quick-start)
- [Configuration](#configuration)
- [Available Themes](#available-themes)
- [Theme Switching](#theme-switching)
- [Customization](#customization)
- [Terminal Integration](#terminal-integration)
- [Development Mode](#development-mode)
- [Creating Custom Themes](#creating-custom-themes)
- [Commands Reference](#commands-reference)
- [Troubleshooting](#troubleshooting)

---

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim) (Recommended)

```lua
{
  'mavantgarderc/pantheon.nvim',
  priority = 1000,  -- Load before other plugins
  config = function()
    require('pantheon').setup({
      theme = 'lantern-corps/green',
    })
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  'mavantgarderc/pantheon.nvim',
  config = function()
    require('pantheon').setup({
      theme = 'lantern-corps/green',
    })
  end,
}
```

### Manual Installation

```bash
# Clone the repository
cd ~/.local/share/nvim/site/pack/plugins/start/
git clone https://github.com/mavantgarderc/pantheon.nvim

# Or for local development
cd ~/your-projects/
git clone https://github.com/mavantgarderc/pantheon.nvim
```

Then in your `init.lua`:

```lua
-- Add to runtime path
vim.opt.rtp:prepend('~/your-projects/pantheon.nvim')

-- Setup theme
require('pantheon').setup({
  theme = 'lantern-corps/green',
})
```

---

## Quick Start

### Basic Setup

```lua
-- Minimal configuration
require('pantheon').setup({
  theme = 'lantern-corps/green',
})
```

### Full Configuration with Options

```lua
require('pantheon').setup({
  -- Theme selection (choose one)
  theme = 'lantern-corps/green',  -- Recommended format
  -- theme = 'lantern-corps.green',  -- Also works
  -- theme = { universe = 'lantern-corps', variant = 'green' },  -- Table format
  
  -- Style options
  styles = {
    comments = { italic = true },
    keywords = { bold = false },
    functions = { bold = false },
    variables = {},
  },
  
  -- Color and highlight overrides
  overrides = {
    colors = {
      -- Override specific Base16 colors
      -- base0B = '#custom-color',
    },
    highlights = {
      -- Override specific highlight groups
      -- Comment = { fg = '#custom-color', italic = true },
    },
  },
  
  -- Plugin integrations
  integrations = {
    cmp = true,
    telescope = true,
    gitsigns = true,
    lualine = true,
  },
  
  -- Terminal colors
  terminal_colors = true,  -- Apply theme to :terminal
})
```

---

## Configuration

### Theme Selection Formats

All three formats work identically:

```lua
-- Format 1: Slash notation (recommended)
theme = 'lantern-corps/green'

-- Format 2: Dot notation
theme = 'lantern-corps.green'

-- Format 3: Table notation
theme = { 
  universe = 'lantern-corps', 
  variant = 'green' 
}
```

### Style Options

Customize how different syntax elements appear:

```lua
styles = {
  comments = { 
    italic = true,      -- Italicize comments
    bold = false 
  },
  keywords = { 
    bold = true,        -- Bold keywords
    italic = false 
  },
  functions = { 
    bold = false,       -- Functions styling
    italic = false 
  },
  variables = {         -- Variable styling
    -- empty = use theme defaults
  },
}
```

### Color Overrides

Override specific colors without creating a new theme:

```lua
overrides = {
  colors = {
    base0B = '#ff00ff',  -- Change string color
    base00 = '#000000',  -- Change background
  },
}
```

### Highlight Group Overrides

Override specific highlight groups:

```lua
overrides = {
  highlights = {
    Comment = { 
      fg = '#5c6370', 
      italic = true, 
      bold = false 
    },
    Function = { 
      fg = '#61afef', 
      bold = true 
    },
    -- Override any highlight group
  },
}
```

---

## Available Themes

### DC Universe

#### Lantern Corps
- `lantern-corps/green` - Willpower (Hal Jordan, John Stewart) ✅
- `lantern-corps/yellow` - Fear (Sinestro Corps) ✅
- `lantern-corps/red` - Rage (Red Lanterns) 🚧
- `lantern-corps/violet` - Love (Star Sapphires) 🚧
- `lantern-corps/orange` - Greed (Orange Lanterns) 🚧
- `lantern-corps/blue` - Hope (Blue Lanterns) 🚧
- `lantern-corps/indigo` - Compassion (Indigo Tribe) 🚧
- `lantern-corps/black` - Death (Black Lanterns) 🚧
- `lantern-corps/white` - Life (White Lanterns) 🚧

#### Batman
- `batman/classic` - Gray & Blue 🚧
- `batman/dark-knight` - All Black 🚧
- `batman/beyond` - Terry McGinnis 🚧

#### Superman
- `superman/classic` - Primary Colors 🚧

### Marvel Universe

#### Spider-Verse
- `spider-verse/classic` - Peter Parker 🚧
- `spider-verse/miles` - Miles Morales 🚧
- `spider-verse/symbiote` - Black Suit 🚧

#### Avengers
- `avengers/iron-man` - Red & Gold 🚧
- `avengers/captain-america` - Red, White, Blue 🚧
- `avengers/thor` - Blue & Gold 🚧

✅ Available | 🚧 Coming Soon

---

## Theme Switching

### At Runtime

Switch themes without restarting Neovim:

```vim
" Using Pantheon's load function
:lua require('pantheon').load('lantern-corps/yellow')

" Using traditional colorscheme command
:colorscheme pantheon
```

### In Configuration

Change default theme in your config:

```lua
require('pantheon').setup({
  theme = 'lantern-corps/yellow',  -- Changed from green
})
```

Restart Neovim or run:

```vim
:source ~/.config/nvim/init.lua
```

### Create Theme Picker

Using [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim):

```lua
local pickers = require('telescope.pickers')
local finders = require('telescope.finders')
local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')

local function theme_picker()
  local themes = {
    'lantern-corps/green',
    'lantern-corps/yellow',
    -- Add more as you create them
  }
  
  pickers.new({}, {
    prompt_title = 'Pantheon Themes',
    finder = finders.new_table({
      results = themes,
    }),
    attach_mappings = function(prompt_bufnr)
      actions.select_default:replace(function()
        local selection = action_state.get_selected_entry()
        actions.close(prompt_bufnr)
        require('pantheon').load(selection.value)
      end)
      return true
    end,
  }):find()
end

-- Keybinding
vim.keymap.set('n', '<leader>pt', theme_picker, { desc = 'Pantheon: Pick theme' })
```

---

## Customization

### Example: Darker Background

```lua
require('pantheon').setup({
  theme = 'lantern-corps/green',
  overrides = {
    colors = {
      base00 = '#000000',  -- Pure black background
      base01 = '#0a0a0a',  -- Darker sidebars
    },
  },
})
```

### Example: More Vibrant Strings

```lua
overrides = {
  colors = {
    base0B = '#00ff00',  -- Brighter green for strings
  },
}
```

### Example: Custom Comment Style

```lua
overrides = {
  highlights = {
    Comment = {
      fg = '#7c8896',
      italic = true,
      bold = false,
    },
  },
}
```

### Example: Transparent Background

```lua
overrides = {
  highlights = {
    Normal = { bg = 'NONE' },
    NormalFloat = { bg = 'NONE' },
    NormalNC = { bg = 'NONE' },
  },
}
```

---

## Terminal Integration

### Built-in Terminal Colors

Pantheon automatically applies colors to Neovim's built-in terminal:

```vim
" Open terminal
:terminal

" Now terminal output uses your theme colors
ls --color
git status
```

### Export to External Terminals

Export your theme to use in Ghostty, Kitty, Alacritty, etc:

#### Export All Formats

```vim
:PantheonExportAll
```

This creates configs in `~/.config/nvim/pantheon-exports/`:

```
pantheon-exports/
├── ghostty/
│   └── lantern-corps-green.conf
├── kitty/
│   └── lantern-corps-green.conf
└── alacritty/
    └── lantern-corps-green.toml
```

#### Export Specific Format

```vim
" Export current theme to Ghostty
:PantheonExportGhostty

" Export specific theme
:PantheonExportGhostty lantern-corps/yellow
```

### Apply to Your Terminal

#### Ghostty

```bash
# Copy theme
cp ~/.config/nvim/pantheon-exports/ghostty/lantern-corps-green.conf \
   ~/.config/ghostty/themes/

# Use in config
echo 'theme = lantern-corps-green' >> ~/.config/ghostty/config
```

#### Kitty

```bash
# In ~/.config/kitty/kitty.conf
include ~/.config/nvim/pantheon-exports/kitty/lantern-corps-green.conf
```

#### Alacritty

```toml
# In ~/.config/alacritty/alacritty.toml
[general]
import = [
  "~/.config/nvim/pantheon-exports/alacritty/lantern-corps-green.toml"
]
```

---

## Development Mode

### Hot Reload

Reload theme without restarting Neovim (useful when creating themes):

```vim
:PantheonReload
```

Or create a keybinding:

```lua
vim.keymap.set('n', '<leader>pr', function()
  require('pantheon.loader').clear_cache()
  require('pantheon').setup(_G.pantheon_config or {})
  vim.notify('Pantheon reloaded!', vim.log.levels.INFO)
end, { desc = 'Reload Pantheon theme' })
```

### Debug Colors

Print current theme's color palette:

```vim
:PantheonPrintPalette

" Or for specific theme
:PantheonPrintPalette lantern-corps/yellow
```

Output:
```
=== Lantern Corps - Yellow (Fear) ===

--- Rich Palette ---
dreadBlack           #0a0800
terrorVoid           #141200
fearYellow           #ffff00
...

--- Base16 Colors ---
base00   #0a0800
base01   #141200
...
```

### Inspect Theme Structure

```vim
:lua print(vim.inspect(require('pantheon.core.terminal').get_palette('lantern-corps/green')))
```

---

## Creating Custom Themes

### Quick Theme (5 minutes)

Create a simple theme using Base16 auto-generation:

```lua
-- lua/pantheon/themes/marvel/test-hero.lua

local base16 = require('pantheon.utils.base16')

return {
  name = 'Test Hero',
  author = 'Your Name',
  description = 'Quick test theme',
  
  -- Auto-generate from 3 colors
  base16 = base16.generate({
    bg = '#1a1a1a',      -- Background
    fg = '#e0e0e0',      -- Foreground
    accent = '#ff0000',  -- Main color
  }),
}
```

### Rich Theme (30 minutes)

Create a fully customized theme:

```lua
-- lua/pantheon/themes/dc/hero/custom.lua

local palette = {
  -- Backgrounds
  deepBlack = '#0a0a0a',
  voidGray = '#1a1a1a',
  
  -- Character colors
  heroRed = '#ff0000',
  heroGold = '#ffd700',
  heroBlue = '#0080ff',
  
  -- UI colors
  textGray = '#c0c0c0',
  commentGray = '#707070',
}

return {
  name = 'Custom Hero',
  author = 'Your Name',
  
  palette = palette,
  
  semantic = {
    syn = {
      string = palette.heroRed,
      keyword = palette.heroGold,
      func = palette.heroBlue,
      comment = palette.commentGray,
      variable = palette.textGray,
      -- ... more mappings
    },
    
    ui = {
      bg = palette.deepBlack,
      fg = palette.textGray,
      line_nr_active = palette.heroRed,
      -- ... more UI settings
    },
    
    diag = {
      error = '#ff0000',
      warning = '#ff8800',
      info = '#0080ff',
      hint = '#00ff00',
    },
  },
  
  base16 = {
    base00 = palette.deepBlack,
    base05 = palette.textGray,
    base0B = palette.heroRed,
    -- ... rest of base16
  },
}
```

### Register Theme

Add to universe map in `lua/pantheon/loader.lua`:

```lua
local universe_map = {
  ['lantern-corps'] = 'dc.lantern-corps',
  ['custom-hero'] = 'dc.hero',  -- Add your theme
}
```

### Test Your Theme

```vim
:lua require('pantheon.loader').clear_cache()
:lua require('pantheon').load('custom-hero/custom')
```

---

## Commands Reference

### User Commands

| Command | Description |
|---------|-------------|
| `:PantheonReload` | Reload current theme (dev mode) |
| `:PantheonExportAll` | Export to all terminal formats |
| `:PantheonExportGhostty [theme]` | Export to Ghostty format |
| `:PantheonPrintPalette [theme]` | Print color palette |

### Lua API

```lua
-- Load a theme
require('pantheon').load('lantern-corps/green')

-- Setup with config
require('pantheon').setup({
  theme = 'lantern-corps/green',
  -- ... options
})

-- Clear cache (development)
require('pantheon.loader').clear_cache()

-- Export terminal config
require('pantheon.core.terminal').export_all('lantern-corps/green')

-- Get theme colors
local colors = require('pantheon.core.terminal').get_palette('lantern-corps/green')

-- Generate Base16 colors
local base16 = require('pantheon.utils.base16')
local colors = base16.generate({
  bg = '#000000',
  fg = '#ffffff',
  accent = '#00ff88'
})
```

---

## Troubleshooting

### Theme Not Loading

**Problem:** Theme doesn't change when you load it.

**Solution:**
```vim
" Clear module cache
:lua for k in pairs(package.loaded) do if k:match('^pantheon') then package.loaded[k] = nil end end

" Reload
:lua require('pantheon').setup({ theme = 'lantern-corps/green' })
```

### Module Not Found Error

**Problem:** `module 'pantheon.themes.dc.lantern-corps.green' not found`

**Solution:**
1. Check file exists: `lua/pantheon/themes/dc/lantern-corps/green.lua`
2. Check `init.lua` exists in parent dirs
3. Verify plugin is in runtimepath:
   ```vim
   :lua print(vim.inspect(vim.api.nvim_list_runtime_paths()))
   ```

### Colors Don't Look Right

**Problem:** Colors are wrong or not showing.

**Solution:**
```vim
" Enable true color support
:set termguicolors

" Check your terminal supports 24-bit color
" In terminal: echo $COLORTERM
" Should show: truecolor or 24bit
```

### Terminal Colors Not Applied

**Problem:** Built-in terminal doesn't use theme colors.

**Solution:**
```lua
require('pantheon').setup({
  theme = 'lantern-corps/green',
  terminal_colors = true,  -- Make sure this is true
})
```

---

## FAQ

### Can I use multiple themes in one session?

Yes! Switch themes anytime:
```vim
:lua require('pantheon').load('lantern-corps/yellow')
:lua require('pantheon').load('lantern-corps/green')
```

### How do I make my terminal match Neovim?

Use the export commands:
```vim
:PantheonExportAll
```
Then apply the config to your terminal (see Terminal Integration).

### Can I create themes without coding?

Use the Base16 quick generator:
```lua
local base16 = require('pantheon.utils.base16')
local theme = base16.quick_theme(
  "My Theme",
  "#000000",  -- background
  "#ffffff",  -- foreground
  "#00ff00"   -- accent color
)
```

### How do I contribute themes?

1. Create your theme following the structure
2. Test it thoroughly
3. Export terminal configs
4. Submit a PR with screenshots

### Does Pantheon support TreeSitter?

Yes! Full TreeSitter and LSP semantic token support included.

### Does it work with plugins like telescope/cmp?

Yes! Integrations for popular plugins are built-in:
- nvim-cmp
- telescope.nvim
- gitsigns.nvim
- lualine.nvim
- nvim-notify
- indent-blankline
- nvim-dap-ui
- neotest
- lazy.nvim

### Can I disable terminal colors?

```lua
require('pantheon').setup({
  terminal_colors = false,
})
```

### How do I reset to defaults?

```lua
require('pantheon').setup()  -- No arguments = defaults
```

---

## Tips & Tricks

### Keybindings

```lua
-- Quick theme switching
vim.keymap.set('n', '<leader>pg', function()
  require('pantheon').load('lantern-corps/green')
end, { desc = 'Green Lantern' })

vim.keymap.set('n', '<leader>py', function()
  require('pantheon').load('lantern-corps/yellow')
end, { desc = 'Yellow Lantern' })

-- Theme picker
vim.keymap.set('n', '<leader>pt', ':Telescope pantheon<CR>', { desc = 'Pick theme' })

-- Reload theme (development)
vim.keymap.set('n', '<leader>pr', ':PantheonReload<CR>', { desc = 'Reload theme' })
```

### Auto-switch Based on Time

```lua
-- Dark theme at night, light theme during day
local hour = tonumber(os.date('%H'))
local theme = hour >= 18 or hour < 6 
  and 'lantern-corps/green'   -- Night: Green Lantern
  or 'lantern-corps/yellow'   -- Day: Yellow Lantern

require('pantheon').setup({ theme = theme })
```

### Match Lualine

```lua
-- In your lualine config
local pantheon_colors = require('pantheon.core.terminal').get_palette('lantern-corps/green')

require('lualine').setup({
  options = {
    theme = {
      normal = {
        a = { 
          fg = pantheon_colors.base16.base00, 
          bg = pantheon_colors.base16.base0B 
        },
      },
    },
  },
})
```
