return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000,
    lazy = false,
    plugins = {
      lsp_semantic_tokens = false,
    },
    opts = {
      styles = {
        comments = "italic",
        keywords = "bold,italic",
        functions = "italic",
        conditionals = "italic",
      },
      colors = {
        bg = "#16191d",
        black = "#16191d",
        float_bg = "#16191d",
      },
      highlights = {
        ["@tag.tsx"] = { fg = "${yellow}" },
        ["@tag.builtin.tsx"] = { fg = "${red}" },
        ["@comment"] = { fg = "#229977", italic = true },
        LineNr = { fg = "${gray}" },
        Directory = { fg = "${fg}", bold = true },
        NonText = { bg = "none", fg = "#545C7E" },
        SnacksPickerBoxTitle = { bg = "${bg}", fg = "${orange}" },
        Title = { fg = "${blue}" },
        SnacksPickerGitStatusUntracked = { fg = "${cyan}" },
        SnacksPickerGitStatusStaged = { fg = "${green}" },
      },
    },
    config = function(_, opts)
      require("onedarkpro").setup(opts)
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
