return {
  {
    "xiyaowong/transparent.nvim",
    lazy = false, -- Load the plugin immediately
    config = function()
      require("transparent").setup({
        enable = true, -- Enable transparency
        extra_groups = { -- Add extra groups for transparency
          "NormalFloat", -- Floating windows
          "NvimTreeNormal", -- NvimTree
          "TelescopeNormal", -- Telescope
          "LazyNormal", -- Lazy.nvim window
          "StatusLine", -- Statusline
          "StatusLineNC", -- Non-active statusline
          "TabLine", -- Tabline
          "TabLineFill", -- Tabline fill
          "TabLineSel", -- Selected tab
          "WinBar", -- Window bar
          "WinBarNC", -- Non-active window bar
        },
        exclude = {}, -- Exclude groups if needed
      })
    end,
  },
}
