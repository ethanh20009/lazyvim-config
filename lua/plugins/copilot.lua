return {
  -- Inline Copilot suggestions, manually triggered/cycled with <M-]>, accepted with <M-l>
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        auto_trigger = false,
        keymap = {
          accept = "<M-l>",
          next = "<M-]>",
          prev = "<M-[>",
        },
      },
    },
  },
}
