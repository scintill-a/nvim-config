-- Import NvChad's base configurations (mappings and basic capabilities)
local nvlsp = require "nvchad.configs.lspconfig"

-- Define your servers for C/C++, Python, and Web Dev
local servers = { "html", "cssls", "ts_ls", "pyright", "clangd" }

-- 1. Set the global defaults for ALL servers using the new standard
-- This ensures that NvChad's nice features (like hover docs) work everywhere
vim.lsp.config("*", {
  root_markers = { ".git" },
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
})

-- 2. Enable the servers
vim.lsp.enable(servers)

-- 3. Specific Configuration (Optional)
-- If you need to pass specific settings to a server (like clangd for embedded)
-- you can still do it via vim.lsp.config
vim.lsp.config("clangd", {
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--compile-commands-dir=build", -- Useful for PlatformIO/CMake
  },
})
