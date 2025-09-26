return {
  -- Manages the jdtls -- LS for java
  {
    "mfussenegger/nvim-jdtls",
  },

  -- lsp stuff
  {
    "mason-org/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonUpdate" },
    opts = function()
      return require "configs.mason"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    event = "User FilePost",
    config = function()
      require "configs.lspconfig1"
    end,
  },
}
