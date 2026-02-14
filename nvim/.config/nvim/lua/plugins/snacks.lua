return {
  "folke/snacks.nvim",
  init = function()
    vim.g.snacks_scratch_enabled = false
  end,
  opts = {
    picker = {
      sources = {
        files = {
          hidden = true,
          ignored = true,
        },
      },
    },
    statuscolumn = {
      folds = {
        open = true,
        git_hl = true,
      },
    },
    gitbrowse = { enabled = true },
    scratch = { enabled = false },
  },
}
