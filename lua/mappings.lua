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

vim.keymap.set(
  { "x", "n" },
  "B",
  '<cmd>lua require("jieba_nvim").wordmotion_B()<CR>',
  { noremap = false, silent = true }
)
vim.keymap.set(
  { "x", "n" },
  "b",
  '<cmd>lua require("jieba_nvim").wordmotion_b()<CR>',
  { noremap = false, silent = true }
)
vim.keymap.set(
  { "x", "n" },
  "w",
  '<cmd>lua require("jieba_nvim").wordmotion_w()<CR>',
  { noremap = false, silent = true }
)
vim.keymap.set(
  { "x", "n" },
  "W",
  '<cmd>lua require("jieba_nvim").wordmotion_W()<CR>',
  { noremap = false, silent = true }
)
vim.keymap.set(
  { "x", "n" },
  "E",
  '<cmd>lua require("jieba_nvim").wordmotion_E()<CR>',
  { noremap = false, silent = true }
)
vim.keymap.set(
  { "x", "n" },
  "e",
  '<cmd>lua require("jieba_nvim").wordmotion_e()<CR>',
  { noremap = false, silent = true }
)
vim.keymap.set(
  { "x", "n" },
  "ge",
  '<cmd>lua require("jieba_nvim").wordmotion_ge()<CR>',
  { noremap = false, silent = true }
)
vim.keymap.set(
  { "x", "n" },
  "gE",
  '<cmd>lua require("jieba_nvim").wordmotion_gE()<CR>',
  { noremap = false, silent = true }
)
vim.keymap.set("n", "ce", ":lua require'jieba_nvim'.change_w()<CR>", { noremap = false, silent = true })
vim.keymap.set("n", "de", ":lua require'jieba_nvim'.delete_w()<CR>", { noremap = false, silent = true })
vim.keymap.set("n", "<leader>w", ":lua require'jieba_nvim'.select_w()<CR>", { noremap = false, silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
