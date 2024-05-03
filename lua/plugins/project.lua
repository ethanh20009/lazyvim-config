return {
  {
    "telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-project.nvim",
        event = "VeryLazy",
        config = function(_, opts)
          require("telescope").load_extension("project")
        end,
        keys = {
          {
            "<leader>fp",
            function()
              require("telescope").extensions.project.project({})
            end,
            desc = "Projects",
          },
        },
      },
    },
  },
  {
    "nvimdev/dashboard-nvim",
    optional = true,
    opts = function(_, opts)
      local projects = {
        action = function()
          require("telescope").extensions.project.project({})
        end,
        desc = " Projects",
        icon = " ",
        key = "p",
      }

      projects.desc = projects.desc .. string.rep(" ", 43 - #projects.desc)
      projects.key_format = "  %s"

      table.insert(opts.config.center, 3, projects)
    end,
  },
}
