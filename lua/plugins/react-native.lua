-- React Native plugins for LazyVim
return {
  {
    "jose-elias-alvarez/null-ls.nvim", -- for linting and formatting
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("null-ls").setup()
    end,
  },
}
