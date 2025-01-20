return {
  {
    "saghen/blink.cmp",
    dependencies = {
      {
        "saghen/blink.compat",
      },
    },
    opts = {
      sources = {
        compat = {
          "avante_commands",
          "avante_mentions",
          "avante_files",
        },
      },
    },
  },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      file_selector = {
        --- @alias FileSelectorProvider "native" | "fzf" | "telescope" | string
        provider = "fzf",
        -- Options override for custom providers
        provider_opts = {},
      },
      provider = "copilot",
      -- copilot = {
      --   endpoint = "https://api.githubcopilot.com/",
      --   model = "claude-3.5-sonnet",
      --   proxy = nil, -- [protocol://]host[:port] Use this proxy
      --   allow_insecure = false, -- Do not allow insecure server connections
      --   timeout = 30000, -- Timeout in milliseconds
      --   temperature = 0.1, -- kinda creative
      --   max_tokens = 8192,
      -- },
      -- auto_suggestions_provider = "copilot",
      behaviour = {
        auto_focus_sidebar = false,
        auto_suggestions = false,
        auto_suggestions_respect_ignore = true,
        auto_apply_diff_after_generation = false,
      },
      hints = { enabled = false },
      -- add any opts here
    },
    keys = {
      {
        "<leader>ac",
        "<CMD>AvanteChat<CR>",
        desc = "avante: chat",
      },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "echasnovski/mini.icons", -- or nvim-tree/nvim-web-devicons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
  { "AndreM222/copilot-lualine" },
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = false,
      },
      filetypes = {
        yaml = false,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
        sh = function()
          if string.match(vim.fs.basename(vim.api.nvim_buf_get_name(0)), "^%.env.*") then
            -- disable for .env files
            return false
          end
          return true
        end,
      },
    },
  },
}
