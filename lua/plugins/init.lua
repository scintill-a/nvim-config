return {
 {
    "ficd0/ashen.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Optional: Configure Ashen here if you want specific variants
      -- require("ashen").setup({ ... })
      
      vim.cmd.colorscheme("ashen")
    end,
  },


  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
 
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Lua (for configuring Neovim)
        "lua-language-server", "stylua",
        
        -- Web Dev (JS/TS, React Native/Expo, HTML, CSS)
        "html-lsp", "css-lsp", "prettier", "typescript-language-server",
        
        -- Python
        "pyright", "black",
        
        -- C/C++ & Embedded
        "clangd", "clang-format",
      },
    },
  },

}
