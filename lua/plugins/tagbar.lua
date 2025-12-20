return {
  "preservim/tagbar",
  cmd = "TagbarToggle", -- 按需加载
  config = function()
    vim.g.tagbar_width = 35
    vim.g.tagbar_left = 1 -- 左侧显示
    vim.g.tagbar_autofocus = 1
    vim.g.tagbar_sort = 0
    vim.g.tagbar_compact = 1
    vim.g.tagbar_show_linenumbers = 1
    vim.g.tagbar_show_closing_tags = 1
    vim.g.tagbar_verbose = 0 -- 禁用消息提醒
  end,
  vim.keymap.set("n", "<F8>", "<cmd>TagbarToggle<CR>", { desc = "Toggle Tagbar" })
}
