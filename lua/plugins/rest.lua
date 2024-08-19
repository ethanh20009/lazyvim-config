return {
  {
    "mistweaverco/kulala.nvim",
    keys = {
      {
        "<leader>Rr",
        function()
          require("kulala").scratchpad()
        end,
        desc = "Scratchpad",
      },
    },
  },
}
