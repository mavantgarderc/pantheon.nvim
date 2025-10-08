# Pantheon.nvim

A Neovim colorscheme plugin inspired by legendary characters from DC, Marvel, mythology, and cinema.

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  'yourusername/pantheon.nvim',
  priority = 1000,
  config = function()
    require('pantheon').setup({
      theme = 'lantern-corps/green',  -- Default theme
    })
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  'yourusername/pantheon.nvim',
  config = function()
    require('pantheon').setup({
      theme = 'lantern-corps/green',
    })
  end,
}
```

## Usage

### Setup in your init.lua

```lua
require('pantheon').setup({
  theme = 'lantern-corps/green',  -- Choose your theme
  
  -- Optional: Style customization
  styles = {
    comments = { italic = true },
    keywords = { bold = false },
    functions = { bold = false },
  },
  
  -- Optional: Color overrides
  overrides = {
    colors = {
      base0B = '#custom-color',  -- Override specific Base16 colors
    },
    highlights = {
      Comment = { fg = '#custom-color' },  -- Override highlight groups
    },
  },
  
  terminal_colors = true,  -- Apply theme to terminal
})
```

### Theme Selection Formats

All of these work:

```lua
-- Slash notation (recommended)
theme = 'lantern-corps/green'

-- Dot notation
theme = 'lantern-corps.green'

-- Table notation
theme = { universe = 'lantern-corps', variant = 'green' }
```

### Switch Themes Dynamically

```lua
-- In Neovim command mode
:lua require('pantheon').load('lantern-corps/yellow')

-- Or use the traditional way
:colorscheme pantheon
```

## Available Themes (Phase 1)

### Lantern Corps
- `lantern-corps/green` - Willpower (Hal Jordan, John Stewart) ✅ **Available**

### Coming Soon
- `lantern-corps/yellow` - Fear (Sinestro Corps)
- `lantern-corps/red` - Rage (Red Lanterns)
- `lantern-corps/violet` - Love (Star Sapphires)
- `lantern-corps/orange` - Greed
- `lantern-corps/blue` - Hope
- `lantern-corps/indigo` - Compassion
- `lantern-corps/black` - Death
- `lantern-corps/white` - Life

And many more from DC, Marvel, and beyond!

## Development

### Live Reload (Coming Soon)

```lua
-- Clear cache and reload theme
require('pantheon.loader').clear_cache()
require('pantheon').load('lantern-corps/green')
```
