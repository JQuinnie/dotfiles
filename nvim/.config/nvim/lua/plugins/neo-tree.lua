return {
  "nvim-neo-tree/neo-tree.nvim",
  -- This forces the plugin to load with these settings immediately
  opts = {
    window = {
      position = "right",
      mappings = {
        ["gy"] = {
          function(state)
            local node = state.tree:get_node()
            local path = node:get_id()
            vim.fn.setreg("+", path)
            vim.fn.setreg('"', path)
            vim.notify("Copied: " .. path)
          end,
          desc = "Copy absolute path",
        },
        ["gY"] = {
          function(state)
            local node = state.tree:get_node()
            local path = node:get_id()
            local relative_path = vim.fn.fnamemodify(path, ":.")
            vim.fn.setreg("+", relative_path)
            vim.fn.setreg('"', relative_path)
            vim.notify("Copied: " .. relative_path)
          end,
          desc = "Copy relative path",
        },
      },
    },
    filesystem = {
      filtered_items = {
        visible = true, -- shows hidden files as dimmed
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_hidden = false,
        hide_by_name = {},
        hide_by_pattern = {},
        never_show = {},
        never_show_by_pattern = {},
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
      use_libuv_file_watcher = true,
    },
  },
  -- We redefine the keys here to ensure they point to the right side
  keys = {
    {
      "<leader>e",
      function()
        require("neo-tree.command").execute({ toggle = true, position = "right" })
      end,
      desc = "Explorer NeoTree (Right)",
    },
    {
      "<leader>E",
      function()
        require("neo-tree.command").execute({ toggle = true, position = "right", dir = vim.uv.cwd() })
      end,
      desc = "Explorer NeoTree (cwd, Right)",
    },
    {
      "<leader>fe",
      function()
        require("neo-tree.command").execute({ toggle = true, position = "right" })
      end,
      desc = "Explorer NeoTree (Right)",
    },
    {
      "<leader>fE",
      function()
        require("neo-tree.command").execute({ toggle = true, position = "right", dir = vim.uv.cwd() })
      end,
      desc = "Explorer NeoTree (cwd, Right)",
    },
  },
}
