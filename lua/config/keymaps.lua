-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- 进入普通模式
keymap.set("i", "aa", "<Esc>")
keymap.set("v", "aa", "<Esc>")

-- 进入插入模式
keymap.set("n", "a", "i")

-- 进入可视模式
-- keymap.set("n", "<leader>3", "v")
-- keymap.set("i", "<leader>3", "<Esc>v")

-- 用“主键 + 方向键（右或下）”来分割窗口
keymap.set("n", "<leader><Right>", "<cmd>vsplit<CR>")
keymap.set("n", "<leader><Down>", "<cmd>split<CR>")

-- 用“主键 + 方向键（左或上）来退出分割窗口”
keymap.set("n", "<leader><UP>", "<cmd>q<CR>")
keymap.set("n", "<leader><Left>", "<cmd>q<CR>")

-- 用"方向键"来移动光标到分割窗口
keymap.set("n", "<C-Left>", "<C-w>h")
keymap.set("n", "<C-Down>", "<C-w>j")
keymap.set("n", "<C-Up>", "<C-w>k")
keymap.set("n", "<C-Right>", "<C-w>l")

-- 用"hjkl"来增减分割窗口的尺寸
keymap.set("n", "<C-h>", "<cmd>vertical resize -2<CR>")
keymap.set("n", "<C-l>", "<cmd>vertical resize +2<CR>")
keymap.set("n", "<C-j>", "<cmd>resize +2<CR>")
keymap.set("n", "<C-k>", "<cmd>resize -2<CR>")

-- 在普通模式下，"x"键删除单个字符但不复制到寄存器
keymap.set("n", "x", '"_x')
-- 在普通模式下，"dd""删除当前行但不复制到寄存器
keymap.set("n", "dd", '"_dd')
-- 在可视模式下，"d"删除选中内容但不复制到寄存器
keymap.set("v", "d", '"_d')

-- 快速选中光标所在单词
keymap.set("n", "vv", "viw")

-- 用“tab + 方向键（左或右）”来切换文件
keymap.set("n", "<Tab><Right>", "<cmd>bn<CR>")
keymap.set("n", "<Tab><Left>", "<cmd>bp<CR>")

-- 用“tab + q” 来关闭当前文件
keymap.set("n", "<Tab>q", "<cmd>bd<CR>")

-- 用“shift + 方向键（上或下）”来移动光标往上或往下7行
keymap.set("n", "<S-Down>", "7j")
keymap.set("n", "<S-Up>", "7k")
keymap.set("v", "<S-Down>", "7j")
keymap.set("v", "<S-Up>", "7k")
keymap.set("n", "<S-Left>", "b")
keymap.set("n", "<S-Right>", "w")

-- 用“ctrl + 方向键（上或下）”来移动光标往上或往下3行
keymap.set("i", "<S-Down>", "<Esc>3ja")
keymap.set("i", "<S-Up>", "<Esc>3ka")
-- keymap.set("n", "<C-Down>", "3j")
-- keymap.set("n", "<C-Up>", "3k")
-- keymap.set("v", "<C-Down>", "3j")
-- keymap.set("v", "<C-Up>", "3k")

-- 在插入模式下，用“shift + backspace”来删除至光标前一个单词但不复制到寄存器
keymap.set("i", "<S-BS>", "<C-w>")

-- 在可视模式下，用“ctrl + c”来复制选中内容到系统剪贴板
keymap.set("v", "<C-c>", '"+y')

-- 用“ctrl + p”来粘贴系统剪贴板的内容
-- keymap.set("i", "<C-p>", '<cmd>set paste<CR>"+p')
-- keymap.set("n", "<C-p>", '<cmd>set paste<CR>"+p')

-- 用“shift + tab”来缩进代码
keymap.set("v", "<S-Tab>", "<gv")
keymap.set("v", "<Tab>", ">gv")

-- 在普通模式下，用“,或.”来快速跳转到单词的开头或结尾
keymap.set("n", ",", "b")
keymap.set("n", ".", "e")

-- 在普通模式下，用“enter”来在当前行下新建一行
keymap.set("n", "<CR>", "o<Esc>")

-- 在普通模式下，用“ctrl +或_”来跳转到页首或页尾
keymap.set("n", "<C-=>", "gg")
keymap.set("n", "<C-->", "G")

-- 在普通模式下，用“-=”来全选
keymap.set("n", "-=", "ggVG")

-- 在普通模式下，用"<leader>z"来redo恢复
keymap.set("n", "<leader>z", "<cmd>redo<CR>")
-- 在普通模式下，用“u”来undo撤销
keymap.set("n", "u", "<cmd>undo<CR>")

-- 在普通模式下，用“ctrl + /”在当前文件目录下打开终端
-- keymap.set("n", "<C-/>", "<cmd>terminal<CR>")

-- 用“<leader> + 回车键”来格式化代码
keymap.set("n", "<leader><CR>", "<cmd>lua vim.lsp.buf.format()<CR>")
keymap.set("i", "<leader><CR>", "<cmd>lua vim.lsp.buf.format()<CR>")

-- 在普通模式下，用“ctrl + f”来查找单词并跳转到定义
-- keymap.set("n", "<C-f>", "<cmd>lua vim.lsp.buf.definition()<CR>")

-- 在普通模式和插入模式下，用“ctrl + f"来在当前文件中搜索当前单词
keymap.set("n", "<C-f>", "*")
keymap.set("i", "<C-f>", "*")

-- 在普通模式下，用“cgn”来快速修改当前单词
keymap.set("n", "cgv", "*Ncgn")

-- 在普通模式下，禁用 q 宏
keymap.set("n", "q", "<nop>")
keymap.set("n", "Q", "q")
