-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.winborder = "single"      -- 设置浮动窗口的边框
vim.opt.clipboard = "unnamedplus" -- 使用系统剪贴板
vim.opt.path:append("**")         -- 搜索子目录
vim.opt.encoding = "utf-8"        -- 编码
vim.opt.smartcase = true          -- 如果有大写则区分

-- 字体
-- vim.o.guifont = "JetBrainsMono Nerd Font:h14"
vim.opt.guifont = "UbuntuSansMono Nerd Font,Sarasa Mono SC:h14"
vim.g.lazyvim_prettier_needs_config = false
