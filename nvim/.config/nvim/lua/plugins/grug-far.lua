return {
  "MagicDuck/grug-far.nvim",
  opts = {},
  keys = {
    {
      "<leader>sr",
      function()
        require("grug-far").open()
      end,
      desc = "Search and Replace (grug-far)",
    },
  },
}
