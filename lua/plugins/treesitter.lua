return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      vim.env.CC = "C:/msys64/ucrt64/bin/gcc"
      local install = require("nvim-treesitter.install")
      install.compilers = { "C:/msys64/ucrt64/bin/gcc" }
      install.prefer_git = false

      return {
        compilers = { "C:/msys64/ucrt64/bin/gcc" },
        ensure_installed = {
          "c", "cpp", "cmake",
          "python",
          "javascript", "typescript", "tsx",
          "html", "css", "json", "yaml",
          "lua", "bash", "markdown",
        },
        highlight = { enable = true },
        indent = { enable = true },
      }
    end,
  },
}
