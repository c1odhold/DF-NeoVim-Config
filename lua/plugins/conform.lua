return {
  "stevearc/conform.nvim",
  init = function()
    vim.g.disable_autoformat = false
    vim.keymap.set("n", "<leader>tf", function()
      if vim.g.disable_autoformat then
        vim.g.disable_autoformat = false
        vim.notify("Autoformat is enabled", vim.log.levels.INFO)
      else
        vim.g.disable_autoformat = true
        vim.notify("Autoformat is disabled", vim.log.levels.WARN)
      end
    end, { desc = "Toggle autoformatting" })
  end,
  event = { "BufWritePre", "InsertEnter" },
  cmd = { "ConformInfo", "FormatEnable", "FormatDisable" },
  keys = {
    {
      "<leader>lf",
      function()
        require("conform").format({ async = true, lsp_fallback = true })
      end,
      desc = "Format buffer",
    },
  },
  optional = true,
  opts = {
    formatters = {
      ["markdown-toc"] = {
        condition = function(_, ctx)
          for _, line in ipairs(vim.api.nvim_buf_get_lines(ctx.buf, 0, -1, false)) do
            if line:find("<!%-%- toc %-%->") then
              return true
            end
          end
        end,
      },
      ["markdownlint-cli2"] = {
        condition = function(_, ctx)
          local diag = vim.tbl_filter(function(d)
            return d.source == "markdownlint"
          end, vim.diagnostic.get(ctx.buf))
          return #diag > 0
        end,
      },
    },
    formatters_by_ft = {
      ["markdown"] = { "prettier", "markdownlint-cli2", "markdown-toc" },
      ["markdown.mdx"] = { "prettier", "markdownlint-cli2", "markdown-toc" },
    },
  },
}
