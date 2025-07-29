return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        ignored = true,
        exclude = { "**/.git/*", "**/.DS_Store" },
        sources = {
          files = { hidden = true, ignored = true, exclude = { "node_modules" } },
          grep = { hidden = true, ignored = true, exclude = { "node_modules" } },
        },
      },
    },
  },
}
