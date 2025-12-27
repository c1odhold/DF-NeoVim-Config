# 💤 My-LazyVim-Config

About LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).

Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

# QuickStart
Firstly make sure you have installed npm and ctags

- Arch
```
sudo pacman nodejs npm ctags
```

Secondly remember to back up your original configuration files

```
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

Then clone or fork the config files to your ~/.config/nvim

```
git clone git@github.com:c1odhold/DFnvim-config.git ~/.config/nvim
```

Finally launch nvim and wait for all plugins and configurations to download completely
```
nvim
```

## Core Plugins

### Code Completion & AI Suggestions
- **blink.cmp** - High-performance code completion engine supporting LSP, path, and buffer completion
- **supermaven-nvim** - AI-powered code suggestions with Tab to accept suggestions, Ctrl+j to accept words

### Code Running & Formatting
- **code_runner.nvim** - One-click code execution for multiple languages
  - Supports C/C++, Rust, Python, Go and more
  - Press `r` to save and run code quickly
- **conform.nvim** - Code formatting tool
  - `<leader>lf` - Format current buffer
  - `<leader>tf` - Toggle auto-format

### Markdown Support
- **markdown-preview.nvim** - Real-time Markdown preview
  - `<leader>cp` - Toggle preview window
- **render-markdown.nvim** - Enhanced Markdown rendering

### UI Enhancements
- **dashboard-nvim** - Beautiful startup screen
- **noice.nvim** - Improved LSP progress and hover display
- **tagbar** - Code tag browser
  - `<F8>` - Toggle tagbar
- **toggleterm.nvim** - Floating terminal
  - `<F12>` - Open/close floating terminal

## Keybindings

### General Keybindings
- `<leader>lf` - Format code
- `<leader>tf` - Toggle auto-format
- `<leader>cp` - Markdown preview toggle
- `<leader>tt` - Toggle Supermaven AI suggestions

### Filetype-specific Keybindings
- **Python/C/C++/Rust**: `r` - Save and run code
- **Go**: `r` - Save and run Go file in terminal
- **Dart**: `r` - Save and open Flutter command palette

### UI Keybindings
- `<F8>` - Toggle tagbar
- `<F12>` - Open/close floating terminal

## Configuration Details

### Font Settings
- Using UbuntuSansMono Nerd Font or Sarasa Mono SC
- Font size: 14pt

### Editor Options
- Floating window border: single line
- System clipboard integration
- Smart case search
- UTF-8 encoding

# Overview

```
.
├── init.lua
├── lazy-lock.json
├── lazyvim.json
├── LICENSE
├── lua
│   ├── config
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins
│       ├── blink.lua
│       ├── code-run.lua
│       ├── conform.lua
│       ├── dap-nio.lua
│       ├── dashboard.lua
│       ├── disable-plugins.lua
│       ├── example.lua
│       ├── markdown-preview.lua
│       ├── markdown-render.baklua
│       ├── supermaven.baklua
│       ├── toggleterm.lua
│       ├── vim-visual-multi.lua
│       └── which-key.lua
├── README.md
└── stylua.toml

4 directories, 23 files
```
```
```

# Usage Tips

1. **First Use**: Ensure required dependencies are installed (Node.js, npm, ctags)
2. **Font Installation**: Install Nerd Font for best display effect
3. **Keybinding Learning**: Familiarize yourself with the keybindings above to improve development efficiency
4. **Plugin Customization**: Add or modify plugin configurations in `lua/plugins/` directory as needed

# Changelog

Based on LazyVim template, added the following custom configurations:
- AI code suggestions integration
- Multi-language code running support
- Enhanced Markdown editing experience
- Beautified startup screen and terminal
- Optimized code formatting configuration
