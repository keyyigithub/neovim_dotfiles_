require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local opt = vim.opt
local o = vim.o
local g = vim.g
local api = vim.api

--options

o.relativenumber = true
api.nvim_create_autocmd('FileType', {
  pattern = '*.lua',
  callback = function()
    require'lspconfig'.lua_ls.setup{}
  end
})

