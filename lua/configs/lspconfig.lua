-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = vim.lsp

-- EXAMPLE
local servers = { "html", "cssls", "clangd", "cmake", "perlnavigator", "bashls", "pyright", "rime-ls" }
local nvlsp = require "nvchad.configs.lspconfig"

local custom_servers = { "rime-ls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  if lsp ~= "rime-ls" then
    lspconfig.config(lsp, {
      on_attach = nvlsp.on_attach,
      on_init = nvlsp.on_init,
      capabilities = nvlsp.capabilities,
    })
    lspconfig.enable(lsp)
  end
end

-- configuring single server, example: typescript
lspconfig.enable "rime-ls"
