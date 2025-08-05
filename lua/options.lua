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
o.mouse = ""

-- enable the python provider
g.loaded_python3_provider = ""
g.python3_host_prog = "/usr/bin/python"
