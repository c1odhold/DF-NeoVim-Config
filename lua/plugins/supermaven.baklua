return {
  "supermaven-inc/supermaven-nvim",
  event = "InsertEnter",
  cmd = { "SupermavenToggle" },
  keys = {
    { "<leader>tt", "<cmd>SupermavenToggle<CR>", desc = "Toggle Supermaven" },
  },
  config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<Tab>",
        accept_word = "<C-j>",
      },
      color = {
        suggestion_color = "#d16dff",
        cterm = 213,
      },
      log_level = "off",                 -- set to "off" to disable logging completely
      disable_inline_completion = false, -- disables inline completion for use with cmp
      disable_keymaps = false,           -- disables built in keymaps for more manual control
      condition = function()
        return false
      end,
    })
  end,
}
