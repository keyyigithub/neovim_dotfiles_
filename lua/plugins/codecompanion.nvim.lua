return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    -- Basic configurations
    opts = {
      adapters = {
        deepseek = function()
          return require("codecompanion.adapters").extend("deepseek", {
            env = {
              api_key = function()
                return os.getenv "DEEPSEEK_API_KEY"
              end,
            },
            schema = {
              model = {
                default = "deepseek-chat",
              },
              temperature = {
                default = 0,
              },
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = "deepseek",
        },
        inline = {
          adapter = "deepseek",
        },
        cmd = {
          adapter = "deepseek",
        },
      },
    },
  },
  {
    "OXY2DEV/markview.nvim",
    lazy = false,
    opts = {
      preview = {
        filetypes = { "markdown", "codecompanion" },
        ignore_buftypes = {},
      },
      experimental = {
        check_rtp_messsage = false,
      },
    },
  },
  {
    "echasnovski/mini.diff",
    config = function()
      local diff = require "mini.diff"
      diff.setup {
        -- Disabled by default
        source = diff.gen_source.none(),
      }
    end,
  },
}
