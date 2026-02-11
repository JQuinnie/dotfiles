return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- Add git blame to the end of the left section (lualine_c)
    table.insert(opts.sections.lualine_c, {
      function()
        local gitsigns = vim.b.gitsigns_blame_line
        if gitsigns then
          return gitsigns
        end
        return ""
      end,
      icon = "",
      color = { fg = "#707070" },
    })

    -- Add encoding to the right section
    table.insert(opts.sections.lualine_x, { "encoding" })

    -- Add LSP server name to the right section
    table.insert(opts.sections.lualine_x, {
      function()
        local clients = vim.lsp.get_clients({ bufnr = 0 })
        if #clients > 0 then
          return "󰒋 " .. clients[1].name
        end
        return ""
      end,
    })
  end,
}
