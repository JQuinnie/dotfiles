return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" }, -- Tells the server to ignore 'vim' as an undefined global
              },
            },
          },
        },
      },
    },
  },
}
