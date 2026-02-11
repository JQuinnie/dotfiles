return {
  "lewis6991/gitsigns.nvim",
  opts = {
    current_line_blame = true,
    current_line_blame_opts = {
      virt_text = false, -- Don't show inline, we'll show in lualine
      delay = 200,
    },
    current_line_blame_formatter = "<author>, <author_time:%R>",
  },
}
