# Pantheon.nvim

A Neovim colorscheme plugin inspired by legendary characters from DC, Marvel, mythology, and cinema.

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "mavantgarderc/pantheon.nvim",
  priority = 1000,
  config = function()
    require("pantheon").setup({
      theme = "justice-league/wonder-woman",
    })
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "mavantgarderc/pantheon.nvim",
  config = function()
    require("pantheon").setup({
      theme = "justice-league/wonder-woman",
    })
  end,
}
```

## Usage

### Setup in your init.lua

```lua
require("pantheon").setup({
  theme = "lantern-corps/green",  -- Choose your theme
  
  -- Optional: Style customization
  styles = {
    comments = { italic = true },
    keywords = { bold = false },
    functions = { bold = false },
    variables = {},  -- Added for variable styles
  },
  
  -- Optional: Color overrides
  overrides = {
    colors = {
      base0B = "#custom-color",  -- Override specific Base16 colors
    },
    highlights = {
      Comment = { fg = "#custom-color" },  -- Override highlight groups
    },
  },
  
  terminal = {
    enabled = true,  -- Apply theme to terminal
    emulator = "ghostty",  -- Focus on Ghostty
    auto_reload = true,  -- Auto-reload for Ghostty
  },
})
```

### Theme Selection Formats

All of these work:

- Slash notation (recommended): `"lantern-corps/green"`
- Dot notation: `"lantern-corps.green"`
- Table notation: `{ universe = "lantern-corps", variant = "green" }`

### Switch Themes Dynamically

- In Neovim command mode: `:lua require("pantheon").load("lantern-corps/yellow")`
- Or use the traditional way: `:colorscheme pantheon`

### Commands
- `:PantheonExportGhostty`: Export current theme to Ghostty config.
- `:PantheonReload`: Clear cache and reload the current theme (for live dev changes).
- `:PantheonListThemes`: List all available themes.
- More commands coming soon for preview and random selection.

## Features
- **Customizable Styles**: Toggle italics/bold for comments, keywords, functions, variables.
- **Overrides**: Easily override colors or highlight groups.
- **Terminal Integration**: Full support for Ghostty (export TOML, auto-reload via SIGUSR2). TODO: Kitty, Alacritty.
- **Plugin Support**: Extended highlights for popular plugins including:
  - Treesitter and LSP semantic tokens (expanded coverage for classes, interfaces, async, etc.).
  - Telescope, NvimTree, Lualine, nvim-cmp, nvim-dap, mini.nvim, indent-blankline.
  - Which-key, Flash, Oil (new!).
- **Caching & Live Reload**: Fast loading with cache; clear and reload for dev.
- **Accessibility**: Base16 palette with potential for contrast checks (coming soon).

## Terminal Emulator Integration

### Ghostty

Remove all color-codes in `~/.config/ghostty/config`, & add `theme = "prismpunk.toml"` at the end of configuration file.

Then touch a file at `~/.config/ghostty/themes/` named `prismpunk.toml`

(Or don't... it is automated baby :D ...)

### Alacritty

Remove all color-codes & related flags in `~/.config/alacritty/alacritty.toml` & add below lines:

```toml
[general]
import = [
  "~/.config/alacritty/prismpunk.toml"
]
```

> If you experienced exceptions, try `alacritty migrate` command to debug.

Then you touch `prismpunk.toml` at the directory you mentioned in `alacritty.toml`.

## Configuration

```lua
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
    emulator = {"ghostty", "alacritty"}, -- Both!
    
    ghostty = {
      enabled = true,
      auto_reload = true,
      config_path = vim.fn.expand("~/.config/ghostty/themes/prismpunk.toml"),
    },
    
    alacritty = {
      enabled = true,
      auto_reload = true,
      config_path = vim.fn.expand("~/.config/alacritty/prismpunk.toml"),
    },
  },
})
```

## Development

### Live Reload

```lua
-- Clear cache and reload theme
require("pantheon.loader").clear_cache()
require("pantheon").load("lantern-corps/green")
```

## Contributing
See CONTRIBUTING.md for guidelines. Pull requests for new themes or fixes welcome!
