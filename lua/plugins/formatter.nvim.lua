return {
  {
    "mhartington/formatter.nvim",
    config = function()
      require("formatter").setup {
        logging = true,
        log_level = vim.log.levels.WARN,
        filetype = {
          lua = {
            require("formatter.filetypes.lua").stylua,
          },
          c = {
            require("formatter.filetypes.c").clangformat,
          },
          cpp = {
            require("formatter.filetypes.cpp").clangformat,
          },
          cuda = {
            require("formatter.filetypes.cpp").clangformat,
          },
          tex = {
            require("formatter.filetypes.latex").latexindent,
          },
          ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace,
          },
        },
      }
    end,
    lazy = false,
  },
}
