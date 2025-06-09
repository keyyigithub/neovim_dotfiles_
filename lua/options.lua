require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

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
g.loaded_python3_provider = ''
g.python3_host_prog = '/usr/bin/python'

--cmds and autocmds

-- api.nvim_create_user_command("Terminal", function()
--   local tree = require("nvim-tree.api").tree
--   if tree.is_visible() then
--     require("nvchad.term").toggle {
--       pos = "sp",
--       size = 0.3,
--       cmd = "cd " .. tree.get_nodes().absolute_path,
--     }
--   else
--     require("nvchad.term").toggle {
--       pos = "sp",
--       size = 0.3,
--     }
--   end
-- end, {})

--loads LSP, DAP, linters and formatters

--autocmds for formatters
-- api.nvim_create_autocmd("BufWritePost", {
--   command = ":FormatWrite",
-- })

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
