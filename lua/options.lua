require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

--local opt = vim.opt
local o = vim.o
--local g = vim.g
local api = vim.api

--new filetypes

vim.filetype.add({
  extension = {
    h = 'h',
  },
})

--options

o.relativenumber = true

--autocmds

--loads the language servers
-- **lua_ls is loaded automatically
local lsp = api.nvim_create_augroup("LSPLoad", {
  clear = false,
})

--java
api.nvim_create_autocmd("FileType", {
  group = lsp,
  pattern = "java",
  callback = function ()
    local config = {
      cmd = {'/path/to/jdt-language-server/bin/jdtls'},
      root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
    }
    require('jdtls').start_or_attach(config);
  end
})

--tex
api.nvim_create_autocmd("FileType", {
  group = lsp,
  pattern = { "tex", "plaintex", "bib" },
  callback = function ()
    require('lspconfig').texlab.setup{};
  end
})

--c/c++
api.nvim_create_autocmd('FileType', {
  group = lsp,
  pattern = { "h", "c", "cpp" },
  callback = function ()
    require('lspconfig').ccls.setup{};
  end
})
