return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        hidden = true,
        ignored = true,
        exclude = { "**/.git/*", "**/.DS_Store" },
      },
      picker = {
        hidden = true,
        ignored = true,
        exclude = { "**/.git/*", "**/.DS_Store" },
        sources = {
          files = { hidden = true, ignored = true },
          grep = { hidden = true, ignored = true },
        },
      },
    },
  },
}
