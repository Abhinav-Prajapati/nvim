-- lazy.nvim installation for Comment.nvim
return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup()
  end,
}
