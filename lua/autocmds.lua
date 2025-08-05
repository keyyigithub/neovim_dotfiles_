require "nvchad.autocmds"

--loads LSP, DAP, linters and formatters

--java
vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    local config = {
      cmd = { "/usr/share/java/jdtls/bin/jdtls" },
      root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw" }, { upward = true })[1]),
    }
    require("jdtls").start_or_attach(config)
  end,
})

-- Set conceallevel to 1 when open markdown files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.conceallevel = 1
  end,
})
