return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        progress = { enabled = true },
        hover = { enabled = true },
      },
      messages = {
        enabled = false,
      },
    },
  },
}
