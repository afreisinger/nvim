# nvim

Neovim config built on [LazyVim](https://www.lazyvim.org/). Minimal, opinionated, Kanagawa-themed.

## Structure

```
~/.config/nvim/          ← this repo
├── init.lua             # bootstrap (config.lazy + timeouts)
├── lazyvim.json         # LazyVim extras
├── lua/
│   ├── config/
│   │   ├── lazy.lua     # plugin manager bootstrap + spec
│   │   ├── options.lua  # clipboard (unnamedplus + OSC52 ssh)
│   │   ├── keymaps.lua  # tmux navigation
│   │   └── autocmds.lua
│   └── plugins/
│       ├── colorscheme.lua  # kanagawa
│       ├── tmux.lua          # nvim-tmux-navigation + which-key
│       └── ui.lua            # lualine
```

## Setup

Clone into the neovim config directory:

```bash
git clone https://github.com/afreisinger/nvim ~/.config/nvim
```

Requires Neovim (>= 0.9). On first launch, lazy.nvim bootstraps itself and installs all plugins.

## Theme

[Catppuccin](https://github.com/catppuccin/nvim) `mocha` variant — matches the tmux Catppuccin config in `afreisinger/dotfiles`.

## Tmux navigation

`Ctrl+h/j/k/l` move between neovim and tmux panes. Requires the matching tmux layout (prefix `C-a` + `vim-tmux-navigator`), already set up in `afreisinger/dotfiles`.