require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<ESC><ESC>", ":noh<Return>")

map("i", "jk", "<ESC>")

map("t", "<ESC>", "<C-\\><C-N>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
