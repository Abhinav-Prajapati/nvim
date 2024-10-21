-- React Native plugins for LazyVim
return {
  {
    "neoclide/coc.nvim", -- autocomplete for React Native
    branch = "release",
    config = function()
      -- vim.cmd("CocInstall coc-tsserver coc-prettier coc-json")
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim", -- for linting and formatting
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("null-ls").setup()
    end,
  },
}
