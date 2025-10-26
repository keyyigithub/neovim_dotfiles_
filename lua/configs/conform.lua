local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    cpp = { "clang-format" },
    c = { "clang-format" },
    cuda = { "clang-format" },
    tex = { "latexindent" },
    cmake = { "cmake_format" },
    python = { "black" },
    bash = { "beautysh" },
    sh = { "beautysh" },
    zsh = { "beautysh" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
