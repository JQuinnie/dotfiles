return {
  {
    "rgroli/other.nvim",
    enabled = false, -- Temporarily disable to test
    keys = {
      {
        "<leader>gt",
        "<cmd>Other<CR>",
        desc = "Go to test/source file",
      },
      {
        "<leader>gT",
        "<cmd>OtherSplit<CR>",
        desc = "Go to test/source (split)",
      },
    },
    opts = {
      mappings = {
        -- Builtin language mappings
        "golang",
        "python",
        "javascript",
        "typescript",
        "react",
        "lua",
        "rust",
        "c",
      },
      rememberBuffers = true,
      showMissingFiles = true,
      hooks = {
        filePickerBeforeShow = function(files)
          return files
        end,
        onOpenFile = function(filename, exists)
          return true
        end,
        onFindOtherFiles = function(matches)
          return matches
        end,
      },
      style = {
        border = "rounded",
        width = 0.7,
        minHeight = 2,
      },
    },
  },
}
