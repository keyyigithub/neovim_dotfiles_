-- load defaults i.e lua_lsp
require("configs.lspconfig").defaults()

local lspconfig = vim.lsp

-- EXAMPLE
local servers = { "html", "cssls", "clangd", "cmake", "perlnavigator", "bashls", "pyright", "lemminx" }
local nvlsp = require "configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig.config(lsp, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
  lspconfig.enable(lsp)
end

-- configuring single server, example: typescript
