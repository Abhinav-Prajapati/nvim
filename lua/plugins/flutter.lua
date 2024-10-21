-- Keybinding to toggle the Flutter dev log manually
vim.api.nvim_set_keymap("n", "<leader>fd", ":FlutterDevTools<CR>", { noremap = true, silent = true })
-- Keybinding to list Flutter commands via Telescope
vim.api.nvim_set_keymap("n", "<leader>fl", ":Telescope flutter commands<CR>", { noremap = true, silent = true })

return {
  -- Flutter and Dart integration
  {
    "akinsho/flutter-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "stevearc/dressing.nvim" },
    config = function()
      require("flutter-tools").setup({
        decorations = {
          statusline = {
            app_version = true, -- Enable showing the app version from pubspec.yaml
            device = true, -- Enable showing the running device in the statusline
          },
        },
        dev_log = {
          enabled = true, -- Keep the dev log enabled
          open_cmd = nil, -- Do not auto-open the Flutter development log
        },
        lsp = {
          color = {
            enabled = true, -- Enables color highlighting for Dart color variables
            background = true, -- Enables background color highlighting
            background_color = { r = 19, g = 17, b = 24 }, -- Set custom background color (optional)
            foreground = false, -- Do not highlight foreground color (optional)
            virtual_text = true, -- Show the color as virtual text
            virtual_text_str = "■", -- Character to display next to the color variable
          },
          on_attach = function(_, bufnr)
            local lsp = vim.lsp
            local function buf_set_keymap(...)
              vim.api.nvim_buf_set_keymap(bufnr, ...)
            end
            local opts = { noremap = true, silent = true }
            buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
            buf_set_keymap("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
          end,
          capabilities = require("cmp_nvim_lsp").default_capabilities(),
          settings = {
            dart = {
              completeFunctionCalls = true,
            },
          },
        },
        widget_guides = {
          enabled = false, -- Enable widget guides to visualize the widget tree
        },
      })
    end,
  },

  -- Telescope fuzzy finder and Flutter extension
  {
    "nvim-telescope/telescope.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function()
      -- Load the Flutter extension for Telescope
      require("telescope").load_extension("flutter")
    end,
  },

  -- Completion for LSP
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
  },

  -- Dart syntax highlighting
  {
    "dart-lang/dart-vim-plugin",
  },
}
