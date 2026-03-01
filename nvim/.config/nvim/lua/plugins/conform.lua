return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters = opts.formatters or {}
      opts.formatters_by_ft = opts.formatters_by_ft or {}

      -- Mason's rubocop fails when trying to use server mode; disable it
      opts.formatters.rubocop = {
        prepend_args = { "--no-server" },
      }

      -- Explicitly use ruff binary so conform doesn't fall back to LSP,
      -- which picks pyright (no formatting support) over ruff due to encoding mismatch
      opts.formatters_by_ft.python = { "ruff_format", "ruff_organize_imports" }

      return opts
    end,
  },
}
