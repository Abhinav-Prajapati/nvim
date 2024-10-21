return {
  "kylechui/nvim-surround",
  version = "*", -- Use for stability; omit for the latest version
  config = function()
    require("nvim-surround").setup({})
    -- Key mapping to wrap a word in double quotes
    vim.keymap.set("n", "<leader>'", 'viw<esc>a"<esc>bi"', { noremap = true, silent = true })
  end,
}
