return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
extensions = {
        file_browser = {
          hijack_netrw = true,
          hidden = true,
        },
      },
    },
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    event = "VeryLazy",
    keys = {
      { "<leader>fb", ":Telescope file_browser<CR>", desc = "File Browser (Root)" },
      {
        "<leader>fB",
        ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
        desc = "File Browser (Current Path)",
      },
    },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
  },
}
