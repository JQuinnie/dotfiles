return {
  "folke/snacks.nvim",
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
    scratch = { enabled = true },
  },
}
