return {
  "folke/twilight.nvim",
  config = function()
    require("twilight").setup({
      dimming = {
        alpha = 0.25, -- amount of dimming (0 is fully transparent, 1 is fully opaque)
        color = { "Normal", "#ffffff" }, -- color to use for dimming (if treesitter isn't used)
        inactive = true, -- dim only inactive windows
      },
      context = 10, -- number of lines to keep visible around the cursor
      treesitter = true, -- use treesitter for the context highlighting
    })
  end,
}
