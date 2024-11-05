return {
  -- other plugins
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
    event = "BufReadPre", -- optionally, to load it only when you open a file
  },
}
