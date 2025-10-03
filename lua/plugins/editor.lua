return {

  "nvim-lua/plenary.nvim",
  -- file managing , picker etc
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = function()
      return require "configs.nvimtree"
    end,
  },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    cmd = "ToggleTerm",
    keys = {
      {
        "<leader>th",
        "<cmd>ToggleTerm direction=horizontal<CR>",
        desc = "Toggle [t]erminal [h]orizontal",
      },
      {
        "<leader>tv",
        "<cmd>ToggleTerm direction=vertical<CR>",
        desc = "Toggle [t]erminal [v]ertical",
      },
      {
        "<leader>tf",
        "<cmd>ToggleTerm direction=float<CR>",
        desc = "ToggleTerm [t]erminal [f]loat",
      },
    },
    opts = {
      close_on_exit = true,
      size = function(term)
        if term.direction == "horizontal" then
          return 18
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.3
        end
      end,
      float_opts = {
        border = "single",
        title_pos = "center",
      },
    },
  },

  {
    "folke/which-key.nvim",
    keys = { "<leader>", "<c-w>", '"', "'", "`", "c", "v", "g" },
    cmd = "WhichKey",
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    cmd = "Telescope",
    opts = function()
      return require "configs.telescope"
    end,
  },

  -- formatting!
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  { "mrjones2014/smart-splits.nvim" },
}
