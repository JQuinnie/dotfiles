return {
  {
    "sudormrfbin/cheatsheet.nvim",
    enabled = false, -- Temporarily disable to test
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim",
    },
    event = "VeryLazy",
    keys = {
      {
        "<leader>ch",
        "<cmd>Cheatsheet<CR>",
        desc = "Open cheatsheet",
      },
    },
    opts = {
      bundled_cheatsheets = true,
      bundled_plugin_cheatsheets = true,
      include_only_installed_plugins = true,
    },
  },
}
