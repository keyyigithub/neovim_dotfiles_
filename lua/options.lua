require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

--local opt = vim.opt
local o = vim.o
--local g = vim.g
local api = vim.api

--new filetypes

vim.filetype.add {
  extension = {
    h = "h",
  },
}

--options

o.relativenumber = true
o.cursorlineopt = "both"

--cmds and autocmds

api.nvim_create_user_command("Terminal", function()
  require("nvchad.term").new {
    pos = "sp",
    size = 0.3,
  }
end, {})

--loads LSP, DAP, linters and formatters

--lua (LSP was loaded automatically)
api.nvim_create_autocmd("BufWritePost", {
  command = ":FormatWrite",
})
--c/c++
require("lspconfig").clangd.setup {}

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

--(la)tex
require("lspconfig").texlab.setup {}
