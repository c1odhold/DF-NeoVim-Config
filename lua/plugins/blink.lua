return {
  "saghen/blink.cmp",
  optional = true,
  -- specs = { "Kaiser-Yang/blink-cmp-avante" },
  opts = {
    sources = {
      -- adding any nvim-cmp sources here will enable them
      -- with blink.compat
      compat = {},
      default = { "lsp", "path", "buffer" },
    },
    completion = { list = { selection = { preselect = false, auto_insert = false } } },
  },
}
