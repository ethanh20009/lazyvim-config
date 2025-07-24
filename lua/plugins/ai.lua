return {
  -- {
  --   "CopilotC-Nvim/CopilotChat.nvim",
  --   dependencies = {
  --     "nvim-treesitter/nvim-treesitter",
  --   },
  -- },
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
    version = false, -- Never set this value to "*"! Never!
    opts = {
      -- add any opts here
      -- for example
      provider = "gemini",
      providers = {
        gemini = {
          model = "gemini-2.5-flash-preview-05-20",
        },
      },
      -- openai = {
      --   -- endpoint = "https://api.openai.com/v1",
      --   -- model = "gpt-4o", -- your desired model (or use gpt-4o, etc.)
      --   timeout = 30000, -- Timeout in milliseconds, increase this for reasoning models
      --   temperature = 0,
      --   max_completion_tokens = 8192, -- Increase this to include reasoning tokens (for reasoning models)
      --   --reasoning_effort = "medium", -- low|medium|high, only used for reasoning models
      -- },
      behaviour = {
        --- ... existing behaviours
        enable_cursor_planning_mode = true, -- enable cursor planning mode!
      },
      hints = {
        enabled = false,
      },
      selector = {
        --- @alias avante.SelectorProvider "native" | "fzf_lua" | "mini_pick" | "snacks" | "telescope" | fun(selector: avante.ui.Selector): nil
        provider = "snacks",
        -- Options override for custom providers
        -- provider_opts = {},
      },
      keys = function(_, keys)
        ---@type avante.Config
        local opts =
          require("lazy.core.plugin").values(require("lazy.core.config").spec.plugins["avante.nvim"], "opts", false)

        local mappings = {
          {
            opts.mappings.ask,
            function()
              -- Call vim AvanteToggle
              vim.cmd("AvanteToggle")
            end,
            desc = "avante: ask",
            mode = { "n", "v" },
          },
        }
        mappings = vim.tbl_filter(function(m)
          return m[1] and #m[1] > 0
        end, mappings)
        return vim.list_extend(mappings, keys)
      end,
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
      -- "echasnovski/mini.pick", -- for file_selector provider mini.pick
      -- "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      -- "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
      "ibhagwan/fzf-lua", -- for file_selector provider fzf
      "echasnovski/mini.icons",
      -- "zbirenbaum/copilot.lua", -- for providers='copilot'
      -- {
      --   -- support for image pasting
      --   "HakonHarnes/img-clip.nvim",
      --   event = "VeryLazy",
      --   opts = {
      --     -- recommended settings
      --     default = {
      --       embed_image_as_base64 = false,
      --       prompt_for_file_name = false,
      --       drag_and_drop = {
      --         insert_mode = true,
      --       },
      --       -- required for Windows users
      --       use_absolute_path = true,
      --     },
      --   },
      -- },
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
  {
    "ethanh20009/minuet-ai.nvim",
    config = function()
      require("minuet").setup({
        provider = "gemini",
        gemini = {
          model = "gemini-2.0-flash",
          stream = true,
          api_key = os.getenv("GEMINI_API_KEY"),
          end_point = "https://generativelanguage.googleapis.com/v1beta/models",
          optional = {
            generationConfig = {
              maxOutputTokens = 256,
              thinkingConfig = {
                thinkingBudget = 0,
              },
            },
            safetySettings = {
              {
                category = "HARM_CATEGORY_DANGEROUS_CONTENT",
                threshold = "BLOCK_ONLY_HIGH",
              },
            },
          },
        },
        virtualtext = {
          auto_trigger_ft = {},
          disabled = function()
            -- Reject .env files
            local file_name = vim.fn.expand("%:t")
            local disabled_names = {
              [".env"] = true,
              [".apikeys.fish"] = true,
              ["package-lock"] = true,
            }
            return disabled_names[file_name]
          end,
          keymap = {
            -- accept whole completion
            accept = "<A-l>",
            -- accept one line
            accept_line = "<CA-l>",
            -- accept n lines (prompts for number)
            -- e.g. "A-z 2 CR" will accept 2 lines
            -- accept_n_lines = "<A-z>",
            -- Cycle to prev completion item, or manually invoke completion
            prev = "<A-[>",
            -- Cycle to next completion item, or manually invoke completion
            next = "<A-]>",
            dismiss = "<A-e>",
          },
        },
      })
    end,
  },
}
