return {
  "echasnovski/mini.trailspace",
  event = "LazyFile", -- A LazyVim-specific event that loads on real files
  opts = {},
  config = function(_, opts)
    require("mini.trailspace").setup(opts)
    -- This part trims spaces right before you save the file
    vim.api.nvim_create_autocmd("BufWritePre", {
      callback = function()
        require("mini.trailspace").trim()
      end,
    })
  end,
}
