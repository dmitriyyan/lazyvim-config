local config = {
  cspell_config_dirs = { "~/.config/nvim/cspell" },
}
return {
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    dependencies = { "davidmh/cspell.nvim" },
    opts = function(_, opts)
      local cspell = require("cspell")
      opts.sources = opts.sources or {}
      table.insert(
        opts.sources,
        cspell.diagnostics.with({
          diagnostics_postprocess = function(diagnostic)
            diagnostic.severity = vim.diagnostic.severity.HINT
          end,
          priority = 100,
          config = config,
        })
      )
      table.insert(
        opts.sources,
        cspell.code_actions.with({
          config = config,
        })
      )
    end,
  },
}
