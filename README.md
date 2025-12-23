# 💤 My-LazyVim-Config

中文版 | [English](./README_EN.md)

关于 LazyVim

这是一个 [LazyVim](https://github.com/LazyVim/LazyVim) 的启动模板。

请参考 [官方文档](https://lazyvim.github.io/installation) 开始使用。

# 快速开始
首先确保已安装 npm 和 ctags

- Arch 系统
```
sudo pacman nodejs npm ctags
```

其次记得备份你的原始配置文件

```
# 必需
mv ~/.config/nvim{,.bak}

# 可选但推荐
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

然后 clone 或 fork 配置文件到你的 ~/.config/nvim

```
git clone git@github.com:c1odhold/DFnvim-config.git ~/.config/nvim
```

最后启动 nvim 并等待所有插件和配置完全下载
```
nvim
```

## 核心插件

### 代码补全与智能提示
- **blink.cmp** - 高性能代码补全引擎，支持 LSP、路径和缓冲区补全
- **supermaven-nvim** - AI 驱动的代码建议，支持 Tab 接受建议，Ctrl+j 接受单词

### 代码运行与格式化
- **code_runner.nvim** - 支持多种语言的代码一键运行
  - 支持 C/C++、Rust、Python、Go 等语言
  - 按 `r` 键快速保存并运行代码
- **conform.nvim** - 代码格式化工具
  - `<leader><CR>` - 格式化当前缓冲区

### Markdown 支持
- **markdown-preview.nvim** - Markdown 实时预览
  - `<leader>cp` - 切换预览窗口
- **render-markdown.nvim** - 增强 Markdown 渲染效果

### 界面增强
- **dashboard-nvim** - 精美的启动界面
- **noice.nvim** - 改进 LSP 进度和悬停显示
- **tagbar** - 代码标签浏览器
  - `<F8>` - 打开/关闭标签浏览器
- **toggleterm.nvim** - 浮动终端
  - `<F12>` - 打开/关闭浮动终端

### 文件类型特定快捷键
- **Python/C/C++/Rust**: `r` - 保存并运行代码

### 界面快捷键
- `<F8>` - 打开/关闭标签栏
- `<F12>` - 打开/关闭浮动终端

## 配置详情

### 字体设置
- 使用 UbuntuSansMono Nerd Font 或 Sarasa Mono SC
- 字体大小：14pt

### 编辑器选项
- 浮动窗口边框：单线边框
- 系统剪贴板集成
- 智能大小写搜索
- UTF-8 编码

# Overview

```
.
├── init.lua                 -- 主入口文件
├── lazy-lock.json          -- 插件锁定文件
├── lazyvim.json            -- LazyVim 配置
├── README.md               -- 中文说明文档
├── README_EN.md            -- 英文说明文档
├── stylua.toml             -- Lua 格式化配置
├── lua/
│   ├── config/             -- 核心配置目录
│   │   ├── autocmds.lua    -- 自动命令配置
│   │   ├── keymaps.lua     -- 键位映射配置
│   │   ├── lazy.lua        -- Lazy.nvim 配置
│   │   └── options.lua     -- 编辑器选项配置
│   └── plugins/            -- 插件配置目录
│       ├── blink.lua       -- 代码补全插件
│       ├── code-run.lua    -- 代码运行插件
│       ├── conform.lua     -- 代码格式化插件
│       ├── dashboard.lua   -- 启动界面插件
│       ├── markdown-preview.lua -- Markdown 预览插件
│       ├── markdown-render.lua   -- Markdown 渲染插件
│       ├── noice.lua       -- UI 增强插件
│       ├── supermaven.lua  -- AI 代码建议插件
│       ├── tagbar.lua      -- 代码标签插件
│       └── toggleterm.lua  -- 终端插件
└── .git/                   -- Git 版本控制

4 directories, 21 files
```
