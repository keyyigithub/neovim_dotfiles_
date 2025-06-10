require "nvchad.options"

--local opt = vim.opt
local o = vim.o
local g = vim.g
local api = vim.api

--new filetypes

vim.filetype.add {
  extension = {
    h = "c",
  },
}

--options

o.relativenumber = true
o.cursorlineopt = "both"

-- enable the python provider
g.loaded_python3_provider = ""
g.python3_host_prog = "/usr/bin/python"

--cmds and autocmds

--loads LSP, DAP, linters and formatters

--c/c++
require("lspconfig").clangd.setup {}

--cmake
require("lspconfig").cmake.setup {}

--java
api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    local config = {
      cmd = { "/usr/share/java/jdtls/bin/jdtls" },
      root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
    }
    require("jdtls").start_or_attach(config)
  end,
})

--perl
require("lspconfig").perlnavigator.setup {}

--shell
require("lspconfig").bashls.setup {}

--python
require("lspconfig").pyright.setup {}
