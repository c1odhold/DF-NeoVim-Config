# 💤 My-LazyVim-Config

About LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).

Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

# QuickStart
Firstly make sure you have installed nmp and ctags

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
│       ├── dashboard.lua
│       ├── markdown-preview.lua
│       ├── markdown-render.lua
│       ├── noice.lua
│       ├── supermaven.lua
│       ├── tagbar.lua
│       └── toggleterm.lua
├── README.md
└── stylua.toml

4 directories, 20 files
```


