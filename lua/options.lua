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

--c/c++
require('lspconfig').ccls.setup{}
--java
require('lspconfig').jdtls.setup{}
--(la)tex
require('lspconfig').texlab.setup{}
