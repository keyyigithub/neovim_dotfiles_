require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<ESC><ESC>", ":noh<Return>", { desc = "Stop the highlight" })

map("i", "jk", "<ESC>", { desc = "Exits the insert mode" })

map("t", "<ESC>", "<C-\\><C-N>", { desc = "Exit the terminal mode" })

map("n", "<localleader>lt", function()
  return require("vimtex.fzf-lua").run()
end, { desc = "Table of contents for latex" })

-- keymaps for jieba.nvim

vim.keymap.set("n", "ce", ":lua require'jieba_nvim'.change_w()<CR>", { noremap = false, silent = true })
vim.keymap.set("n", "de", ":lua require'jieba_nvim'.delete_w()<CR>", { noremap = false, silent = true })
vim.keymap.set("n", "<leader>w", ":lua require'jieba_nvim'.select_w()<CR>", { noremap = false, silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
